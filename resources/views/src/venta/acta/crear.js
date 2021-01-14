
import React, { Component } from 'react';
import {withRouter, Link, Redirect} from 'react-router-dom';
import axios from 'axios';

export default class CrearActa extends Component {

    constructor(props) {
        super(props);
        this.state = {
            redirect: false,

            descripcion: '',
            idpersona: '',
            idrecinto: '',

            arraypersona: [],
            arrayrecinto: [],
            arraymesa: [],
            arraypartido: [],

            idmesa: '',
            arrayresultado: [],

        }
    }
    componentDidMount() {
        axios.get('/inicio/ciudadano/get_ciudadano').then(
            response => {
                if (response.data.response == 1) {
                    this.setState({
                        arraypersona: response.data.data,
                    });
                }
            }
        ).catch(
            error => console.log(error)
        );
        axios.get('/inicio/recinto/get_recinto').then(
            response => {
                if (response.data.response == 1) {
                    this.setState({
                        arrayrecinto: response.data.data,
                    });
                }
            }
        ).catch(
            error => console.log(error)
        );
        axios.get('/inicio/partido/get_partido').then(
            response => {
                if (response.data.response == 1) {
                    response.data.data.map(
                        (data) => {
                            var objeto = {
                                cantidad: 0,
                                estado: 'A'
                            }
                            this.state.arrayresultado.push(objeto);
                        }
                    )

                    this.setState({
                        arraypartido: response.data.data,
                        arrayresultado: this.state.arrayresultado,
                    });
                }
            }
        ).catch(
            error => console.log(error)
        );
    }
    onChangeDescripcion(event) {
        this.setState({
            descripcion: event.target.value,
        });
    }
    onChangeIDPersona(event) {
        this.setState({
            idpersona: event.target.value,
        });
    }
    onChangeIDRecinto(event) {
        this.setState({
            idrecinto: event.target.value,
        });
        if (event.target.value != '') {
            axios.get('/inicio/recinto/get_detalle/' + event.target.value).then(
                response => {
                    if (response.data.response == 1) {
                        this.setState({
                            arraymesa: response.data.detalle,
                        });
                    }
                }
            ).catch(
                error => console.log(error)
            );
        }else {
            this.setState({
                arraymesa: [],
            });
        }
    }
    onSubmit() {
        if (this.state.idpersona != '' && this.state.idmesa != '' && this.state.idrecinto) {
            var objecto = {
                descripcion: this.state.descripcion,
                idpersona: this.state.idpersona,
                idrecinto: this.state.idrecinto,
                idmesa: this.state.idmesa,
                arraypartido: JSON.stringify(this.state.arraypartido),
                arrayresultado: JSON.stringify(this.state.arrayresultado),
            };
            axios.post('/inicio/acta/store', objecto).then(
                response => {
                    if (response.data.response == 1) {
                        this.setState({
                            redirect: true,
                        });
                    }
                }
            ).catch(
                error => console.log(error)
            );
        }
    }
    onSelection(id) {
        this.setState({
            idmesa: id,
        });
    }
    onChangeVoto(pos, event) {
        if (!isNaN(event.target.value)) {
            this.state.arrayresultado[pos].cantidad = event.target.value;
            this.setState({
                arrayresultado: this.state.arrayresultado,
            });
        }
    }
    render() {
        if (this.state.redirect) {
            return (<Redirect to='/inicio/acta/index' />);
        }
        return (
            <div className="main-content">
                <section className="section">
                    <h1 className="section-header">
                        <div>Nueva Acta</div>
                    </h1>
                    <div className="row">
                        <div className="col-12">
                            <div className="card">
                                <div className="card-body">
                                    <div className='row'>
                                        <div className='form-group col-md-6'>
                                            <label>Descripcion</label>
                                            <input type="text" className="form-control" 
                                                value={this.state.descripcion}
                                                onChange={this.onChangeDescripcion.bind(this)}     
                                            />
                                        </div>
                                        <div className='form-group col-md-6'>
                                            <label>Notario</label>
                                            <select className="form-control" 
                                                value={this.state.idpersona}
                                                onChange={this.onChangeIDPersona.bind(this)}
                                            >
                                                <option value=''>Seleccionar</option>
                                                {this.state.arraypersona.map(
                                                    (data, key) => (
                                                        <option value={data.id} key={key}>{data.nombre + ' ' + data.apellido}</option>
                                                    )
                                                )}
                                            </select>
                                        </div>
                                    </div>
                                    <div className='row'>
                                        <div className='col-md-4'></div>
                                        <div className='form-group col-md-4'>
                                            <label>Recinto</label>
                                            <select className="form-control" 
                                                value={this.state.idrecinto}
                                                onChange={this.onChangeIDRecinto.bind(this)}
                                            >
                                                <option value=''>Seleccionar</option>
                                                {this.state.arrayrecinto.map(
                                                    (data, key) => (
                                                        <option value={data.id} key={key}>{data.nombre}</option>
                                                    )
                                                )}
                                            </select>
                                        </div>
                                    </div>
                                    <div className='row'>
                                        <div className="card-body">
                                            <div className="table-responsive">
                                                <table className="table table-striped">
                                                    <thead>
                                                        <tr>
                                                            <th>#</th>
                                                            <th>Nro</th>
                                                            <th>Nombre</th>
                                                            <th>Opcion</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        {this.state.arraymesa.map(
                                                            (data, key) => (
                                                                <tr key={key}>
                                                                    <td>{key + 1}</td>
                                                                    <td>{data.nro}</td>
                                                                    <td>{data.nombre}</td>
                                                                    <td>
                                                                        <a className='btn btn-sm btn-outline-primary fa fa-eye'
                                                                            style={{padding: 4}}
                                                                            onClick={this.onSelection.bind(this, data.id)}
                                                                        >
                                                                        </a>
                                                                    </td>
                                                                </tr>
                                                            )
                                                        )}
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    {(this.state.idmesa == '')?null:
                                        this.state.arraypartido.map(
                                            (data, key) => (
                                                <div className='row' key={key}>
                                                    <div className='form-group col-12' 
                                                        style={{textAlign: 'center'}}
                                                    >
                                                        <label>Partidos Politicos</label>
                                                    </div>
                                                    <div className='col-md-2'></div>
                                                    <div className='form-group col-md-2'>
                                                        <label>Sigla</label>
                                                        <input type="text" className="form-control" 
                                                            value={data.sigla} readOnly     
                                                        />
                                                    </div>
                                                    <div className='form-group col-md-3'>
                                                        <label>Nombre</label>
                                                        <input type="text" className="form-control" 
                                                            value={data.nombre} readOnly     
                                                        />
                                                    </div>
                                                    <div className='form-group col-md-3'>
                                                        <label>Cantidad</label>
                                                        <input type="text" className="form-control" 
                                                            value={this.state.arrayresultado[key].cantidad}    
                                                            onChange={this.onChangeVoto.bind(this, key)}  
                                                        />
                                                    </div>
                                                </div>
                                            )
                                        )
                                    }
                                    <div className='row'>
                                        <div className='col-12 mt-3' style={{textAlign: 'center'}}>
                                            <button className='btn btn-sm btn-primary mr-2'
                                                onClick={this.onSubmit.bind(this)}
                                            >
                                                Aceptar
                                            </button>
                                            <Link className='btn btn-sm btn-danger'
                                               to='/inicio/acta/index'
                                            >
                                                Cancelar
                                            </Link>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        );
    }
}

//export default withRouter(Home);


import React, { Component } from 'react';
import {withRouter, Link, Redirect} from 'react-router-dom';
import axios from 'axios';

export default class CrearRecinto extends Component {

    constructor(props) {
        super(props);
        this.state = {
            redirect: false,

            nombre: '',
            ubicacion: '',
            idciudad: '',
            arrayciudad: [],

            nro: '',
            nombremesa: '',

            arraymesa: [],
        }
    }
    componentDidMount() {
        axios.get('/inicio/ciudad/get_ciudad').then(
            response => {
                if (response.data.response == 1) {
                    this.setState({
                        arrayciudad: response.data.data,
                    });
                }
            }
        ).catch(
            error => console.log(error)
        );
    }
    onChangeNombre(event) {
        this.setState({
            nombre: event.target.value,
        });
    }
    onChangeUbicacion(event) {
        this.setState({
            ubicacion: event.target.value,
        });
    }
    onChangeIDCiudad(event) {
        this.setState({
            idciudad: event.target.value,
        });
    }
    onChangeNro(event) {
        this.setState({
            nro: event.target.value,
        });
    }
    onChangeNombreMesa(event) {
        this.setState({
            nombremesa: event.target.value,
        });
    }
    onAddRow() {
        if (this.state.nro != '' && this.state.nombremesa != '') {
            var objecto = {
                nro: this.state.nro,
                nombre: this.state.nombremesa,
            };
            this.state.arraymesa.push(objecto);
            this.setState({
                arraymesa: this.state.arraymesa,
                nro: '',
                nombremesa: '',
            });
        }
    }
    onDeleteRow(pos) {
        this.state.arraymesa.splice(pos, 1);
        this.setState({
            arraymesa: this.state.arraymesa,
        });
    }
    onSubmit() {
        if (this.state.idciudad != '' && this.state.nombre != '') {
            var objecto = {
                nombre: this.state.nombre,
                ubicacion: this.state.ubicacion,
                idciudad: this.state.idciudad,
                arraymesa: JSON.stringify(this.state.arraymesa),
            };
            axios.post('/inicio/recinto/store', objecto).then(
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
    render() {
        if (this.state.redirect) {
            return (<Redirect to='/inicio/recinto/index' />);
        }
        return (
            <div className="main-content">
                <section className="section">
                    <h1 className="section-header">
                        <div>Nuevo Recinto</div>
                    </h1>
                    <div className="row">
                        <div className="col-12">
                            <div className="card">
                                <div className="card-body">
                                    <div className='row'>
                                        <div className='form-group col-md-4'>
                                            <label>Nombre</label>
                                            <input type="text" className="form-control" 
                                                value={this.state.nombre}
                                                onChange={this.onChangeNombre.bind(this)}     
                                            />
                                        </div>
                                        <div className='form-group col-md-4'>
                                            <label >Direccion</label>
                                            <input type="text" className="form-control" 
                                                value={this.state.ubicacion}
                                                onChange={this.onChangeUbicacion.bind(this)} 
                                            />
                                        </div>
                                        <div className='form-group col-md-4'>
                                            <label>Ciudad</label>
                                            <select className="form-control" 
                                                value={this.state.idciudad}
                                                onChange={this.onChangeIDCiudad.bind(this)}
                                            >
                                                <option value=''>Seleccionar</option>
                                                {this.state.arrayciudad.map(
                                                    (data, key) => (
                                                        <option value={data.id} key={key}>{data.nombre}</option>
                                                    )
                                                )}
                                            </select>
                                        </div>
                                    </div>
                                    <div className='row' style={{textAlign: 'center'}}>
                                        <div className='col-12'>
                                            <label>Registrar Mesa</label>
                                        </div>
                                    </div>
                                    <div className='row'>
                                        <div className='form-group col-md-4'>
                                            <label >Nro</label>
                                            <input type="text" className="form-control" 
                                                value={this.state.nro}
                                                onChange={this.onChangeNro.bind(this)} 
                                            />
                                        </div>
                                        <div className='form-group col-md-4'>
                                            <label >Nombre</label>
                                            <input type="text" className="form-control" 
                                                value={this.state.nombremesa}
                                                onChange={this.onChangeNombreMesa.bind(this)} 
                                            />
                                        </div>
                                        <div className='form-group col-md-4' style={{textAlign: 'center'}}>
                                            <button className='btn btn-sm btn-primary mt-4'
                                                onClick={this.onAddRow.bind(this)}
                                            >
                                                Agregar
                                            </button>
                                        </div>
                                    </div>
                                    <div className='row'>
                                        <div className="table-content">
                                            <table className="table-responsive-content">
                                                <thead>
                                                    <tr className="row-header">
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
                                                                <td><label className="col-show">#: </label>{key + 1}</td>
                                                                <td><label className="col-show">Nro: </label>{data.nro}</td>
                                                                <td><label className="col-show">Nombre: </label>{data.nombre}</td>
                                                                <td><label className="col-show">Opcion: </label>
                                                                    <button type='button' onClick={this.onDeleteRow.bind(this, key)}
                                                                        className="btn btn-sm btn-danger"
                                                                    >
                                                                        <i className="fa fa-trash"></i>
                                                                    </button>
                                                                </td>
                                                            </tr>
                                                        )
                                                    )}
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <div className='row'>
                                        <div className='col-12 mt-3' style={{textAlign: 'center'}}>
                                            <button className='btn btn-sm btn-primary mr-2'
                                                onClick={this.onSubmit.bind(this)}
                                            >
                                                Aceptar
                                            </button>
                                            <Link className='btn btn-sm btn-danger'
                                               to='/inicio/recinto/index'
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

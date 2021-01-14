
import React, { Component } from 'react';
import {withRouter, Link, Redirect} from 'react-router-dom';
import axios from 'axios';

export default class CrearPartido extends Component {

    constructor(props) {
        super(props);
        this.state = {
            redirect: false,

            nombre: '',
            sigla: '',
            idpersona: '',
            imagen: '',

            arraypersona: [],

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
    }
    onChangeNombre(event) {
        this.setState({
            nombre: event.target.value,
        });
    }
    onChangeSigla(event) {
        this.setState({
            sigla: event.target.value,
        });
    }
    onChangeIDPersona(event) {
        this.setState({
            idpersona: event.target.value,
        });
    }
    onChangeImagen(e) {
        let files = e.target.files;

        if ((files[0].type === 'image/png') || (files[0].type === 'image/jpg') || (files[0].type === 'image/jpeg')) {
            let reader = new FileReader();
            reader.onload = (e) => {
                this.setState({
                    imagen: e.target.result
                });
            };
            reader.readAsDataURL(e.target.files[0]);
        }
    }
    onSubmit() {
        if (this.state.idpersona != '' && this.state.nombre != '' && this.state.sigla) {
            var objecto = {
                sigla: this.state.sigla,
                nombre: this.state.nombre,
                idpersona: this.state.idpersona,
                imagen: this.state.imagen
            };
            axios.post('/inicio/partido/store', objecto).then(
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
            return (<Redirect to='/inicio/partido/index' />);
        }
        return (
            <div className="main-content">
                <section className="section">
                    <h1 className="section-header">
                        <div>Nuevo Partido Politico</div>
                    </h1>
                    <div className="row">
                        <div className="col-12">
                            <div className="card">
                                <div className="card-body">
                                    <div className='row'>
                                        <div className='form-group col-md-3'>
                                            <label>Sigla</label>
                                            <input type="text" className="form-control" 
                                                value={this.state.sigla}
                                                onChange={this.onChangeSigla.bind(this)}     
                                            />
                                        </div>
                                        <div className='form-group col-md-3'>
                                            <label>Nombre</label>
                                            <input type="text" className="form-control" 
                                                value={this.state.nombre}
                                                onChange={this.onChangeNombre.bind(this)}     
                                            />
                                        </div>
                                        <div className='form-group col-md-6'>
                                            <label>Persona</label>
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
                                    <div className="row">
                                        <div className='col-md-6'>
                                            <div className="card">
                                                <div className="card-header">
                                                    <h4>Imagen</h4>
                                                    <div className='float-right'>
                                                        <a className='btn btn-sm btn-outline-primary fa fa-download' 
                                                            style={{position: 'relative', borderRadius: '50%',}}>
                                                            <input type='file' onChange={this.onChangeImagen.bind(this)}
                                                                style={{position: 'absolute', top: 0, left: 0,
                                                                    width: '100%', height: '100%', opacity: 0,
                                                                }} 
                                                            />
                                                        </a>
                                                    </div>
                                                </div>
                                                <div className="card-body">
                                                    <div className="active" data-tab-group="carousel" id="carousel-simple">
                                                        <div id="carouselExampleIndicators" className="carousel slide" data-ride="carousel">
                                                            <div className="carousel-inner">
                                                                <div className="carousel-item active">
                                                                    {(this.state.imagen == '')?
                                                                        <img className="d-block w-100" 
                                                                            src="/img/default.png" alt="First slide" />:
                                                                        <img className="d-block w-100" 
                                                                            src={this.state.imagen} alt="First slide" />
                                                                    }
                                                                    
                                                                </div>
                                                            </div>
                                                        </div>                              
                                                    </div>
                                                </div>
                                            </div>
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
                                               to='/inicio/partido/index'
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

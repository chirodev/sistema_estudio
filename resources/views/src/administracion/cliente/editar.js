
import React, { Component } from 'react';
import {withRouter, Link, Redirect} from 'react-router-dom';
import axios from 'axios';

import { notification, Spin } from 'antd';
import 'antd/dist/antd.css';

export default class EditarCiudadano extends Component {

    constructor(props) {
        super(props);
        this.state = {
            redirect: false,
            loading: false,

            ci: '',
            nombre: '',
            apellido: '',
            direccion: '',
            telefono: '',
            genero: 'N',
            imagen: '',
            idciudad: '',

            error_ci: '',
            error_nombre: '',
            error_apellido: '',
            error_genero: '',
            error_idciudad: '',

            arrayciudad: [],

        }
    }
    componentDidMount() {
        this.get_data();
    }
    get_data() {
        axios.get( '/ciudadano/edit/' + this.props.match.params.id ).then(
            (response) => {
                
                if (response.data.response == -3) {
                    this.props.logout();
                    return;
                }
                if (response.data.response == 1) {
                    this.setState({ 
                        arrayciudad: response.data.ciudad,
                        ci: response.data.data.ci,
                        nombre: response.data.data.nombre,
                        apellido: response.data.data.apellido,
                        direccion: response.data.data.direccion == null ? '' : response.data.data.direccion,
                        genero: response.data.data.genero,
                        idciudad: response.data.data.idciudad,
                        telefono: response.data.data.telefono == null ? '' : response.data.data.telefono,
                    });
                    return;
                }
                
            }
        ).catch( error => {
            notification.error({
                description: 'HUBO UN ERROR AL SOLICITAR SERVICIO FAVOR DE REVISAR CONEXION.',
                zIndex: 1200,
            });
        } );
    }
    onChangeFoto(event) {
        let files = event.target.files;
        if ((files[0].type === 'image/png') || (files[0].type === 'image/jpg') || (files[0].type === 'image/jpeg') || (files[0].type === 'image/bmp')) {

            let reader = new FileReader();
            reader.onload = (e) => {
                this.setState({
                    imagen: e.target.result,
                });
            };
            reader.readAsDataURL(event.target.files[0]);
            return;
        }
        setTimeout(() => {
            var img = document.getElementById('img-img');
            img.value = '';
            notification.warning({
                description: 'ARCHIVO INVALIDO',
            });
            this.setState({
                imagen: '',
            });
        }, 500);
    }
    onSubmit() {
        if (this.state.ci.toString().trim().length > 0 && this.state.nombre.toString().trim().length > 0 &&
                this.state.apellido.toString().trim().length > 0 && this.state.idciudad.toString().trim().length > 0 && 
                this.state.genero != 'N'
            ) {

            this.setState({
                loading: true,
            })
            var formdata = new FormData();
            formdata.append('ci', this.state.ci);
            formdata.append('nombre', this.state.nombre);
            formdata.append('apellido', this.state.apellido);
            formdata.append('direccion', this.state.direccion);
            formdata.append('telefono', this.state.telefono);
            formdata.append('genero', this.state.genero);
            formdata.append('idciudad', this.state.idciudad);
            formdata.append('imagen', this.state.imagen);

            formdata.append('id', this.props.match.params.id);

            axios(
                {
                    method: 'post',
                    url: '/ciudadano/update',
                    data: formdata,
                    headers: {
                        'Content-Type': 'multipart/form-data',
                        'enctype' : 'multipart/form-data',    
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content'),
                    }
                }
            ).then(
                response => {
                    this.setState({ loading: false, });
                    
                    if (response.data.response == 1) {
                        
                        notification.success({
                            description: 'REGISTRO CREADO EXITOSAMENTE',
                        });
                        this.setState({
                            redirect: true,
                        })
                    }
                    if (response.data.response == -1) {
                        
                        notification.warning({
                            description: 'LA SIGLA YA EXISTE',
                        });
                        this.setState({
                            error_sigla: 'border-danger',
                        })
                    }
                    
                }
            ).catch( error => {
                this.setState({ loading: false, });
                notification.error({
                    description: 'HUBO UN ERROR AL SOLICITAR SERVICIO FAVOR DE REVISAR CONEXION.',
                });
            } );
        }else {
            if (this.state.ci.toString().trim().length == 0) {
                this.setState({
                    error_ci: 'border-danger',
                })
            }
            if (this.state.nombre.toString().trim().length == 0) {
                this.setState({
                    error_nombre: 'border-danger',
                })
            }
            if (this.state.apellido.toString().trim().length == 0) {
                this.setState({
                    error_apellido: 'border-danger',
                })
            }
            if (this.state.idciudad.toString().trim().length == 0) {
                this.setState({
                    error_idciudad: 'border-danger',
                })
            }
            if (this.state.genero == 'N') {
                this.setState({
                    error_genero: 'border-danger',
                })
            }
        }
    }
    render() {
        if (this.state.loading) {
            return (
                <div className="main-content">
                    <section className="section">
                        <div className="row" style={{ width: '100%', height: 300, display: 'flex', justifyContent: 'center', alignItems: 'center',}}>
                            <Spin />
                            <label className="ml-1"> LOADING...</label>
                        </div>
                    </section>
                </div>
            );
        }
        if (this.state.redirect) {
            return (<Redirect to='/eleccion_electoral/ciudadano/index' />);
        }
        return (
            <div className="main-content">
                <section className="section">
                    <h1 className="section-header">
                        <div>Editar Ciudadano</div>
                    </h1>
                    <div className="row">
                        <div className="col-12">
                            <div className="card">
                                <div className="card-body">
                                    <div className='row'>
                                        <div className='form-group col-md-3'>
                                            <label>CI</label>
                                            <input type="text" className={`form-control ${this.state.error_ci}`}
                                                value={this.state.ci}
                                                onChange={ (event) => this.setState({ci: event.target.value, error_ci: '',}) }     
                                            />
                                        </div>
                                        <div className='form-group col-md-3'>
                                            <label>Nombre</label>
                                            <input type="text" className={`form-control ${this.state.error_nombre}`} 
                                                value={this.state.nombre}
                                                onChange={ (event) => this.setState({nombre: event.target.value, error_nombre: '',}) }     
                                            />
                                        </div>
                                        <div className='form-group col-md-3'>
                                            <label>Apellido</label>
                                            <input type="text" className={`form-control ${this.state.error_apellido}`} 
                                                value={this.state.apellido}
                                                onChange={ (event) => this.setState({apellido: event.target.value, error_apellido: '',}) }     
                                            />
                                        </div>
                                        <div className='form-group col-md-3'>
                                            <label>Ciudad</label>
                                            <select className={`form-control ${this.state.error_idciudad}`} 
                                                value={this.state.idciudad}
                                                onChange={ (event) => this.setState({idciudad: event.target.value, error_idciudad: '',}) }     
                                            >
                                                <option value={''}>
                                                    {'SELECCIONAR'}
                                                </option>
                                                {this.state.arrayciudad.map(
                                                    (data, key) => (
                                                        <option key={key} value={data.id}>
                                                            {data.nombre}
                                                        </option>
                                                    )
                                                )}
                                            </select>
                                        </div>
                                    </div>
                                    <div className='row'>
                                        <div className='form-group col-md-6'>
                                            <label>Direccion</label>
                                            <input type="text" className={`form-control`}
                                                value={this.state.direccion}
                                                onChange={ (event) => this.setState({direccion: event.target.value,}) }     
                                            />
                                        </div>
                                        <div className='form-group col-md-3'>
                                            <label>Telefono</label>
                                            <input type="text" className={`form-control`}
                                                value={this.state.telefono}
                                                onChange={ (event) => this.setState({telefono: event.target.value,}) }     
                                            />
                                        </div>
                                        <div className='form-group col-md-3'>
                                            <label>Genero</label>
                                            <select className={`form-control ${this.state.error_genero}`} 
                                                value={this.state.genero}
                                                onChange={ (event) => this.setState({genero: event.target.value, error_genero: '',}) }     
                                            >
                                                <option value={'N'}>
                                                    Ninguno
                                                </option>
                                                <option value={'M'}>
                                                    Masculino
                                                </option>
                                                <option value={'F'}>
                                                    Famenino
                                                </option>
                                            </select>
                                        </div>
                                    </div>
                                    <div className='row'>
                                        <div className='form-group col-md-3'></div>
                                        <div className='form-group col-md-6'>
                                            <label>Imagen</label>
                                            <input type="file" className={`form-control`} 
                                                id='img-img'
                                                onChange={this.onChangeFoto.bind(this)}  
                                            />
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
                                               to='/eleccion_electoral/ciudadano/index'
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


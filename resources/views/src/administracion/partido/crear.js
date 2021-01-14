
import React, { Component } from 'react';
import {withRouter, Link, Redirect} from 'react-router-dom';
import axios from 'axios';

import { notification, Spin } from 'antd';
import 'antd/dist/antd.css';

export default class CrearPartidoPolitico extends Component {

    constructor(props) {
        super(props);
        this.state = {
            redirect: false,
            loading: false,

            nombre: '',
            sigla: '',
            color: '#000000',
            idpersona: '',
            imagen: '',

            error_sigla: '',
            error_nombre: '',

            arraypersona: [],

        }
    }
    componentDidMount() {
        
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
        if (this.state.sigla.toString().trim().length > 0 && this.state.nombre.toString().trim().length > 0) {

            this.setState({
                loading: true,
            })
            var formdata = new FormData();
            formdata.append('nombre', this.state.nombre);
            formdata.append('sigla', this.state.sigla);
            formdata.append('color', this.state.color);
            formdata.append('imagen', this.state.imagen);

            axios(
                {
                    method: 'post',
                    url: '/partido_politico/store',
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
            if (this.state.sigla.toString().trim().length == 0) {
                this.setState({
                    error_sigla: 'border-danger',
                })
            }
            if (this.state.nombre.toString().trim().length == 0) {
                this.setState({
                    error_nombre: 'border-danger',
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
            return (<Redirect to='/eleccion_electoral/partido_politico/index' />);
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
                                            <input type="text" className={`form-control ${this.state.error_sigla}`}
                                                value={this.state.sigla}
                                                onChange={ (event) => this.setState({sigla: event.target.value.toUpperCase(), error_sigla: '',}) }     
                                            />
                                            {/* <span className="text-danger">No se permite Campo Vacio</span> */}
                                        </div>
                                        <div className='form-group col-md-6'>
                                            <label>Nombre</label>
                                            <input type="text" className={`form-control ${this.state.error_nombre}`} 
                                                value={this.state.nombre}
                                                onChange={ (event) => this.setState({nombre: event.target.value, error_nombre: '',}) }     
                                            />
                                        </div>
                                        <div className='form-group col-md-3'>
                                            <label>Color</label>
                                            <input type="color" className="form-control" 
                                                value={this.state.color}
                                                onChange={ (event) => this.setState({color: event.target.value}) }     
                                            />
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
                                               to='/eleccion_electoral/partido_politico/index'
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


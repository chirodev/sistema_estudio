
import React, { Component } from 'react';
import {withRouter, Link, Redirect} from 'react-router-dom';
import axios from 'axios';

import { notification, Spin } from 'antd';
import 'antd/dist/antd.css';

export default class CrearActa extends Component {

    constructor(props) {
        super(props);
        this.state = {
            redirect: false,
            loading: false,

            nombre: '',
            sigla: '',
            color: '#000000',

            idpersona: '',
            idrecinto: '',
            idmesa: '',
            imagen: '',

            error_idpersona: '',
            error_idrecinto: '',
            error_idmesa: '',
            error_nombre: '',

            array_persona: [],
            array_partido: [],
            array_recinto: [],
            array_mesa: [],

        }
    }
    componentDidMount() {
        this.get_data();
    }
    get_data() {
        axios.get( '/acta/create/').then(
            (response) => {
                console.log(response.data)
                if (response.data.response == -3) {
                    this.props.logout();
                    return;
                }
                if (response.data.response == 1) {
                    this.setState({ 
                        array_partido: response.data.partido,
                        array_persona: response.data.persona,
                        array_recinto: response.data.recinto,
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
    get_mesa(idrecinto) {
        if (idrecinto == '') return;
        axios.get( '/acta/get_mesa/' + idrecinto).then(
            (response) => {
                if (response.data.response == -3) {
                    this.props.logout();
                    return;
                }
                if (response.data.response == 1) {
                    this.setState({ 
                        array_mesa: response.data.mesa,
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
        console.log(this.state.array_partido)
        if (this.state.idpersona.toString().trim().length > 0 && this.state.idrecinto.toString().trim().length > 0 && this.state.idmesa.toString().trim().length > 0) {

            this.setState({
                loading: true,
            })
            var formdata = new FormData();
            formdata.append('idpersona', this.state.idpersona);
            formdata.append('idmesa', this.state.idmesa);
            formdata.append('imagen', this.state.imagen);
            formdata.append('array_partido', JSON.stringify(this.state.array_partido));

            axios(
                {
                    method: 'post',
                    url: '/acta/store',
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
            if (this.state.idpersona.toString().trim().length == 0) {
                this.setState({
                    error_idpersona: 'border-danger',
                })
            }
            if (this.state.idrecinto.toString().trim().length == 0) {
                this.setState({
                    error_idrecinto: 'border-danger',
                })
            }
            if (this.state.idmesa.toString().trim().length == 0) {
                this.setState({
                    error_idmesa: 'border-danger',
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
            return (<Redirect to='/eleccion_electoral/acta/index' />);
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
                                            <label>Persona</label>
                                            <select className={`form-control ${this.state.error_idpersona}`}
                                                value={this.state.idpersona}
                                                onChange={ (event) => this.setState({idpersona: event.target.value, error_idpersona: '',}) }     
                                            >
                                                <option value="">SELECCIONAR</option>
                                                {this.state.array_persona.map(
                                                    (data, key) => (
                                                        <option key={key} value={data.id}>
                                                            {data.nombre} {data.apellido}
                                                        </option>
                                                    )
                                                )}
                                            </select>
                                        </div>
                                        <div className='form-group col-md-3'>
                                            <label>Recinto</label>
                                            <select className={`form-control ${this.state.error_idrecinto}`}
                                                value={this.state.idrecinto}
                                                onChange={ (event) => {
                                                    this.setState({idrecinto: event.target.value, error_idrecinto: '',});
                                                    this.get_mesa(event.target.value);
                                                } }     
                                            >
                                                <option value="">SELECCIONAR</option>
                                                {this.state.array_recinto.map(
                                                    (data, key) => (
                                                        <option key={key} value={data.id}>
                                                            {data.nombre}
                                                        </option>
                                                    )
                                                )}
                                            </select>
                                        </div>
                                        <div className='form-group col-md-3'>
                                            <label>Mesa</label>
                                            <select className={`form-control ${this.state.error_idmesa}`}
                                                value={this.state.idmesa}
                                                onChange={ (event) => this.setState({idmesa: event.target.value, error_idmesa: '',}) }     
                                            >
                                                <option value="">SELECCIONAR</option>
                                                {this.state.array_mesa.map(
                                                    (data, key) => (
                                                        <option key={key} value={data.id}>
                                                            {data.nombre} {data.apellido}
                                                        </option>
                                                    )
                                                )}
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
                                    {this.state.array_partido.map(
                                        (data, key) => {
                                            if (typeof data.cantidad == 'undefined') {
                                                data.cantidad = 0;
                                            }
                                            return (
                                                <div className='row' key={key}>
                                                    <div className='form-group col-md-3'></div>
                                                    <div className='form-group col-md-3'>
                                                        <label>Sigla</label>
                                                        <input type="text" className={`form-control`} 
                                                            value={data.sigla} readOnly style={{background: '#e8e8e8'}}
                                                        />
                                                    </div>
                                                    <div className='form-group col-md-3'>
                                                        <label>Cantidad</label>
                                                        <input type="text" className={`form-control`} 
                                                            value={data.cantidad}
                                                            onChange={(event) => {
                                                                var cantidad = event.target.value;
                                                                if (cantidad == '') cantidad = 0; 
                                                                if (!isNaN(cantidad)) {
                                                                    data.cantidad = parseInt(cantidad);
                                                                    this.setState({
                                                                        array_partido: this.state.array_partido,
                                                                    })
                                                                }
                                                            }}
                                                        />
                                                    </div>
                                                </div>
                                            )
                                        }
                                    )}
                                    <div className='row'>
                                        <div className='col-12 mt-3' style={{textAlign: 'center'}}>
                                            <button className='btn btn-sm btn-primary mr-2'
                                                onClick={this.onSubmit.bind(this)}
                                            >
                                                Aceptar
                                            </button>
                                            <Link className='btn btn-sm btn-danger'
                                               to='/eleccion_electoral/acta/index'
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


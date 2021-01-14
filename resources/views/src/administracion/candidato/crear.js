
import React, { Component } from 'react';
import {withRouter, Link, Redirect} from 'react-router-dom';
import axios from 'axios';

import { notification, Spin } from 'antd';
import 'antd/dist/antd.css';

export default class CrearCandidato extends Component {

    constructor(props) {
        super(props);
        this.state = {
            redirect: false,
            loading: false,

            idpartido: '',
            idpersona: '',
            rol: '',

            error_idpersona: '',
            error_rol: '',
            error_idpartido: '',

            array_partido: [],
            array_persona: [],
            array_candidato: [],

        }
    }
    componentDidMount() {
        this.get_data();
    }
    get_data() {
        axios.get( '/candidato/create/').then(
            (response) => {
                console.log(response.data)
                if (response.data.response == -3) {
                    this.props.logout();
                    return;
                }
                if (response.data.response == 1) {
                    this.setState({ 
                        array_partido: response.data.data,
                        array_persona: response.data.persona,
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
    get_candidato(id) {
        axios.get( '/candidato/get_candidato/' + id).then(
            (response) => {
                console.log(response.data)
                if (response.data.response == -3) {
                    this.props.logout();
                    return;
                }
                if (response.data.response == 1) {
                    this.setState({ 
                        array_candidato: response.data.data,
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
        if (this.state.idpersona.toString().trim().length > 0 && this.state.rol.toString().trim().length > 0 && this.state.idpartido.toString().trim().length > 0) {

            this.setState({
                loading: true,
            })
            var formdata = new FormData();
            formdata.append('idpersona', this.state.idpersona);
            formdata.append('idpartido', this.state.idpartido);
            formdata.append('rol', this.state.rol);

            axios(
                {
                    method: 'post',
                    url: '/candidato/store',
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
            if (this.state.idpartido.toString().trim().length == 0) {
                this.setState({
                    error_idpartido: 'border-danger',
                })
            }
            if (this.state.rol.toString().trim().length == 0) {
                this.setState({
                    error_rol: 'border-danger',
                })
            }
            if (this.state.idpersona.toString().trim().length == 0) {
                this.setState({
                    error_idpersona: 'border-danger',
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
                        <div>Nueva Candidato</div>
                    </h1>
                    <div className="row">
                        <div className="col-12">
                            <div className="card">
                                <div className="card-body">
                                    <div className='row'>
                                        <div className='form-group col-md-4'></div>
                                        <div className='form-group col-md-4'>
                                            <label>Partido Politico</label>
                                            <select className={`form-control ${this.state.error_idpartido}`} 
                                                value={this.state.idpartido}
                                                onChange={ (event) => {
                                                    if (event.target.value == '') {
                                                        this.setState({
                                                            idpartido: '',
                                                            array_candidato: [],
                                                        })
                                                        return;
                                                    }
                                                    this.setState({
                                                        idpartido: event.target.value, error_idpartido: '',
                                                    });
                                                    this.get_candidato(event.target.value);
                                                } }     
                                            >
                                                <option value={''}>
                                                    {'SELECCIONAR'}
                                                </option>
                                                {this.state.array_partido.map(
                                                    (data, key) => (
                                                        <option key={key} value={data.id}>
                                                            {data.sigla} = {data.nombre} 
                                                        </option>
                                                    )
                                                )}
                                            </select>
                                        </div>
                                    </div>
                                    <div className='row'>
                                        <div className='form-group col-md-1'></div>
                                        <div className='form-group col-md-6'>
                                            <label>Ciudadano</label>
                                            <select className={`form-control ${this.state.error_idpersona}`} 
                                                value={this.state.idpersona}
                                                onChange={ (event) => {
                                                    this.setState({
                                                        idpersona: event.target.value, error_idpersona: '',
                                                    });
                                                } }     
                                            >
                                                <option value={''}>
                                                    {'SELECCIONAR'}
                                                </option>
                                                {this.state.array_persona.map(
                                                    (data, key) => (
                                                        <option key={key} value={data.id}>
                                                            {data.nombre}  {data.apellido} 
                                                        </option>
                                                    )
                                                )}
                                            </select>
                                        </div>
                                        <div className='form-group col-md-3'>
                                            <label>Rol</label>
                                            <input type="text" className={`form-control ${this.state.error_rol}`} 
                                                value={this.state.rol}
                                                onChange={(event) => this.setState({rol: event.target.value, error_rol: ''})}
                                            />
                                        </div>
                                    </div>
                                    <div className='row'>
                                        <h1 className="section-header">
                                            <div>Lista de Candidato del Partido Politico</div>
                                        </h1>
                                    </div>
                                    <div style={{ width: '100%', maxHeight: 200, overflow: 'scroll'}}>
                                        {this.state.array_candidato.map(
                                            (data, key) => (
                                                <div className='row' key={key}>
                                                    <div className='form-group col-md-1'></div>
                                                    <div className='form-group col-md-3'>
                                                        <label>CI</label>
                                                        <input type="text" className={`form-control`}
                                                            value={data.ci} style={{background: '#e8e8e8'}}
                                                            readOnly  
                                                        />
                                                    </div>
                                                    <div className='form-group col-md-4'>
                                                        <label>Nombre</label>
                                                        <input type="text" className={`form-control`}
                                                            value={data.nombre + ' ' + data.apellido} style={{background: '#e8e8e8'}}
                                                            readOnly  
                                                        />
                                                    </div>
                                                    <div className='form-group col-md-3'>
                                                        <label>Rol</label>
                                                        <input type="text" className={`form-control`}
                                                            value={data.rol} style={{background: '#e8e8e8'}}
                                                            readOnly  
                                                        />
                                                    </div>
                                                </div>
                                            )
                                        )}
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


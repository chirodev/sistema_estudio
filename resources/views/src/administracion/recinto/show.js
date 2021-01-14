
import React, { Component } from 'react';
import {withRouter, Link, Redirect} from 'react-router-dom';
import axios from 'axios';

import { notification, Spin } from 'antd';
import 'antd/dist/antd.css';

export default class ShowRecinto extends Component {

    constructor(props) {
        super(props);
        this.state = {
            redirect: false,
            loading: false,

            nombre: '',
            ubicacion: '',
            idciudad: '',
            imagen: '',

            error_idciudad: '',
            error_nombre: '',
            error_direccion: '',

            arrayciudad: [],
            array_mesa: [],

        }
    }
    componentDidMount() {
        this.get_data();
    }
    get_data() {
        axios.get( '/recinto/show/' + this.props.match.params.id ).then(
            (response) => {
                
                if (response.data.response == -3) {
                    this.props.logout();
                    return;
                }
                if (response.data.response == 1) {
                    this.setState({ 
                        arrayciudad: response.data.ciudad,
                        array_mesa: response.data.mesa,
                        ubicacion: response.data.data.ubicacion,
                        idciudad: response.data.data.idciudad,
                        nombre: response.data.data.nombre,
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
            return (<Redirect to='/eleccion_electoral/recinto/index' />);
        }
        return (
            <div className="main-content">
                <section className="section">
                    <h1 className="section-header">
                        <div>Detalle Recinto</div>
                    </h1>
                    <div className="row">
                        <div className="col-12">
                            <div className="card">
                                <div className="card-body">
                                    <div className='row'>
                                        <div className='form-group col-md-3'>
                                            <label>Nombre</label>
                                            <input type="text" className={`form-control ${this.state.error_nombre}`}
                                                value={this.state.nombre}
                                                readOnly   
                                            />
                                            {/* <span className="text-danger">No se permite Campo Vacio</span> */}
                                        </div>
                                        <div className='form-group col-md-6'>
                                            <label>Direccion</label>
                                            <input type="text" className={`form-control ${this.state.error_direccion}`} 
                                                value={this.state.ubicacion}
                                                readOnly   
                                            />
                                        </div>
                                        <div className='form-group col-md-3'>
                                            <label>Ciudad</label>
                                            <select className={`form-control ${this.state.error_idciudad}`} 
                                                value={this.state.idciudad}
                                                disabled     
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
                                        <div className='form-group col-md-3'></div>
                                        <div className='form-group col-md-6'>
                                            <label>Imagen</label>
                                            <input type="file" className={`form-control`} 
                                                id='img-img'
                                                disabled
                                            />
                                        </div>
                                    </div>
                                    <div className='row'>
                                        <h1 className="section-header">
                                            <div>Lista de Mesa del Recinto</div>
                                        </h1>
                                    </div>
                                    {this.state.array_mesa.map(
                                        (data, key) => (
                                            <div className='row' key={key}>
                                                <div className='form-group col-md-3'></div>
                                                <div className='form-group col-md-3'>
                                                    <label>Nro</label>
                                                    <input type="text" className={`form-control`}
                                                        value={data.nro} style={{background: '#e8e8e8'}}
                                                        readOnly  
                                                    />
                                                </div>
                                                <div className='form-group col-md-3'>
                                                    <label>Nombre</label>
                                                    <input type="text" className={`form-control`}
                                                        value={data.nombre} style={{background: '#e8e8e8'}}
                                                        readOnly  
                                                    />
                                                </div>
                                            </div>
                                        )
                                    )}
                                    <div className='row'>
                                        <div className='col-12 mt-3' style={{textAlign: 'center'}}>
                                            <Link className='btn btn-sm btn-success'
                                               to='/eleccion_electoral/recinto/index'
                                            >
                                                Aceptar
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


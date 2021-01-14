
import React, { Component } from 'react';
import {withRouter, Link, Redirect} from 'react-router-dom';
import axios from 'axios';

export default class ShowActa extends Component {

    constructor(props) {
        super(props);
        this.state = {
            redirect: false,

            ci: '',
            nombre: '',
            apellido: '',
            genero: 'N',
            idciudad: '',
            imagen: '',

            arrayciudad: [],

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
    onChangeCI(event) {
        this.setState({
            ci: event.target.value,
        });
    }
    onChangeNombre(event) {
        this.setState({
            nombre: event.target.value,
        });
    }
    onChangeApellido(event) {
        this.setState({
            apellido: event.target.value,
        });
    }
    onChangeGenero(event) {
        this.setState({
            genero: event.target.value,
        });
    }
    onChangeIDCiudad(event) {
        this.setState({
            idciudad: event.target.value,
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
        if (this.state.idciudad != '' && this.state.nombre != '') {
            var objecto = {
                ci: this.state.ci,
                nombre: this.state.nombre,
                apellido: this.state.apellido,
                idciudad: this.state.idciudad,
                genero: this.state.genero,
                imagen: this.state.imagen
            };
            axios.post('/inicio/ciudadano/store', objecto).then(
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
            return (<Redirect to='/inicio/ciudadano/index' />);
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
                                        <div className='form-group col-md-3'>
                                            <label>CI</label>
                                            <input type="text" className="form-control" 
                                                value={this.state.ci}
                                                onChange={this.onChangeCI.bind(this)}     
                                            />
                                        </div>
                                        <div className='form-group col-md-3'>
                                            <label>Nombre</label>
                                            <input type="text" className="form-control" 
                                                value={this.state.nombre}
                                                onChange={this.onChangeNombre.bind(this)}     
                                            />
                                        </div>
                                        <div className='form-group col-md-3'>
                                            <label >Apellido</label>
                                            <input type="text" className="form-control" 
                                                value={this.state.apellido}
                                                onChange={this.onChangeApellido.bind(this)} 
                                            />
                                        </div>
                                        <div className='form-group col-md-3'>
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
                                        <div className='form-group col-md-3'>
                                            <label>Genero</label>
                                            <select className="form-control" 
                                                value={this.state.genero}
                                                onChange={this.onChangeGenero.bind(this)}
                                            >
                                                <option value='N'>Seleccionar</option>
                                                <option value='F'>Femenino</option>
                                                <option value='M'>Masculino</option>
                                            </select>
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
                                               to='/inicio/ciudadano/index'
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

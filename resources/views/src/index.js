
import React, { Component } from 'react';
import ReactDOM from 'react-dom';

import axios from 'axios';

import {BrowserRouter, Route} from 'react-router-dom';
import Header from './layouts/header';
import Sidebar from './layouts/sidebar';
import Footer from './layouts/footer';
import Home from './home';
import IndexCliente from './administracion/cliente';


import IndexCiudadano from './administracion/ciudadano';

import IndexPartidoPolitico from './administracion/partido';
import CrearPartidoPolitico from './administracion/partido/crear';

import IndexRecinto from './administracion/recinto';

import IndexMesa from './administracion/mesa';




import CrearCliente from './administracion/cliente/crear';
import EditarCliente from './administracion/cliente/editar';
import IndexDelegado from './administracion/delegado';
import EditarPartidoPolitico from './administracion/partido/editar';
import CrearCiudadano from './administracion/ciudadano/crear';
import EditarCiudadano from './administracion/ciudadano/editar';
import CrearRecinto from './administracion/recinto/crear';
import EditarRecinto from './administracion/recinto/editar';
import CrearMesa from './administracion/mesa/crear';
import ShowRecinto from './administracion/recinto/show';
import CrearCandidato from './administracion/candidato/crear';
import ShowPartidoPolitico from './administracion/partido/show';
import IndexActaMesa from './administracion/acta';
import CrearActa from './administracion/acta/crear';

export default class Index extends Component {
    constructor(props) {
        super(props);
        this.state = {
            token: '',
            usuario: '',
        }
    }
    componentDidMount() {
        axios.get('/token').then(
            (response) => {
                this.setState({
                    token: response.data.token,
                    usuario: response.data.usuario
                })
            }
        ).catch(
            error => console.log(error)
        )
    }
    render() {
        return (
            <BrowserRouter>
                <div className="main-wrapper">
                    <div className="navbar-bg"></div>
                    <Header usuario={this.state.usuario} token={this.state.token} />
                    <Sidebar />

                    <Route exact path='/home' render={ (props) => <Home { ...props} /> } />


                    <Route exact path='/sistema_eventos/cliente/index' render={ (props) => <IndexCliente { ...props} /> } />
                    <Route exact path='/sistema_eventos/cliente/create' render={ (props) => <CrearCliente { ...props} /> } />
                    <Route exact path='/sistema_eventos/cliente/edit/:id' render={ (props) => <EditarCliente { ...props} /> } />

                    <Route exact path='/eleccion_electoral/ciudadano/index' render={ (props) => <IndexCiudadano { ...props} /> } />
                    <Route exact path='/eleccion_electoral/ciudadano/create' render={ (props) => <CrearCiudadano { ...props} /> } />
                    <Route exact path='/eleccion_electoral/ciudadano/edit/:id' render={ (props) => <EditarCiudadano { ...props} /> } />

                    <Route exact path='/eleccion_electoral/partido_politico/index' render={ (props) => <IndexPartidoPolitico { ...props} /> } />
                    <Route exact path='/eleccion_electoral/partido_politico/create' render={ (props) => <CrearPartidoPolitico { ...props} /> } />
                    <Route exact path='/eleccion_electoral/partido_politico/edit/:id' render={ (props) => <EditarPartidoPolitico { ...props} /> } />
                    <Route exact path='/eleccion_electoral/partido_politico/show/:id' render={ (props) => <ShowPartidoPolitico { ...props} /> } />

                    <Route exact path='/eleccion_electoral/recinto/index' render={ (props) => <IndexRecinto { ...props} /> } />
                    <Route exact path='/eleccion_electoral/recinto/create' render={ (props) => <CrearRecinto { ...props} /> } />
                    <Route exact path='/eleccion_electoral/recinto/edit/:id' render={ (props) => <EditarRecinto { ...props} /> } />
                    <Route exact path='/eleccion_electoral/recinto/show/:id' render={ (props) => <ShowRecinto { ...props} /> } />

                    {/* <Route exact path='/eleccion_electoral/mesa/index' render={ (props) => <IndexMesa { ...props} /> } /> */}
                    <Route exact path='/eleccion_electoral/mesa/create' render={ (props) => <CrearMesa { ...props} /> } />

                    <Route exact path='/eleccion_electoral/candidato/create' render={ (props) => <CrearCandidato { ...props} /> } />

                    <Route exact path='/eleccion_electoral/delegado/index' render={ (props) => <IndexDelegado { ...props} /> } />


                    <Route exact path='/eleccion_electoral/acta/index' render={ (props) => <IndexActaMesa { ...props} /> } />
                    <Route exact path='/eleccion_electoral/acta/create' render={ (props) => <CrearActa { ...props} /> } />

                </div>
            </BrowserRouter>
        );
    }
}

if (document.getElementById('raiz')) {
    ReactDOM.render(<Index />, document.getElementById('raiz'));
}

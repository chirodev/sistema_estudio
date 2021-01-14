
import React, { Component } from 'react';
import {Link} from 'react-router-dom';

export default class Sidebar extends Component {
    render() {
        return (
            <div className="main-sidebar">
                <aside id="sidebar-wrapper">
                    <div className="sidebar-brand">
                        <a href="index.html">Stisla Lite</a>
                    </div>
                    <div className="sidebar-user">
                        <div className="sidebar-user-picture">
                        <img alt="image" src="/dist/img/avatar/avatar-1.jpeg" />
                        </div>
                        <div className="sidebar-user-details">
                        <div className="user-name">usuario</div>
                        <div className="user-role">
                            Administrator
                        </div>
                        </div>
                    </div>
                    <ul className="sidebar-menu">
                        <li className="menu-header">Dashboard</li>
                        <li className="active">
                            <a href="/home"><i className="ion ion-speedometer"></i><span>Home</span></a>
                        </li>

                        <li className="menu-header">Components</li>
                        <li>
                            <a href="#" className="has-dropdown">
                                <i className="ion ion-ios-albums-outline"></i>
                                <span>Administracion</span>
                            </a>
                            <ul className="menu-dropdown">
                                <li>
                                <Link to='/sistema_eventos/cliente/index'>
                                        <i className="ion ion-ios-circle-outline"></i> Cliente
                                    </Link>
                                    <Link to='/eleccion_electoral/ciudadano/index'>
                                        <i className="ion ion-ios-circle-outline"></i> Ciudadano
                                    </Link>
                                    <Link to='/eleccion_electoral/partido_politico/index'>
                                        <i className="ion ion-ios-circle-outline"></i>  Partido Politico
                                    </Link>
                                    <Link to='/eleccion_electoral/recinto/index'>
                                        <i className="ion ion-ios-circle-outline"></i>  Recinto
                                    </Link>
                                    <Link to='/eleccion_electoral/acta/index'>
                                        <i className="ion ion-ios-circle-outline"></i> Acta 
                                    </Link>
                                    {/* <Link to='/eleccion_electoral/delegado/index'>
                                        <i className="ion ion-ios-circle-outline"></i> Delegado 
                                    </Link> */}
                                </li>
                            </ul>
                        </li>
                    </ul>
                </aside>
            </div>

        );
    }
}

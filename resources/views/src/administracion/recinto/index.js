
import React, { Component } from 'react';
import {withRouter, Link} from 'react-router-dom';
import axios from 'axios';

class IndexRecinto extends Component {
    constructor(props) {
        super(props);
        this.state = {
            data: [],
        }
    }
    componentDidMount() {
        axios.get('/recinto/index').then(
            response => {
                if (response.data.response == 1) {
                    this.setState({
                        data: response.data.data,
                    });
                }
            }
        ).catch(
            error => console.log(error)
        );
    }
    render() {
        return (
            <div className="main-content">
                <section className="section">
                    <h1 className="section-header">
                        <div>Recinto Electoral</div>
                    </h1>
                    <div className="row">
                        <div className="col-12">
                            <div className="card">
                                <div className="card-header">
                                    <div className="float-right">
                                        <div className="input-group">
                                            <input type="text" className="form-control" placeholder="Search" />
                                            <div className="input-group-btn">
                                                <button className="btn btn-secondary">
                                                    <i className="ion ion-search"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                    <h4>
                                        <Link to='/eleccion_electoral/recinto/create' className="btn btn-sm btn-outline-primary mr-2">
                                            Nuevo
                                        </Link>
                                        <Link to='/eleccion_electoral/mesa/create' className="btn btn-sm btn-outline-success">
                                            Asignar Mesa
                                        </Link>
                                    </h4>
                                </div>
                                <div className="card-body">
                                    <div className="table-responsive">
                                        <table className="table table-striped">
                                            <thead>
                                                <tr>
                                                    <th>Nro</th>
                                                    <th>Ciudad</th>
                                                    <th>Nombre</th>
                                                    <th>Direccion</th>
                                                    <th>Img</th>
                                                    <th>Opcion</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                {this.state.data.map(
                                                    (data, key) =>(
                                                        <tr key={key}>
                                                            <td>{key + 1}</td>
                                                            <td>
                                                                {data.ciudad}
                                                            </td>
                                                            <td>
                                                                {data.nombre}
                                                            </td>
                                                            <td>
                                                                {data.ubicacion == null ? '' : data.ubicacion}
                                                            </td>
                                                            <td>
                                                                {(data.imagen == null || data.imagen == '')?
                                                                    <img alt="image" src="/img/default.png" 
                                                                        className="rounded-circle" width="40" data-toggle="title" title="Wildan Ahdian" />:
                                                                    <img alt="image" src={data.imagen} 
                                                                        className="rounded-circle" width="40" data-toggle="title" title="Wildan Ahdian" />
                                                                }
                                                            </td>
                                                            <td>
                                                                <Link to={'/eleccion_electoral/recinto/edit/' + data.id} 
                                                                    className="btn btn-xs btn-action btn-primary fa fa-edit">
                                                                    
                                                                </Link>
                                                                <Link to={'/eleccion_electoral/recinto/show/' + data.id} 
                                                                    className="btn btn-xs btn-action btn-success fa fa-eye">
                                                                    
                                                                </Link>
                                                            </td>
                                                        </tr>
                                                    )
                                                )}
                                            </tbody>
                                        </table>
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

export default withRouter(IndexRecinto);

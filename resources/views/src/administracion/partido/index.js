
import React, { Component } from 'react';
import {withRouter, Link} from 'react-router-dom';
import axios from 'axios';

class IndexPartidoPolitico extends Component {
    constructor(props) {
        super(props);
        this.state = {
            data: [],
        }
    }
    componentDidMount() {
        axios.get('/partido_politico/index').then(
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
                        <div>Partido Politico</div>
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
                                        <Link to='/eleccion_electoral/partido_politico/create' className="btn btn-sm btn-outline-primary">
                                            Nuevo
                                        </Link>
                                        <Link to='/eleccion_electoral/candidato/create' className="btn btn-sm btn-outline-success">
                                            Asignar Candidato
                                        </Link>
                                    </h4>
                                </div>
                                <div className="card-body">
                                    <div className="table-responsive">
                                        <table className="table table-striped">
                                            <thead>
                                                <tr>
                                                    <th>Nro</th>
                                                    <th>Sigla</th>
                                                    <th>Nombre</th>
                                                    <th>Imgagen</th>
                                                    <th>Opcion</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                {this.state.data.map(
                                                    (data, key) =>(
                                                        <tr key={key}>
                                                            <td>{key + 1}</td>
                                                            <td>
                                                                {data.sigla}
                                                            </td>
                                                            <td>
                                                                {data.nombre}
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
                                                                <Link to={'/eleccion_electoral/partido_politico/edit/' + data.id} 
                                                                    className="btn btn-xs btn-action btn-primary fa fa-edit">
                                                                    
                                                                </Link>
                                                                <Link to={'/eleccion_electoral/partido_politico/show/' + data.id} 
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

export default withRouter(IndexPartidoPolitico);


import React, { Component } from 'react';
import {withRouter, Link} from 'react-router-dom';
import axios from 'axios';

class IndexDelegado extends Component {
    constructor(props) {
        super(props);
        this.state = {
            data: [],
        }
    }
    componentDidMount() {
        axios.get('/delegado/index').then(
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
                        <div>Delegado</div>
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
                                        <Link to='/eleccion_electoral/delegado/create' className="btn btn-sm btn-outline-primary">
                                            Nuevo
                                        </Link>
                                    </h4>
                                </div>
                                <div className="card-body">
                                    <div className="table-responsive">
                                        <table className="table table-striped">
                                            <thead>
                                                <tr>
                                                    <th>Nro</th>
                                                    <th>Nombre</th>
                                                    <th>Apellido</th>
                                                    <th>Genero</th>
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
                                                                {data.nombre}
                                                            </td>
                                                            <td>
                                                                {data.apellido}
                                                            </td>
                                                            <td>
                                                                {(data.genero == 'N')?'Ninguno':(data.genero == 'F')?'Femenino':'Masculino'}
                                                            </td>
                                                            <td>
                                                                {(data.imagen == null || data.imagen == '')?
                                                                    <img alt="image" src="/img/default.png" 
                                                                        className="rounded-circle" width="35" data-toggle="title" title="Wildan Ahdian" />:
                                                                    <img alt="image" src={data.imagen} 
                                                                        className="rounded-circle" width="35" data-toggle="title" title="Wildan Ahdian" />
                                                                }
                                                            </td>
                                                            <td><a href="#" className="btn btn-action btn-secondary">Detail</a></td>
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

export default withRouter(IndexDelegado);
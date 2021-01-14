
import React, { Component } from 'react';
import {withRouter, Link} from 'react-router-dom';
import axios from 'axios';

export default class IndexRecinto extends Component {
    constructor(props) {
        super(props);
        this.state = {
            data: [],
        }
    }
    componentDidMount() {
        axios.get('/inicio/recinto/get_recinto').then(
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
                        <div>Recinto</div>
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
                                        <Link to='/inicio/recinto/create' className="btn btn-sm btn-outline-primary">
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
                                                    <th>Ciudad</th>
                                                    <th>Nombre</th>
                                                    <th>Ubicacion</th>
                                                    <th>Opcion</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                {this.state.data.map(
                                                    (data, key) => (
                                                        <tr key={key}>
                                                            <td>{key + 1}</td>
                                                            <td>{data.ciudad}</td>
                                                            <td>{data.nombre}</td>
                                                            <td>{data.ubicacion}</td>
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

//export default withRouter(Home);

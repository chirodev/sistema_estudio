
import React, { Component } from 'react';
import {withRouter, Link} from 'react-router-dom';
import axios from 'axios';

class IndexActaMesa extends Component {
    constructor(props) {
        super(props);
        this.state = {
            data: [],
        }
    }
    componentDidMount() {
        axios.get('/acta/index').then(
            response => {
                console.log(response.data)
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
                        <div>Listado de Acta</div>
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
                                        <Link to='/eleccion_electoral/acta/create' className="btn btn-sm btn-outline-primary">
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
                                                    <th>Notario</th>
                                                    <th>Recinto</th>
                                                    <th>Direccion</th>
                                                    <th>Opcion</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                {this.state.data.map(
                                                    (data, key) =>(
                                                        <tr key={key}>
                                                            <td>{key + 1}</td>
                                                            <td>
                                                                {data.nombre + ' ' + data.apellido}
                                                            </td>
                                                            <td>
                                                                {data.recinto}
                                                            </td>
                                                            <td>
                                                                {data.direccion}
                                                            </td>
                                                            <td>
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

export default withRouter(IndexActaMesa);

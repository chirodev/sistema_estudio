import React, { Component } from 'react';
import {withRouter, Link} from 'react-router-dom';
import axios from 'axios';

class IndexCliente extends Component {
    constructor(props) {
        super(props);
        this.state = {
            data: [],
        }
    }
    componentDidMount() {
        this.get_data();
    }
    get_data() {
        axios.get('/cliente/index').then(
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
                        <div>Cliente</div>
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
                                        <Link to='/sistema_eventos/cliente/create' className="btn btn-sm btn-outline-primary">
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
                                                    <th>Ci</th>
                                                    <th>Nombre</th>
                                                    <th>Telefono</th>
                                                    <th>Genero</th>
                                                    <th>Email</th>
                                                    <th>Password</th>
                                                    <th>Perfil 1</th>
                                                    <th>Perfil 2</th>
                                                    <th>Perfil 3</th>
                                                    <th>Opcion</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                {this.state.data.map(
                                                    (data, key) =>(
                                                        <tr key={key}>
                                                            <td>{key + 1}</td>
                                                            <td>
                                                                {data.ci + ' ' + data.ci}
                                                            </td>
                                                            <td>
                                                                {data.nombre + ' ' + data.apellido}
                                                            </td>
                                                            <td>
                                                                {data.telefono == null ? '' : data.telefono}
                                                            </td>
                                                            <td>
                                                                {data.telefono == null ? '' : data.telefono}
                                                            </td>
                                                            
                                                            <td>
                                                                {(data.genero == 'N')?'Ninguno':(data.genero == 'F')?'Femenino':'Masculino'}
                                                            </td>
                                                            <td>
                                                                {data.email == null ? '' : data.email}
                                                            </td> <td>
                                                                {data.password == null ? '' : data.password}
                                                            </td>
                                                            <td>
                                                                {(data.imagenuno == null || data.imagenuno == '')?
                                                                    <img alt="image" src="/img/default.png" 
                                                                        className="rounded-circle" width="40" data-toggle="title" title="Wildan Ahdian" />:
                                                                    <img alt="image" src={data.imagenuno} 
                                                                        className="rounded-circle" width="40" data-toggle="title" title="Wildan Ahdian" />
                                                                }
                                                            </td>
                                                            <td>
                                                                {(data.imagendos == null || data.imagendos == '')?
                                                                    <img alt="image" src="/img/default.png" 
                                                                        className="rounded-circle" width="40" data-toggle="title" title="Wildan Ahdian" />:
                                                                    <img alt="image" src={data.imagendos} 
                                                                        className="rounded-circle" width="40" data-toggle="title" title="Wildan Ahdian" />
                                                                }
                                                            </td>
                                                            <td>
                                                                {(data.imagentres == null || data.imagentres == '')?
                                                                    <img alt="image" src="/img/default.png" 
                                                                        className="rounded-circle" width="40" data-toggle="title" title="Wildan Ahdian" />:
                                                                    <img alt="image" src={data.imagentres} 
                                                                        className="rounded-circle" width="40" data-toggle="title" title="Wildan Ahdian" />
                                                                }
                                                            </td>
                                                            
                                                           
                                                           
                                                            
                                                            <td>
                                                                <Link to={'/eleccion_electoral/cliente/edit/' + data.id} 
                                                                    className="btn btn-xs btn-action btn-primary fa fa-edit">
                                                                    
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

export default withRouter(IndexCliente);

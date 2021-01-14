
import React, { Component } from 'react';
import {withRouter, Link} from 'react-router-dom';
import axios from 'axios';

class IndexActa extends Component {
    constructor(props) {
        super(props);
        this.state = {
            data: [],
        }
    }
    componentDidMount() {
        axios.get('/inicio/acta/get_acta').then(
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
    onshow(data) {
        var url = '/inicio/acta/show/' + data.id;
        this.props.history.push(url);
    }
    render() {
        return (
            <div className="main-content">
                <section className="section">
                    <h1 className="section-header">
                        <div>Acta</div>
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
                                        <Link to='/inicio/acta/create' className="btn btn-sm btn-outline-primary">
                                            Nuevo
                                        </Link>
                                    </h4>
                                </div>
                                <div className="card-body">
                                    <div className="table-responsive">
                                        <table className="table table-striped">
                                            <thead>
                                                <tr>
                                                    <th>#</th>
                                                    <th>Notario</th>
                                                    <th>Descripcion</th>
                                                    <th>Total Voto</th>
                                                    <th>QR</th>
                                                    <th>Opcion</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                {this.state.data.map(
                                                    (data, key) => (
                                                        <tr key={key}>
                                                            <td>{key + 1}</td>
                                                            <td>{data.persona + ' ' + data.apellido}</td>
                                                            <td>{data.descripcion}</td>
                                                            <td>{data.totalvoto}</td><td>
                                                                {(data.query == null)?
                                                                    <img alt="image" src="/img/default.png" 
                                                                        className="rounded-circle" width="35" data-toggle="title" title="Wildan Ahdian" />:
                                                                    <img alt="image" src={`/img/qr/${data.query}`} 
                                                                        className="rounded-circle" width="35" data-toggle="title" title="Wildan Ahdian" />
                                                                }
                                                            </td>
                                                            <td>
                                                                <a onClick={this.onshow.bind(this, data)} className="btn btn-action btn-secondary">
                                                                    Detail
                                                                </a>
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

export default withRouter(IndexActa);

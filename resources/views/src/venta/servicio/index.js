
import React, { Component } from 'react';
import {withRouter} from 'react-router-dom';

export default class IndexServicio extends Component {

    render() {
        return (
            <div className="main-content">
                <section className="section">
                    <h1 className="section-header">
                        <div>Servicio</div>
                        <a href="#" className="btn btn-sm btn-outline-primary float-right">
                            Mi Empresa
                        </a>
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
                                        <a href="#" className="btn btn-sm btn-outline-primary">
                                            Nuevo
                                        </a>
                                    </h4>
                                </div>
                                <div className="card-body">
                                    <div className="table-responsive">
                                        <table className="table table-striped">
                                            <thead>
                                                <tr>
                                                    <th className="text-center">
                                                        <div className="custom-checkbox custom-control">
                                                        <input type="checkbox" data-checkboxes="mygroup" data-checkbox-role="dad" 
                                                            className="custom-control-input" id="checkbox-all" />
                                                        <label htmlFor="checkbox-all" className="custom-control-label"></label>
                                                        </div>
                                                    </th>
                                                    <th>Task Name</th>
                                                    <th>Progress</th>
                                                    <th>Members</th>
                                                    <th>Due Date</th>
                                                    <th>Status</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td style={{width: 40}}>
                                                        <div className="custom-checkbox custom-control">
                                                            <input type="checkbox" data-checkboxes="mygroup" 
                                                                className="custom-control-input" id="checkbox-1" />
                                                            <label htmlFor="checkbox-1" className="custom-control-label"></label>
                                                        </div>
                                                    </td>
                                                    <td>Create a mobile app</td>
                                                    <td className="align-middle">
                                                        <div className="progress" style={{height: 4}} data-toggle="tooltip" title="100%">
                                                            <div className="progress-bar bg-success" style={{width: '100%'}}></div>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <img alt="image" src="/dist/img/avatar/avatar-5.jpeg" 
                                                            className="rounded-circle" width="35" data-toggle="title" title="Wildan Ahdian" />
                                                    </td>
                                                    <td>2018-01-20</td>
                                                    <td><div className="badge badge-success">Completed</div></td>
                                                    <td><a href="#" className="btn btn-action btn-secondary">Detail</a></td>
                                                </tr>
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

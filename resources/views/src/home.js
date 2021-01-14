
import React, { Component } from 'react';
import {withRouter} from 'react-router-dom';

class Home extends Component {
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
        
    }
    render() {
        return (
            <div className="main-content">
                <section className="section">
                    <h1 className="section-header">
                        <div>Resultado General</div>
                    </h1>
                    <div className="row">   
                        <div className="col-12 col-md-12 col-lg-12">
                            <div className="card">
                                <div className="card-header">
                                    <h4>Resultado Electorales Pie Chart</h4>
                                </div>
                                <div className="card-body">
                                    <div className="col-12">
                                        <canvas id="myChart4"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div className="col-12 col-md-12 col-lg-12">
                            <div className="card">
                                <div className="card-header">
                                    <h4>Resultado Electorales Bar Chart</h4>
                                </div>
                                <div className="card-body">
                                    <div className="col-12">
                                        <canvas id="myChart2"></canvas>
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

export default withRouter(Home);

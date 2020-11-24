import React from 'react';
import ReactDOM from 'react-dom';


class Clock extends React.Component {
    constructor(props){
        super(props),
        this.state = {
            date: new Date()
        }
    }

    tick(){
        this.setState({date: new Date()})
    }

    componentDidMount() {
        this.tickID = setInterval(()=> this.tick(), 1000) //sets to current time
    }

    componentWillUnmount() {
        clearInterval(this.tickID);
        this.tickID = 0;
    }

    render() {
        return (
        <div>
            <h1>Clock</h1>
            <ul>
                <li>{this.state.date.getHours()}</li>
                <li>{this.state.date.getMinutes()}</li>
                <li>{this.state.date.getSeconds()}</li>
            </ul>
        </div>

        )
    }

}

export default Clock;
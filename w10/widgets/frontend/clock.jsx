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
    
    with_leading_zeros(method) {
        return (method < 10 ? '0' : '') + method;
    }
    // minutes_with_leading_zeros(date) {
    //     return (this.state.date.getMinutes() < 10 ? '0' : '') + date.getMinutes();
    // }
    // hours_with_leading_zeros(date) {
    //     return (this.state.date.getHours() < 10 ? '0' : '') + date.getHours();
    // }

    getDayOfTheWeek(num) {
        let weekday = new Array(7);
        weekday[0] = "Sun";
        weekday[1] = "Mon";
        weekday[2] = "Tues";
        weekday[3] = "Wed";
        weekday[4] = "Thu";
        weekday[5] = "Fri";
        weekday[6] = "Sat";
        return weekday[num];
    }
    
    render() {


        return (
        <div className="clock">
            <h1>Clock</h1>
              <h2>Time:</h2>
              <p>
                {this.with_leading_zeros(this.state.date.getHours())}:{this.with_leading_zeros(this.state.date.getMinutes())}:{this.with_leading_zeros(this.state.date.getSeconds())}
              </p>
              <h2>Date:</h2>
              <p>
                {this.getDayOfTheWeek(this.state.date.getDay())} {this.state.date.getMonth()}
              </p>
        </div>

        )
    }

}

export default Clock;
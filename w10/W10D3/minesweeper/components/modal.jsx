import React from 'react';

export default class Modal extends React.Component {
    constructor(props){
        super(props);
        this.state = {
            result: "hidden"
        }
    }

    changeResult(){
        let show;
        if (this.props.result === "won") {
            show = "wonShow"
        } else if (this.props.result === "lost") {
            show = "lostShow"
        } else {
            show = "hidden"
        }

        this.setState({result: show}, ()=> console.log("success"))
    }
    

    render (){
    
    console.log("modal", this.props.resetGame());

    


      return(
        <div className={`modal ${this.props.result}`}>
            <h1>You lost!</h1>
              <button onClick={this.props.resetGame}>Play Again</button>
        </div>);
    } 
}
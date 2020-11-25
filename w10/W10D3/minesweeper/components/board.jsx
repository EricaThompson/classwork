import React, { Component } from 'react';
import Tile from './tile';
import Row from './row'

export default class BoardComponent extends Component {
    constructor(props){
        super(props)
        console.log(this.props.board.grid)
        this.grid = this.props.board.grid
        this.state = {
            grid: this.grid,
            change: true
            // won: false,
            // lose: false
        }
        this.reRender = this.reRender.bind(this);
    }

    reRender(){
        this.setState({change: !this.state.change})
        // this.setState({won: this.props.board.won})
        // this.setState({lose: this.props.board.lose})
    }

    render() {



        const rows = this.grid.map((row, idx) => <Row reRender={this.props.reRender} board={this.state.grid} row={idx} updateGame={this.props.updateGame} key={idx} data={row}/>)
        // console.log("updateGame", this.props.updateGame, "board", this.props.board, "row", this.props.row)
       

        return (
            <div className='board'>
                {rows}
            </div>
        );
    }
}

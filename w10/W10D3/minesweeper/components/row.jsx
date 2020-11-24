import Tile from './tile'
import React, { Component } from 'react'
// [tile, tile, tile]
export default class Row extends Component {
    constructor(props) {
        super(props);
        this.state = {};
    }
    render() {
        //   console.log("updateGame", this.props.updateGame, "board", this.props.board, "row", this.props.row)

        const tiles = this.props.data.map((el, idx) => <Tile reRender={this.props.reRender} board={this.props.board} row={this.props.row} updateGame={this.props.updateGame} key={idx} col={idx} value={el} />)

        return (
        <div>
            {
            tiles
            } 
        </div>
        )
    }
}

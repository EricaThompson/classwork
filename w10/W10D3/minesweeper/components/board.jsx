import React, { Component } from 'react';
import Tile from './tile';
import Row from './row'

export default class BoardComponent extends Component {
    constructor(props){
        super(props)
        console.log(this.props.board.grid)
        this.grid = this.props.board.grid
        this.updateBoard = this.props.updateBoard
    }

    render() {
      // const tiles = this.grid.flat()
      // console.log(tiles)
      // const tilesmapped = tiles.map(el => el.bombed ? "b" : "n")
      // console.log(tilesmapped)
      // {tilesmapped.map((el, idx) => <li key={idx}>{el}</li>)}
      const rows = this.grid.map((row, idx) => <Row key={idx} data={row}/>)

        return (
            <div>
              {rows}
            </div>
        );
    }
}

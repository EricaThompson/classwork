import React, { Component } from 'react'
import { Board, Tile } from './minesweeper'
import BoardComponent from './Board'

export default class Game extends Component {
    constructor(props) {
        super(props);
        this.state = {
            board: new Board(8, 10)
        }
        this.updateGame = this.updateGame.bind(this);
    }

    updateGame(board, r, c){
        board[r][c].explore()
    }

    
    render() {
        return (
            <BoardComponent board={this.state.board} updateGame={this.updateGame} />
        )
    }
}

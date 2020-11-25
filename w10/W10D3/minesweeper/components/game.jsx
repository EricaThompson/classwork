import React, { Component } from 'react';
import { Board, Tile } from './minesweeper';
import BoardComponent from './Board';
import Modal from './modal';

export default class Game extends Component {
    constructor(props) {
        super(props);
        this.state = {
            board: new Board(8, 10),
            change: true,
            won: false,
            lost: false
        }
        this.updateGame = this.updateGame.bind(this);
    }

    updateGame(board, r, c){
        board[r][c].explore();
    }
    resetGame() {
        this.setState({board: new Board(8, 10)})
    }

    reRender(){
     
        // console.log(this.state)

        if (this.state.board.won()) {
          this.modal = <Modal resetGame={this.resetGame.bind(this)} result="won" />
        } else if (this.state.board.lost()) {
          this.modal = <Modal resetGame={this.resetGame.bind(this)} result="lost" />
        } else {
          this.modal = <Modal resetGame={this.resetGame.bind(this)} result="hidden" />;
        }
        this.setState({change: !this.state.change})
        this.setState({won: this.state.board.won()})
        this.setState({lost: this.state.board.lost()})
    }
    
    render() {



        return (
            <div>
                <BoardComponent board={this.state.board} reRender = {this.reRender.bind(this)} updateGame={this.updateGame} />
                {/* <Modal /> */}
                {this.modal}
            </div>
        )
    }
}

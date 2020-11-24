import React, { Component } from 'react'

export default class Tile extends Component {
    constructor(props) {
        super(props);
    }


    render() {

        let tile;
        // if (this.props.value.bombed) {
        //     tile = "b"
        // } else if (this.props.value.explored) {
        //     tile = "e"
        // } else if (this.props.value.flagged) {
        //     tile = "f"
        // } else {
        //     tile = "u"
        // }

        const update = () => {
          this.props.updateGame(this.props.board, this.props.row, this.props.col);
          this.props.reRender();
        }

        // console.log("updateGame", this.props.updateGame, "board", this.props.board, "row", this.props.row, "col",this.props.col)
        return <div onClick={() => update()}>{tile}</div>
    }
}

import React, { Component } from 'react'

export default class Tile extends Component {
  constructor(props) {
    super(props);
    this.state = {}
  }
  render() {
    let tile;
    if (this.props.value.bombed) {
      tile = "b"
    } else if (this.props.value.explored) {
      tile = "e"
    } else if (this.props.value.flagged) {
      tile = "f"
    } else {
      tile = "u"
    }
    return <button>{tile}</button>
  }
}

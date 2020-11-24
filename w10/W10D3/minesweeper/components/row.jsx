import Tile from './tile'
import React, { Component } from 'react'
// [tile, tile, tile]
export default class Row extends Component {
  constructor(props) {
    super(props);
    this.state = {};
  }
  render() {
    const tiles = this.props.data.map((el, idx) => <Tile key={idx} value={el} />)
    return (
      <div>
        {
          tiles
        } 
      </div>
    )
  }
}

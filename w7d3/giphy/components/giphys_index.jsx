import React, { Component } from 'react';

class GiphysIndex extends Component {
  render() {
    // debugger;
    if (this.props.giphys[0]) {
      return (
        <div>
          <img src={this.props.giphys[0].images.fixed_height.url} />
          <img src={this.props.giphys[1].images.fixed_height.url} />
        </div>
      );
    } else {
      return (<div></div>);
    }
  }
}

export default GiphysIndex;

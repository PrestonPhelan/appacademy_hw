import React, { Component } from 'react';

const giphyIndexItems = (giphys) => {
  if (giphys) {
    return giphys.map( (giphy, idx) => {
      return (
        <li key={idx}>
          <img src={giphy.images.fixed_height.url} />
        </li>
      );
    });
  } else {
    return (<div></div>);
  }
};

class GiphysIndex extends Component {
  render() {
    if (this.props.giphys[0]) {
      return (
        <div>
          <ul>
            {giphyIndexItems(this.props.giphys)}
          </ul>
        </div>
      );
    } else {
      return (<div></div>);
    }
  }
}

export default GiphysIndex;

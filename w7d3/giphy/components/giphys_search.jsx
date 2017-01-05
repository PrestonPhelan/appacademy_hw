import React, { Component } from 'react';

import GiphysIndex from './giphys_index';

class GiphysSearch extends React.Component {
  constructor(props) {
    super(props);
    this.state = { searchTerm: "golden retriever" };

    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  componentDidMount() {
    this.props.fetchSearchGiphys(this.state.searchTerm);
  }

  handleChange(e) {
    this.setState( { searchTerm: e.target.value } );
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.fetchSearchGiphys(this.state.searchTerm).then(
      this.setState( { searchTerm: "" } )
    );
  }

  render() {
    return (
      <div>
        <form onSubmit={this.handleSubmit}>
          <input value={this.state.searchTerm} onChange={this.handleChange}>
          </input>
          <button>
            Submit
          </button>
        </form>

        <GiphysIndex giphys={this.props.giphys}/>
      </div>
    );
  }
}

export default GiphysSearch;

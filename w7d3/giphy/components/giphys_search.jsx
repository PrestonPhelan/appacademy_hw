import React, { Component } from 'react';

import GiphysIndex from './giphys_index';

class GiphysSearch extends React.Component {
  constructor(props) {
    super(props);
    this.state = { searchTerm: "" };

    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
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
      <form>
        <input value={this.state.searchTerm} onChange={this.handleChange}>
        </input>
        <button>
          Submit
        </button>
      </form>
    );
  }
}

export default GiphysSearch;

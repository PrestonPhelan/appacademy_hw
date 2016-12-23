import React from 'react';

class Calculator extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      result: 0,
      num1: "",
      num2: ""
    };

    this.setNum1 = this.setNum1.bind(this);
    this.setNum2 = this.setNum2.bind(this);
  }

  setNum1(e) {
    if (e.length > 0) {
      this.state.num1 = parseInt(e);
    } else {
      this.state.num1 = 0;
    }
  }

  setNum2(e) {
    if (e.length > 0) {
      this.state.num2 = parseInt(e);
    } else {
      this.state.num2 = 0;
    }
  }

  render() {
    return (
      <div>
        <h1>{this.state.result}</h1>
        <br />
        <input onChange={this.setNum1}></input>
        <input onChange={this.setNum2}></input>
      </div>
    );
  }
}

export default Calculator;

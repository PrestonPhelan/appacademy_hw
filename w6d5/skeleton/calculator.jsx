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
    this.add = this.add.bind(this);
    this.subtract = this.subtract.bind(this);
    this.multiply = this.multiply.bind(this);
    this.divide = this.divide.bind(this);
    this.reset = this.reset.bind(this);
  }

  setNum1(e) {
    let field = e.currentTarget.value;
    if (field.length > 0) {
      this.setState({num1: parseInt(field)});
    } else {
      this.setState({num1: 0});
    }
  }

  setNum2(e) {
    let field = e.currentTarget.value;
    if (field.length > 0) {
      this.setState({num2: parseInt(field)});
    } else {
      this.setState({num2: 0});
    }
  }

  add(e) {
    e.preventDefault();
    this.setState({result: this.state.num1 + this.state.num2});
  }

  subtract(e) {
    e.preventDefault();
    this.setState({result: this.state.num1 - this.state.num2});
  }

  multiply(e) {
    e.preventDefault();
    this.setState({result: this.state.num1 * this.state.num2});
  }

  divide(e) {
    e.preventDefault();
    this.setState({result: this.state.num1 / this.state.num2});
  }

  reset(e) {
    e.preventDefault();
    this.setState({
      result: 0,
      num1: "",
      num2: ""
    });
  }

  render() {
    return (
      <div>
        <h1>{this.state.result}</h1>
        <br />
        <input onChange={this.setNum1} value={this.state.num1}></input>
        <input onChange={this.setNum2} value={this.state.num2}></input>
        <button onClick={this.reset}>Clear</button>
        <br />
        <button onClick={this.add}>+</button>
        <button onClick={this.subtract}>-</button>
        <button onClick={this.multiply}>*</button>
        <button onClick={this.divide}>/</button>
      </div>
    );
  }
}

export default Calculator;

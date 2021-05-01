// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract HelloWorld {
  string message;
  constructor() {
  message = "Hello World!";
  }

  function SayHello() public view returns (string memory) {
    return message;
  }

  function SetHello(string memory arg) public {
    message = arg;
  }
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract AdvertContract {
  string message;
  address payable owner;

  struct Ad {
    uint counter;
    uint funds;
  }

  mapping(uint => Ad) public ads;

 
  constructor() {
  owner = payable(msg.sender);
  message = "Hello World!";
  }

  receive() external payable {
     
  }

  function receiveEther() payable public {
    
  }

  function receiveNewAd(uint _id, uint _wei) payable public{
    ads[_id].funds += _wei;
  }

  function getFunds(uint _id) public view returns(uint){
    return ads[_id].funds;
  }

  function return1() private returns(uint){
    
  }
  function return2() private returns(uint){

  }

  function getBalance() public view returns(uint){
    return address(this).balance;
  }

  function withdrawEtherTo(address payable _to) public {
    _to.transfer(this.getBalance());
}
}
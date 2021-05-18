// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract AdvertContract {
  address payable owner;

  struct Ad {
    uint counter;
    uint funds;
  }

  mapping(uint => Ad) public ads;

 
  constructor() {
  owner = payable(msg.sender);
  }

  receive() external payable {
     
  }

  function receiveEther() payable public {
  }

  function augmentAds(uint _id, uint _wei) payable public{
    ads[_id].funds += _wei;
  }

  function getFunds(uint _id) public view returns(uint){
    return ads[_id].funds;
  }

  function getCounter(uint _id) public view returns(uint){
    return ads[_id].counter;
  }


  function showAd(uint _id) public {
    ads[_id].counter++;
    ads[_id].funds -= 20000;
  }



  function getBalance() public view returns(uint){
    return address(this).balance;
  }

  function withdrawEtherTo(address payable _to) public {
    _to.transfer(this.getBalance());
}
}
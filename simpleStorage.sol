pragma solidity ^0.6.0 ; //this defines the version  of solidity that we'll be using

contract Storage{
    uint256 public number ; //variable initialization 
    function store(uint256 _number) public{
        number = _number;
    }// this is a function that takes a variable of type unit256 and it allows for the value of number to be changed.

    function retrieve() public view returns(uint256){
        return(number);
    }// This function allws us to be able to read the value of number but not make any changes on it thus the "view"
}//defining a contract
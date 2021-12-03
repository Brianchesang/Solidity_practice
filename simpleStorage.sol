pragma solidity ^0.6.0 ; //this defines the version  of solidity that we'll be using

contract Storage{
    uint256 number ; //variable initialization 
    function store(uint256 _number) public{
        number = _number;
    }// this is a function that takes a variable of type unit256 

}//defining a contract
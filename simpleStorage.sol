// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0 ; //this defines the version  of solidity that we'll be using

contract simpleStorage{
    uint256 public number ; //variable initialization 

    struct people{
        string name;
        uint256 number;
    }// this is a struct datatype whichcan store more than onetype of variableas one group 
    mapping(string => uint256) public nameToNumber;//this is a map type which will take in a string and give us a number in return.

    //to store the data from the truct i'll use an array
     people [] public person;  // this is an array of type public and is called person


    function store(uint256 _number) public{
        number = _number;
    }// this is a function that takes a variable of type unit256 and it allows for the value of number to be changed.

    function retrieve() public view returns(uint256){
        return(number);
    }// This function allws us to be able to read the value of number but not make any changes on it thus the "view"

    function addPerson(string memory _name, uint256  _number) public{
        person.push(people({name : _name , number : _number}));
        nameToNumber[_name] = _number;

    }
}//defining a contract
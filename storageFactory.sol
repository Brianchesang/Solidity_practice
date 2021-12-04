// SPDX-License-Identifier: MIT
pragma solidity ^ 0.6.0;
import"./simpleStorage.sol"; 

contract storageFactory {
    simpleStorage[]public storageInstanceArray;
    function createsimpleStorageContract()public{
       
        simpleStorage[] storageInstance = new simpleStorage();
        storageInstanceArray.push(storageInstanceArray);
    }// this function allows us to use the simple storage contract in this new contract

    function sfStore( uint256 _storageInstance ,uint256 _simpleStorageNumber  )public {
        simpleStorage storageInstance = simpleStorage(address(storageInstanceArray[index(_strogeInstanceIndex)]));
    }

   
}


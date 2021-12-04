// SPDX-License-Identifier: MIT
pragma solidity ^ 0.6.0;
import"./simpleStorage.sol"; 

contract storageFactory {
    simpleStorage[]public storageInstanceArray;
    function createsimpleStorageContract()public{
       
        simpleStorage storageInstance = new simpleStorage();
        storageInstanceArray.push(storageInstance);
    }// this function allows us to use the simple storage contract in this new contract andstore the contracts created to a array.

    function sfStore( uint256 _storageInstanceIndex ,uint256 _simpleStorageNumber)public {
        simpleStorage storageInstance = simpleStorage(address(storageInstanceArray[_storageInstanceIndex]));
        storageInstance.store(_simpleStorageNumber);
    }

    function sfretrieve( uint256 _storageInstanceIndex)  public view returns (uint256){
        simpleStorage storageInstance = simpleStorage(address(storageInstanceArray[_storageInstanceIndex]));
        return storageInstance.retrieve();

    }

   
}


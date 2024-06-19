// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

//import "./SimpleStorage.sol";
import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory {
    //SimpleStorage public simpleStorage;
    SimpleStorage[] public listOfSimpleStorageContracts;

    function createSimpleStorageContract() public {
        SimpleStorage newSimplestorage = new SimpleStorage();
        listOfSimpleStorageContracts.push(newSimplestorage);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
        //Address, ABI
        SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
        mySimpleStorage.store(_newSimpleStorageNumber);
    } 

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256) {
        SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
        return mySimpleStorage.retrieve();
    }
}
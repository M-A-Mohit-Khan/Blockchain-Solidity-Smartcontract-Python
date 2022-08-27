// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

//Importing all the code from SimpleStorage
import "./SimpleStorage.sol";

//To inherite all the function from SimpleStorage write, contract StorageFactory is SimpleStorage
contract StorageFactory {
    //Creating array so that contracts can be checked or accessed
    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public {
        //Creating an object for SimpleStorage and new SimpleStorage from this function
        SimpleStorage simpleStorage = new SimpleStorage();
        //Pushing new contracts to array
        simpleStorageArray.push(simpleStorage);
    }
   //Accessing Store function from SimpleStorage and storing number in it
   function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public{
       //Address
       //ABI
       //It will access the address
       SimpleStorage simpleStorage=SimpleStorage(address(simpleStorageArray[_simpleStorageIndex]));
       //This will store the number in it
       simpleStorage.store(_simpleStorageNumber);
   }
   
   //Accessing Retrive function from SimpleStorage and get the favorite number
   function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){
       //Address
       //ABI
       //It will access the address
       SimpleStorage simpleStorage=SimpleStorage(address(simpleStorageArray[_simpleStorageIndex]));
       //This will return the favorite number 
       return simpleStorage.retrieve();
   }
    
    
}
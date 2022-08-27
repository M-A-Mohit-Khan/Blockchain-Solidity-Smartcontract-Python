// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract SimpleStorage{
    //Init variable favoritNumber
    //By default variables are internal, to access it use public before
    //Public variables are also view functions
    uint256 public favoriteNumber;


    //To create group of something, struct can be use
    struct People{
        uint256 favoriteNumber;
        string name;
    }

    //To create an array use, here dynamic
    People[] public people;

    //To map favoritenumber by name
    mapping(string=>uint256) public nameToFavoriteNumber;

    //To store a number into favoriteNumber variable, make a function using "function"
    //and use "store()" and pass a parameter also make it public
    function store(uint256 _favoriteNumber) public{
        favoriteNumber=_favoriteNumber;
    }

    //View and Pure are non-state changing functions
    //To write view function use, in the parameter section use the type of variable you want to return
    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }

    //To add People's name and favoritenumber, pass both parameters, 
    //to pass string have to declare type of memory because it has to 
    //append with the string, hence memory is temp and storage is parmanent
    function addPerson(string memory _name,uint256 _favoriteNumber) public{
        people.push(People(_favoriteNumber,_name));
        nameToFavoriteNumber[_name]=_favoriteNumber;
    }
}
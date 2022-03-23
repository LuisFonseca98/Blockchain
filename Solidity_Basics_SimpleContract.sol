// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract SimpleStorage{

    //this will get inicialized to 0!
    uint256 favoriteNumber;
    bool favoriteVool;

    struct People{
        uint256 favoriteNumber;
        string name;
    }

    People[] public people;
    mapping(string  => uint256) public nameToFavoriteNumber;
    
    function store(uint256 _favoriteNumber) public{
        favoriteNumber = _favoriteNumber;
    }

    //view and pure
    //view-> if we want to read the blockchain
    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }

    //memory(variable will deleted after execution): data will only be stored during the execution of the function
    //storage(variable will not be deleted): data will execute and store that variable
    function addPerson(string memory _name,uint256 _favoriteNumber)public {
        people.push(People(_favoriteNumber,_name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }


   
}

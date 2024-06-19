//SPDX-License-Identifier:MIT
pragma solidity ^0.8.19;

contract SimpleStorage {
    //Basic Type: boolean, uint, int, address, bytes
   /*bool hasFavoriteNumber = true;
     uint256 favoriteNumber = 88;
     int256 favoriteNumber = -125;
     string favoriteNumberText = "88";
   */
   uint256 myfavoriteNumber = 5;

   //uint256[] listOfFavoriteNumbers;
   struct Person{
    uint256 favoriteNumber;
    string name;
   }

   //Person public myFriend = Person(7, "Pat");
   //Person public pat = Person({favoriteNumber:16, name:"Pat"})
   Person[] public listOfPeople;

   mapping(string => uint256) public nameToFavoriteNumber;

   function store(uint256 _favoriteNumber) public {
    myfavoriteNumber = _favoriteNumber;
   }

   function retrieve() public view returns(uint256) {
    return myfavoriteNumber;
   }

   function addPerson(string memory _name, uint256 _favoriteNumber) public {
    listOfPeople.push(Person(_favoriteNumber, _name));
    nameToFavoriteNumber[_name] = _favoriteNumber;
   }
}
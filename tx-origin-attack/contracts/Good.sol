// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract Good{
    address public owner;

    constructor(){
        owner = msg.sender;
    }

    function setOwner(address newOwner) public {
        require(tx.origin == owner, "Not Owner");
        owner = newOwner;
    }
}
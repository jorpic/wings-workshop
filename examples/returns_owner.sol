pragma solidity ^0.4.4;
contract Test {
    address owner;

    function Test(){
        owner = msg.sender;
    }

    function getOwner() constant returns (address _owner)  {
        owner = 0x0;
        return owner;
    }
}

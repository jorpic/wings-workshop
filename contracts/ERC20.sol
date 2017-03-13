pragma solidity ^0.4.4;


contract ERC20 {

    function ERC20(address _tokenManager, uint _value) {
        tokenManager = _tokenManager;
        balance[_tokenManager] = _value;
    }

    string public name = "Token";
    string public symbol = "SPT";
    uint   public decimals = 18;

    address public tokenManager;
    mapping (address => uint256) balance;

    event Transfer(address indexed from, address indexed to, uint value);

    function transfer(address _to, uint _value) returns (bool success) {
        balance[msg.sender] -= _value;
        balance[_to] += _value;
        Transfer(msg.sender, _to, _value);
        return true;
    }


    function balanceOf(address _owner) constant returns (uint256) {
        return balance[_owner];
    }
}

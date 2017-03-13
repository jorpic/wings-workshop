pragma solidity ^0.4.4;

import 'contracts/ERC20.sol';

contract Crowdsale {

    ERC20 public token;
    address public owner;
    uint  public totalSupply = 0; // amount of tokens already sold

    event LogBuy(address indexed buyer, uint value);

    function setTokenAddress(address _token) {
        token = ERC20(_token);
        owner = msg.sender;
    }


    function() payable {
        buyTokens(msg.sender);
    }


    function buyTokens(address _buyer) public payable {
        if(msg.value == 0) throw;
        uint newTokens = msg.value * 1;
        token.transfer(_buyer, newTokens);
        LogBuy(_buyer, newTokens);
    }


    function withdrawEther() public returns (bool) {
      return owner.send(this.balance);
    }
}


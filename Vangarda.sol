pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Vangarda is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Vangarda(address _owner)  UpgradeableToken(_owner) {
    name = "Vangarda";
    symbol = "VAN";
    totalSupply = 100000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}
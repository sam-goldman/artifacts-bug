// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import './ParentHelloSphinx.sol';

contract HelloSphinx is ParentHelloSphinx {
    string public greeting;
    uint public number = 334;

    constructor(string memory _greeting, uint _number) {
        greeting = _greeting;
        number = _number;
    }

    function add(uint256 _myNum) public {
        number += _myNum;
    }
  }

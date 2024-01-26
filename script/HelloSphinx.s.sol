// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { HelloSphinx } from "../src/HelloSphinx.sol";
import { ParentHelloSphinx } from "../src/ParentHelloSphinx.sol";
import "@sphinx-labs/contracts/SphinxPlugin.sol";

contract HelloSphinxScript is Sphinx {
    function setUp() public virtual {
        sphinxConfig.owners = [0x4856e043a1F2CAA8aCEfd076328b4981Aca91000];
        sphinxConfig.orgId = "clksrkg1v0001l00815670lu8";
        sphinxConfig.threshold = 1;
        sphinxConfig.projectName = "My_First_Project";
        sphinxConfig.testnets = [
            Network.arbitrum_sepolia
        ];
    }

    function run() public sphinx {
        bytes32 salt = keccak256(abi.encode(sphinxConfig.owners));
        new HelloSphinx{ salt: salt }("Hi", 8);
        new ParentHelloSphinx{ salt: salt }();
    }
}

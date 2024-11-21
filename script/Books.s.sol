// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "forge-std/Script.sol";
import "../src/Books.sol";

contract DeployBooks is Script {

    function run() external {
        vm.startBroadcast();

        // Deploy the contract with initial values
        new Books("Programming Foundry", "JESHWANTH", 100);

        vm.stopBroadcast();
    }
}

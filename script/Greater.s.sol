// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {Counter} from "../src/Greater.sol";

contract CounterScript is Script {
    Counter public counter;

    function setUp() public {}

    function run() public {
        // Load deployer's private key from environment
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");

        vm.startBroadcast(deployerPrivateKey);

        counter = new Counter();

        vm.stopBroadcast();

        // console.log("Counter deployed at:", address(counter));
    }
}

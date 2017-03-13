pragma solidity ^0.4.6;
contract C {
    uint someVariable;
    uint[] data;

    function f() {
        uint[] memory x;
        x.push(2);
    }
}

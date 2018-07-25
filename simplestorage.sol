pragma solidity ^0.4.0;

contract SimpleStorage
{
    bytes storedData;

    function set(bytes x){
        storedData = x;
    }

    function get() constant returns (bytes) {
        return storedData;
    }
}

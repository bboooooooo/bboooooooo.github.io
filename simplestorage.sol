pragma solidity ^0.4.18;

interface JiInHwanCoin {
    function Write(address);
}

contract SimpleStorage
{
    string storedData;

    function set(string x, address _Address){
        storedData = x;
        JiInHwanCoin(_Address).Write(msg.sender);
    }

    function get() constant returns (string) {
        return storedData;
    }
}





/*contract SimpleStorage
{
    string storedData;

    function set(string x){
        storedData = x;
    }

    function get() constant returns (string) {
        return storedData;
    }
}

bytes storedData;

function set(bytes x){
    storedData = x;
}

function get() constant returns (bytes) {
    return storedData;
}
*/

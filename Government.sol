pragma solidity 0.8.0;

// to deploy use this different address (this is an external contract trial)

contract Government {
// struct is object in JavaScript
    struct Transaction {
        address from;
        address to;
        uint amount;
        uint txId;
    }
    
    Transaction[] transactionLog;
// external function will not allow government to "addTransaction", only other contracts can use function "addTransaction"   
    function addTransaction(address _from, address _to, uint _amount) external {
        transactionLog.push(Transaction(_from, _to, _amount, transactionLog.length));
    }
    function getTransaction(uint _index) public view returns(address, address, uint){
        return(transactionLog[_index].from, transactionLog[_index].to, transactionLog[_index].amount);
    }
}

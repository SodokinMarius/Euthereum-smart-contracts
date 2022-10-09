pragma solidity 0.8.7;

contract mappingtest{


    //Mapping est un peu comme les tableaux mais clé=>valeur : Ils consomment moins en Gas
    mapping(address=>uint) balance;


function getBalance() public view returns(uint)
{
    
    return balance[msg.sender];
}

    receive() external payable
    {
        balance[msg.sender]=msg.value;
    }
}
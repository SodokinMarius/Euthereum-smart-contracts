pragma solidity 0.8.17;


contract ether_sending{

    address last_sender;
    uint  balance;


function getLastSender() public view returns(address)
{
    return last_sender;
}


    function setAdress(address _adress) public {
        last_sender=_adress;
    }

function getBalance() public view returns(uint)
{
    return balance;
}


    receive() external payable{
        last_sender=msg.sender;

        balance=balance+msg.value;
    }

}
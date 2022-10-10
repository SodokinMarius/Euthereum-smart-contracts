pragma solidity 0.8.17;


contract simpleWallet {

    struct wallet {
       uint  balance;
       uint numPayments;

    } 

    mapping(address=>wallet) Wallet;


function getTotalBalance() public view returns(uint)
{
    return address(this).balance;    //Return the total balance/amount on smart contract
}


function getBalance() public view returns(uint)
{
    return  Wallet[msg.sender].balance;  //Balance in the wallet
}


receive() external payable {
    Wallet[msg.sender].balance+=msg.value;  //the transfered amount is added to wallet
    Wallet[msg.sender].numPayments+=1;
}

function getNumPayements() public view returns(uint)
{
    return Wallet[msg.sender].numPayments;
}

function withDrawAllAmount(address payable destination) public {
    uint amountToWithDraw=Wallet[msg.sender].balance;  // Retrieve all amount on the wallet
    Wallet[msg.sender].balance=0;                       //Set the wallet balance to zero
    destination.transfer(amountToWithDraw);   //Transfer the retrieved aount to adress
}

}
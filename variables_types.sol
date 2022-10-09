pragma solidity 0.8.7;

/// @title A title that should describe the contract/interface
/// @author The name of the author
/// @notice Explain to an end user what this does
/// @dev Explain to a developer any extra details

contract test {
    uint number;

    bool myBool;

    string myword;
    address myAdress=0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB;
//View  signifie que la donnée n'ira pas dans la blockchain mais juste retourner au user
    function getNumber()  public view returns(uint)
    {
            return number;
            
    }

    function setNumber(uint newNumber) public {
        number=newNumber;
    } 


    function getBool() public view returns(bool)
    {
        return myBool;
    }


    function setBool(bool _myBool) public {
        myBool=_myBool;
    }


    function getAdress() public view returns(address)
    {
        return myAdress;
    }

    function setAdress(address _adress) public {
        myAdress=_adress;
    }


//Obligatoire de faire  succeder des string de 'memory' lorsqu'on manipule ces types
    function getWord() public view returns(string memory)
    {
        return myword;
    }

    function setWord(string  memory _word) public {
       myword=_word;
    }

}
pragma  solidity 0.8.7;

/// @title A title that should describe the contract/interface
/// @author The name of the author
/// @notice Explain to an end user what this does
/// @dev Explain to a developer any extra details

contract test {
    uint number;


//View  signifie que la donnée n'ira pas dans la blockchain mais juste retourner au user
    function getNumber()  public view return(uint)
    {
            return number;
    }

    function setNumber(uint newNumber) public {
        number=newNumber;
    } 
}
pragma solidity 0.8.7;

contract Array{
    uint[] nombres;

    function pushValue(uint _value) public 
    {
            nombres.push(_value);
    }

    function deleteValue(uint _index) public 
    {
        delete nombres[_index];
    }

    function updateValue(uint new_value,uint _index) public 
    {
        nombres[_index]=new_value;
    }

    function getValue(uint _indix) public view returns(uint)
    {
        return nombres[_indix];
    }

    function popValue() public 
    {
        delete nombres[nombres.length-1];        
    }

    function doubleNombre() public view returns(uint[] memory)
    {

        uint count=nombres.length;
        uint[] memory doubleNumber= new uint[](count);

        for(uint i=0;i<count;i++)
        {
            doubleNumber[i]=nombres[i]*2;
        }
        return doubleNumber;
    }


    function makeProduct(uint[] memory table) public view returns(uint)
    {
        uint product=1;
        for (uint i=0;i<table.length;i++)
        {
            product*=table[i];
        }

        return product;
    }

}
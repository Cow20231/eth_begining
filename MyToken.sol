// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.0 <0.9.0;
contract MyToken  { 
string public name ;
string public symbol ;
mapping (address => uint256) public balance ;
uint256 public total_Supply ;
 constructor (string memory _name , string memory _symbol  , uint256 initial_supply)  {
     name = _name ;
     symbol = _symbol ;
     balance[msg.sender] += initial_supply ;
     total_Supply += initial_supply ;

}
    function mint(address _address , uint256 _amount) public {
        balance[_address] += _amount ;
        total_Supply += _amount ;
    }

    function burn (address _address , uint256 _amount) public   {
        require(balance[_address] > _amount , "balance is less then the amount which is call for burn " );
        balance[_address] -= _amount ;
        total_Supply -= _amount ;
    }
}

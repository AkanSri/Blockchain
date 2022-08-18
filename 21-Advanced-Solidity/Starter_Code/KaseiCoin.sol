pragma solidity ^0.5.0;

//  Import the following contracts from the OpenZeppelin library:
//    * `ERC20`
//    * `ERC20Detailed`
//    * `ERC20Mintable`
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Detailed.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Mintable.sol";

// Create a constructor for the KaseiCoin contract and have the contract inherit the libraries that you imported from OpenZeppelin.
contract KaseiCoin is ERC20, ERC20Detailed, ERC20Mintable {
    //Constructor with the following parameters: name, symbol, and initial_supply.
    constructor(
        string memory name,
        string memory symbol,
        uint initial_supply
    )
    //Add a call to the constructor of the ERC20Detailed contract, passing the parameters name, symbol, and 18 for the decimals parameter
    ERC20Detailed(name, symbol, 18) public {}
}
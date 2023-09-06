pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";

contract BlockApeScissorsToken is ERC20 {
    using SafeMath for uint256;

    constructor(
    ) ERC20("Arcas", "ARCAS") {

        _mint(msg.sender, 100_000_000 * 10**decimals());
    }

}



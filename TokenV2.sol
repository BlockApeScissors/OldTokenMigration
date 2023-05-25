pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";

contract BlockApeScissorsToken is ERC20 {
    using SafeMath for uint256;

    address private _owner;
    address private _marketingTaxWallet;
    address private _lpTaxWallet;
    uint8 private _marketingTaxPercentage;
    uint8 private _lpTaxPercentage;
    bool private _taxEnabled;
    bool private _taxRemoved;
    mapping(address => bool) private _taxWhitelist;

    constructor(
        address marketingTaxWallet,
        address lpTaxWallet,
        uint8 marketingTaxPercentage,
        uint8 lpTaxPercentage
    ) ERC20("Block Ape Scissors", "BAS") {
        _owner = msg.sender;
        _marketingTaxWallet = marketingTaxWallet;
        _lpTaxWallet = lpTaxWallet;
        _marketingTaxPercentage = marketingTaxPercentage;
        _lpTaxPercentage = lpTaxPercentage;
        _taxEnabled = true;
        _taxRemoved = false;

        _mint(msg.sender, 75_000_000 * 10**decimals());
    }

    modifier onlyOwner() {
        require(msg.sender == _owner, "Only the owner can call this function");
        _;
    }

    function setMarketingTaxWallet(address wallet) external onlyOwner {
        require(wallet != address(0), "Invalid tax wallet address");
        _marketingTaxWallet = wallet;
    }

    function setLpTaxWallet(address wallet) external onlyOwner {
        require(wallet != address(0), "Invalid tax wallet address");
        _lpTaxWallet = wallet;
    }

    function setMarketingTaxPercentage(uint8 percentage) external onlyOwner {
        require(percentage <= 5, "Invalid tax percentage");
        _marketingTaxPercentage = percentage;
    }

    function setLpTaxPercentage(uint8 percentage) external onlyOwner {
        require(percentage <= 5, "Invalid tax percentage");
        _lpTaxPercentage = percentage;
    }

    function enableTax() public onlyOwner {
        require(!_taxRemoved, "Tax is removed permanently");
        _taxEnabled = true;
    }

    function disableTax() public onlyOwner {
        require(_taxEnabled, "Tax is already disabled");
        _taxEnabled = false;
    }

    function removeTax() public onlyOwner {
        require(!_taxRemoved, "Tax is already removed permanently");
        _taxEnabled = false;
        _taxRemoved = true;
    }

    function addToTaxWhitelist(address account) external onlyOwner {
        require(account != address(0), "Invalid account address");
        _taxWhitelist[account] = true;
    }

    function removeFromTaxWhitelist(address account) external onlyOwner {
        require(account != address(0), "Invalid account address");
        _taxWhitelist[account] = false;
    }

    function decimals() public pure override returns (uint8) {
        return 18;
    }


    function _transfer(
        address sender,
        address recipient,
        uint256 amount
    ) internal override {
        require(sender != address(0), "Transfer from the zero address");
        require(recipient != address(0), "Transfer to the zero address");

        if (_taxEnabled && !_taxWhitelist[sender]) {
            uint256 marketingTaxAmount = (amount * _marketingTaxPercentage) / 200;
            uint256 lpTaxAmount = (amount * _lpTaxPercentage) / 200;
            uint256 taxedAmount = amount - marketingTaxAmount - lpTaxAmount;

            super._transfer(sender, _marketingTaxWallet, marketingTaxAmount);
            super._transfer(sender, _lpTaxWallet, lpTaxAmount);
            super._transfer(sender, recipient, taxedAmount);
        } else {
            super._transfer(sender, recipient, amount);
        }
    }
}



// SPDX-License-Identifier: MIT
pragma solidity >=0.6.6 <0.9.0;
import"@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract fundMe{
    mapping(address => uint256) public addressToAmountFunded;
    address public owner ;

    constructor()public{
        owner = msg.sender;
    }
    function fund() public payable {
        uint256 minimumUSD = 50*10**18;
        require(getConversionRAte(msg.value)>= minimumUSD);
        addressToAmountFunded[msg.sender] += msg.value;
    }// This function allows us to fund this contract.

    function getVersion() public view returns(uint256){
        AggregatorV3Interface priceFeed = AggregatorV3Interface(0x8A753747A1Fa494EC906cE90E9f37563A8AF630e);
        return priceFeed.version();
    }

    function getPrice() public view returns(uint256){
        AggregatorV3Interface priceFeed = AggregatorV3Interface(0x8A753747A1Fa494EC906cE90E9f37563A8AF630e);
        (,int256 answer,,,)  = priceFeed.latestRoundData();
        return uint256(answer*10000000000) ;
    }

    function getConversionRAte(uint256 ethAmount) public view returns(uint256){
        uint256 ethPrice = getPrice();
        uint256 ethAmountInUSD = (ethAmount * ethPrice )/ 100000000000000000;
        return ethAmountInUSD;
    }

    function withdraw() public payable {
        msg.sender.transfer(address(this).balance);
    }


}
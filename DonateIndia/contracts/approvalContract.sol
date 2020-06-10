pragma solidity >=0.4.21 <0.7.0;

contract approvalContract{
  address payable public sender;
  address payable public receiver;
  address payable public approver = 0x0b76400715d19291cdb8a311adf961f0b8c2db0c;

//   function ApprovalContract() public {
//     // tbd
//   }

    constructor() public{
        
    }

  function deposit(address payable _receiver) external payable {
    require(msg.value > 0);
    sender = msg.sender;
    receiver = _receiver;
  }

  function viewApprover() external pure returns(address) {
    return(approver);
  }

  function approve() external {
    require(msg.sender == approver);
    receiver.transfer(address(this).balance);
  }
    
}
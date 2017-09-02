pragma solidity ^0.4.15;

contract EthereumPOS {
    
    mapping(int256 => bool) activeSubscriptions;
    mapping(int256 => bool) paidOrders;
    mapping(address => bool) activeSubscription;
    mapping(int256 => string) startDate;
    mapping(int256 => int) startBlock;
    address public approvedSender;
    address private creator;
    
    struct Subscription {
        int256 orderId;
        string redId;
        address refAddress;
        bool active;
        int256 expiresBlock;
    }
    
    function EthereumPOS() {
        creator = msg.sender;
    }
    
    function changeCreator(address _new){
        require(msg.sender==creator);
        creator = _new;
    }
    
    function changeSender(address _new){
        require(msg.sender==creator);
        approvedSender = _new;
    }
    
    
    function subscriptionActive(int256 id) constant returns (bool) {
        
    }
    
    function subscriptionStartedDate(int256 id) constant returns (string){
        
    }
    
    function subscriptionStartedBlock(int256 id) constant returns (int){
        
    }
    
    function subscriptionExpiresDate(int256 id) constant returns (string){
        
    }
    
    function subscriptionExpiresBlock(int256 id) constant returns (int){
        
    }
    
    function subscriptionAddressActive(address wallet) constant returns (bool){
        
    }
    
    function orderPaid(int256 id) constant returns (bool){
        
    }
    
    function orderPaidBlock(int256 id) constant returns (int){
        
    }
    
    function approvedSender() constant returns (address){
        
    }
    
    
    
}

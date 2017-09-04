pragma solidity ^0.4.15;

contract EthereumPOS {
    
    mapping(int256 => Subscription) subscriptions;
    mapping(int256 => bool) activeSubscription;
    mapping(address => bool) activeSubscriptionAddress;
    mapping(int256 => bool) paidOrders;
    mapping(int256 => string) startDate;
    mapping(int256 => int) startBlock;
    
    address public approvedSender;
    address private creator;
    
    event NewSubscription(int256 id);
    event UpdateSubscription(int256 id);
    event NewOrder(int256 id, int256 amount, string refId, address refAddress);
    
    struct Subscription {
        int256 orderId;
        string redId;
        address refAddress;
        bool active;
        int256 expiresBlock;
        string startDate;
        int256 startBlock;
    }
    
    struct Order {
        int256 orderId;
        int256 amount;
        string redId;
        address refAddress;
    }
    
    function CreateSubscription(int256 orderId, string refId, address refAddress, bool active, string[] infoArray) {
        require(msg.sender==approvedSender);
        activeSubscription[orderId] = active;
        activeSubscriptionAddress[refAddress] = active;
        NewSubscription(orderId);
    }
    
    function GetSubscription(int256 orderId) internal returns (Subscription) {
        return subscriptions[orderId];
    }
    
    function EthereumPOS() {
        creator = msg.sender;
        approvedSender = 0x21C7CCB4676161D313632CB0B53fbC277332E961;
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
        return GetSubscription(id).active;
    }
    
    function subscriptionStartedDate(int256 id) constant returns (string){
        return GetSubscription(id).startDate;
    }
    
    function subscriptionStartedBlock(int256 id) constant returns (int){
        return GetSubscription(id).startBlock;
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

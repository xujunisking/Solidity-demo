// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.26;

contract Owner {

    struct Identity {
        address addr;
        string name;
    }

    enum State {
        HasOwner,
        NoOwner
    }

    // 事件
    event OwnerSet(address indexed oldOwnerAddr, address indexed newOwnerAddr);
    event OwnerRemoved(address indexed oldOwnerAddr);

    modifier isOwner() {
        require(msg.sender == owner.addr, "Caller is not owner");
        _;
    }

    // 状态变量
    Identity private owner;
    State private state;

    // 构造函数
    constructor(string memory name) {
        owner.addr = msg.sender;
        owner.name = name;
        state = State.HasOwner;
        emit OwnerSet(address(0), owner.addr);
    }

    // 普通函数
    function changeOwner(address addr, string calldata name) public isOwner {
        owner.addr = msg.sender;
        owner.name = name;
        emit OwnerSet(owner.addr, addr);
    }

    // 普通函数
    function removeOwner() public isOwner {
        emit OwnerRemoved(owner.addr);
        delete owner;
        state = State.NoOwner;
    }

    // 普通函数
    function getOwner() external view returns (address, string memory) {
        return (owner.addr, owner.name);
    }

    // 普通函数
    function getState() external view returns (State) {
        return state;
    }
}
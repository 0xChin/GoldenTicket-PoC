// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

/// @title The Golden Ticket Attacker
/// @author https://twitter.com/AlanRacciatti
contract GoldenTicketAttacker {
    function getRaffleInput(uint256 _blockNumber, uint256 _timestamp)
        external
        view
        returns (uint256 _guess)
    {
        _guess = uint256(
            keccak256(abi.encodePacked(blockhash(_blockNumber), _timestamp))
        );
    }
}

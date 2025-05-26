// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract YesNoVote {
    address public owner;
    uint256 public yesVotes;
    uint256 public noVotes;
    mapping(address => bool) public hasVoted;

    constructor() {
        owner = msg.sender;
    }

    function voteYes() public {
        require(!hasVoted[msg.sender], "You have already voted");
        yesVotes += 1;
        hasVoted[msg.sender] = true;
    }

    function voteNo() public {
        require(!hasVoted[msg.sender], "You have already voted");
        noVotes += 1;
        hasVoted[msg.sender] = true;
    }

    function resetVotes() public {
        require(msg.sender == owner, "Only owner can reset");
        yesVotes = 0;
        noVotes = 0;

        // Note: hasVoted can't be cleared for all users due to gas limits.
        // Deploy a fresh contract for a new poll.
    }

    function getResults() public view returns (uint256 yes, uint256 no) {
        return (yesVotes, noVotes);
    }
}

pragma solidity ^0.5.0;


contract ProofOfExistence1 {
  bytes32 public proof;

  function notarize(string memory document) public {
    proof = proofFor(document);
  }

  function proofFor(string memory document) public pure returns (bytes32) {
    return sha256(abi.encodePacked(document));
  }
}

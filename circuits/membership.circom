// Merkle Membership Circuit for Zylith
// Proves knowledge of a commitment in the Merkle tree

pragma circom 2.1.0;

include "./node_modules/circomlib/circuits/poseidon.circom";
include "./lib/merkleTree.circom";


template Membership(depth) {
    // Public inputs
    signal input root;
    signal input commitment;
    
    // Private inputs
    signal input secret;
    signal input nullifier;
    signal input amount;
    signal input pathElements[depth];
    signal input pathIndices[depth];
    
    // Verify commitment generation: Mask(Poseidon(Poseidon(secret, nullifier), amount))
    // NOTE: Cairo contract does NOT mask intermediate - matches zylith/src/privacy/commitment.cairo
    component poseidon1 = Poseidon(2);
    poseidon1.inputs[0] <== secret;
    poseidon1.inputs[1] <== nullifier;

    // NO intermediate mask - Cairo contract uses full u384 value directly
    component poseidon2 = Poseidon(2);
    poseidon2.inputs[0] <== poseidon1.out;
    poseidon2.inputs[1] <== amount;

    // Only mask the final result
    component mask2 = Mask250();
    mask2.in <== poseidon2.out;
    
    // Verify commitment matches
    mask2.out === commitment;
    
    // Verify Merkle membership
    component merkleTree = MerkleTreeChecker(depth);
    merkleTree.leaf <== commitment;
    merkleTree.root <== root;
    
    for (var i = 0; i < depth; i++) {
        merkleTree.pathElements[i] <== pathElements[i];
        merkleTree.pathIndices[i] <== pathIndices[i];
    }
}

// Depth = 25 to match Cairo contract (TREE_DEPTH = 25)
component main {public [root, commitment]} = Membership(25);

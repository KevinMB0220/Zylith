# Deployment Issues and Troubleshooting

## Class Hash Mismatch Error

### Problem
When attempting to redeploy a contract that was previously declared by a different account, you may encounter the following error:

```
Mismatch compiled class hash for class with hash 0x...
Actual: 0x...
Expected: 0x...
```

### Cause
This error occurs when:
1. The contract was previously declared by a different account/wallet
2. The same account is trying to redeclare the contract
3. Starknet detects a mismatch between the compiled class hash and the one stored on-chain

### Solutions

#### Option 1: Use the Original Declaring Account
If you have access to the account that originally declared the contract, use that account to redeploy.

#### Option 2: Deploy New Instance with Existing Class Hash
If the contract code hasn't changed, you can deploy a new instance using the existing class hash:

```bash
# Get the existing class hash from CONTRACT_ADDRESS.md or from the error message
EXISTING_CLASS_HASH="0x..."

# Deploy using the existing class hash
sncast --profile sepolia deploy \
    --class-hash "$EXISTING_CLASS_HASH" \
    --constructor-calldata \
        <owner_address> \
        <membership_verifier_address> \
        <swap_verifier_address> \
        <withdraw_verifier_address> \
        <lp_verifier_address>
```

#### Option 3: Wait for Class Hash to Expire (Not Recommended)
In some cases, you may need to wait, but this is generally not a practical solution.

### Current Deployment Status

The contract is currently deployed on Sepolia with:
- **Contract Address**: `0x04b6a594dc9747caf1bd3d8933621366bbb7fbaefa1522174432611b577ae94d`
- **Class Hash**: `0xb06170a184703d5216e4b29e81003869f0b6d8507566158ba0169170dfbb3e`

See `CONTRACT_ADDRESS.md` for full deployment details.

### Notes
- The deployment script (`scripts/deploy.sh`) has been updated to automatically detect class hash mismatches and attempt to use existing class hashes from `CONTRACT_ADDRESS.md`
- If you need to deploy with a new class hash (code changed), you must use the original declaring account


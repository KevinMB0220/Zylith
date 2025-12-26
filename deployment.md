ryzen@xp:~/Desktop/dev/starknet-bounty/circuits/build/garaga/lp_verifier$ sncast --profile sepolia  declare --url https://api.cartridge.gg/x/starknet/sepolia  --contract-name Groth16VerifierBN254
[WARNING] RPC node with the url https://api.cartridge.gg/x/starknet/sepolia uses incompatible version 0.9.0. Expected version: 0.10.0
   Compiling lp_verifier v0.1.0 (/home/ryzen/Desktop/dev/starknet-bounty/circuits/build/garaga/lp_verifier/Scarb.toml)
    Finished `release` profile target(s) in 0 seconds
[WARNING] Profile sepolia does not exist in scarb, using 'release' profile.
Success: Declaration completed

Class Hash:       0x28846c98149dd8554257031858d7e70583a556dc3dd6d09363655ff08f43db4
Transaction Hash: 0x3c14cc3c45af755901f2873d8c3e5d1600264b534b021f0750ee6587b6d8daf

To see declaration details, visit:
class: https://sepolia.starkscan.co/class/0x028846c98149dd8554257031858d7e70583a556dc3dd6d09363655ff08f43db4
transaction: https://sepolia.starkscan.co/tx/0x03c14cc3c45af755901f2873d8c3e5d1600264b534b021f0750ee6587b6d8daf

To deploy a contract of this class, run:
sncast --account account420 deploy --class-hash 0x28846c98149dd8554257031858d7e70583a556dc3dd6d09363655ff08f43db4 --url https://api.cartridge.gg/x/starknet/sepolia

ryzen@xp:~/Desktop/dev/starknet-bounty/circuits/build/garaga/lp_verifier$ sncast --account account420 deploy --class-hash 0x28846c98149dd8554257031858d7e70583a556dc3dd6d09363655ff08f43db4 --url https://api.cartridge.gg/x/starknet/sepolia
[WARNING] RPC node with the url https://api.cartridge.gg/x/starknet/sepolia uses incompatible version 0.9.0. Expected version: 0.10.0
Error: An error occurred in the called contract = ContractErrorData { revert_error: Message("Class with hash 0x28846c98149dd8554257031858d7e70583a556dc3dd6d09363655ff08f43db4 is not declared") }
ryzen@xp:~/Desktop/dev/starknet-bounty/circuits/build/garaga/lp_verifier$ sncast --account account420 deploy --class-hash 0x28846c98149dd8554257031858d7e70583a556dc3dd6d09363655ff08f43db4 --url https://api.cartridge.gg/x/starknet/sepolia
[WARNING] RPC node with the url https://api.cartridge.gg/x/starknet/sepolia uses incompatible version 0.9.0. Expected version: 0.10.0
Success: Deployment completed

Contract Address: 0x0202fa77f1158fce60dbb3d62b503dba0ce9f360003507f459d21cbed52c87d6
Transaction Hash: 0x06894c76806aaa7e99d0cecbf473ebb5bf174150397b657f86267be53770bbba

To see deployment details, visit:
contract: https://sepolia.starkscan.co/contract/0x0202fa77f1158fce60dbb3d62b503dba0ce9f360003507f459d21cbed52c87d6
transaction: https://sepolia.starkscan.co/tx/0x06894c76806aaa7e99d0cecbf473ebb5bf174150397b657f86267be53770bbba



ryzen@xp:~/Desktop/dev/starknet-bounty/circuits/build/garaga/membership_verifier$ sncast --profile sepolia  declare --url https://api.cartridge.gg/x/starknet/sepolia  --contract-name Groth16VerifierBN254
[WARNING] RPC node with the url https://api.cartridge.gg/x/starknet/sepolia uses incompatible version 0.9.0. Expected version: 0.10.0
   Compiling membership_verifier v0.1.0 (/home/ryzen/Desktop/dev/starknet-bounty/circuits/build/garaga/membership_verifier/Scarb.toml)
warn: this build runs in `release` profile, but uses non-default inlining strategy
changing the inlining strategy may significantly increase gas costs of calling entrypoints of the compiled contract
please make sure the compiler configuration in your manifest file is intended
see https://docs.swmansion.com/scarb/docs/reference/manifest.html#inlining-strategy for more info
    Finished `release` profile target(s) in 5 seconds
[WARNING] Profile sepolia does not exist in scarb, using 'release' profile.
Success: Declaration completed

Class Hash:       0x22d131697d55ce44510d04575e3633d90c3219963ab0c554c1deb5962fd91f5
Transaction Hash: 0x53528d47f3dc728578258eee90bc2953487c77e583cfb91eb9d3ff184baba97

To see declaration details, visit:
class: https://sepolia.starkscan.co/class/0x022d131697d55ce44510d04575e3633d90c3219963ab0c554c1deb5962fd91f5
transaction: https://sepolia.starkscan.co/tx/0x053528d47f3dc728578258eee90bc2953487c77e583cfb91eb9d3ff184baba97

To deploy a contract of this class, run:
sncast --account account420 deploy --class-hash 0x22d131697d55ce44510d04575e3633d90c3219963ab0c554c1deb5962fd91f5 --url https://api.cartridge.gg/x/starknet/sepolia

ryzen@xp:~/Desktop/dev/starknet-bounty/circuits/build/garaga/membership_verifier$ sncast --account account420 deploy --class-hash 0x22d131697d55ce44510d04575e3633d90c3219963ab0c554c1deb5962fd91f5 --url https://api.cartridge.gg/x/starknet/sepolia
[WARNING] RPC node with the url https://api.cartridge.gg/x/starknet/sepolia uses incompatible version 0.9.0. Expected version: 0.10.0
Error: An error occurred in the called contract = ContractErrorData { revert_error: Message("Class with hash 0x22d131697d55ce44510d04575e3633d90c3219963ab0c554c1deb5962fd91f5 is not declared") }
ryzen@xp:~/Desktop/dev/starknet-bounty/circuits/build/garaga/membership_verifier$ sncast --account account420 deploy --class-hash 0x22d131697d55ce44510d04575e3633d90c3219963ab0c554c1deb5962fd91f5 --url https://api.cartridge.gg/x/starknet/sepolia
[WARNING] RPC node with the url https://api.cartridge.gg/x/starknet/sepolia uses incompatible version 0.9.0. Expected version: 0.10.0
Success: Deployment completed

Contract Address: 0x011c0deb3618f2358dcba0dda14f43ef47f40b7be681d6708f554ce3d0ad5432
Transaction Hash: 0x061ff8f858a0d7e53af33e74e06d4ff471420ad3efba72e403feecc00a2f78cb

To see deployment details, visit:
contract: https://sepolia.starkscan.co/contract/0x011c0deb3618f2358dcba0dda14f43ef47f40b7be681d6708f554ce3d0ad5432
transaction: https://sepolia.starkscan.co/tx/0x061ff8f858a0d7e53af33e74e06d4ff471420ad3efba72e403feecc00a2f78cb





ryzen@xp:~/Desktop/dev/starknet-bounty/circuits/build/garaga/swap_verifier$ sncast --profile sepolia  declare --url https://api.cartridge.gg/x/starknet/sepolia  --contract-name Groth16VerifierBN254
[WARNING] RPC node with the url https://api.cartridge.gg/x/starknet/sepolia uses incompatible version 0.9.0. Expected version: 0.10.0
   Compiling swap_verifier v0.1.0 (/home/ryzen/Desktop/dev/starknet-bounty/circuits/build/garaga/swap_verifier/Scarb.toml)
warn: this build runs in `release` profile, but uses non-default inlining strategy
changing the inlining strategy may significantly increase gas costs of calling entrypoints of the compiled contract
please make sure the compiler configuration in your manifest file is intended
see https://docs.swmansion.com/scarb/docs/reference/manifest.html#inlining-strategy for more info
    Finished `release` profile target(s) in 5 seconds
[WARNING] Profile sepolia does not exist in scarb, using 'release' profile.
Success: Declaration completed

Class Hash:       0x34462d00f5d66aaf296078acb16f25c02950819166de03ad87694b2b6195f0
Transaction Hash: 0xda4a2e56547708f7220fc06c8223bbe40427b961f2781eaf9adc0c1a4d1399

To see declaration details, visit:
class: https://sepolia.starkscan.co/class/0x0034462d00f5d66aaf296078acb16f25c02950819166de03ad87694b2b6195f0
transaction: https://sepolia.starkscan.co/tx/0x00da4a2e56547708f7220fc06c8223bbe40427b961f2781eaf9adc0c1a4d1399

To deploy a contract of this class, run:
sncast --account account420 deploy --class-hash 0x34462d00f5d66aaf296078acb16f25c02950819166de03ad87694b2b6195f0 --url https://api.cartridge.gg/x/starknet/sepolia

ryzen@xp:~/Desktop/dev/starknet-bounty/circuits/build/garaga/swap_verifier$ sncast --account account420 deploy --class-hash 0x34462d00f5d66aaf296078acb16f25c02950819166de03ad87694b2b6195f0 --url https://api.cartridge.gg/x/starknet/sepolia
[WARNING] RPC node with the url https://api.cartridge.gg/x/starknet/sepolia uses incompatible version 0.9.0. Expected version: 0.10.0
Success: Deployment completed

Contract Address: 0x04e7dc3190830a31c626e88182630b1eb71f8f6c6f9562adb358697f4754093b
Transaction Hash: 0x02b1f26542752645e8eb1b6afee49b3e47de2c794562944e601221c12bb011e8

To see deployment details, visit:
contract: https://sepolia.starkscan.co/contract/0x04e7dc3190830a31c626e88182630b1eb71f8f6c6f9562adb358697f4754093b
transaction: https://sepolia.starkscan.co/tx/0x02b1f26542752645e8eb1b6afee49b3e47de2c794562944e601221c12bb011e8



ryzen@xp:~/Desktop/dev/starknet-bounty/circuits/build/garaga/withdraw_verifier$ sncast --profile sepolia  declare --url https://api.cartridge.gg/x/starknet/sepolia  --contract-name Groth16VerifierBN254
[WARNING] RPC node with the url https://api.cartridge.gg/x/starknet/sepolia uses incompatible version 0.9.0. Expected version: 0.10.0
   Compiling withdraw_verifier v0.1.0 (/home/ryzen/Desktop/dev/starknet-bounty/circuits/build/garaga/withdraw_verifier/Scarb.toml)
    Finished `release` profile target(s) in 0 seconds
[WARNING] Profile sepolia does not exist in scarb, using 'release' profile.
Success: Declaration completed

Class Hash:       0x408c525344ee42be8b648923aa8c871764049866228e5b3062eaecddf222467
Transaction Hash: 0x2c8cb467fa5af46163f42c0473f1fc28a802c11844829cb8276e1359056a028

To see declaration details, visit:
class: https://sepolia.starkscan.co/class/0x0408c525344ee42be8b648923aa8c871764049866228e5b3062eaecddf222467
transaction: https://sepolia.starkscan.co/tx/0x02c8cb467fa5af46163f42c0473f1fc28a802c11844829cb8276e1359056a028

To deploy a contract of this class, run:
sncast --account account420 deploy --class-hash 0x408c525344ee42be8b648923aa8c871764049866228e5b3062eaecddf222467 --url https://api.cartridge.gg/x/starknet/sepolia

ryzen@xp:~/Desktop/dev/starknet-bounty/circuits/build/garaga/withdraw_verifier$ sncast --account account420 deploy --class-hash 0x408c525344ee42be8b648923aa8c871764049866228e5b3062eaecddf222467 --url https://api.cartridge.gg/x/starknet/sepolia
[WARNING] RPC node with the url https://api.cartridge.gg/x/starknet/sepolia uses incompatible version 0.9.0. Expected version: 0.10.0
Error: An error occurred in the called contract = ContractErrorData { revert_error: Message("Class with hash 0x408c525344ee42be8b648923aa8c871764049866228e5b3062eaecddf222467 is not declared") }
ryzen@xp:~/Desktop/dev/starknet-bounty/circuits/build/garaga/withdraw_verifier$ sncast --account account420 deploy --class-hash 0x408c525344ee42be8b648923aa8c871764049866228e5b3062eaecddf222467 --url https://api.cartridge.gg/x/starknet/sepolia
[WARNING] RPC node with the url https://api.cartridge.gg/x/starknet/sepolia uses incompatible version 0.9.0. Expected version: 0.10.0
Success: Deployment completed

Contract Address: 0x04ade28020ebb5676a8a55219bba7f4ef175ae8f8f8189491193b1153e991330
Transaction Hash: 0x0615bbad07fc2673b092608da437173fc3c77bda463cebba616daa4e7f6f152e

To see deployment details, visit:
contract: https://sepolia.starkscan.co/contract/0x04ade28020ebb5676a8a55219bba7f4ef175ae8f8f8189491193b1153e991330
transaction: https://sepolia.starkscan.co/tx/0x0615bbad07fc2673b092608da437173fc3c77bda463cebba616daa4e7f6f152e


# Run the op-proposer in the background with the specified configuration

echo "== Running op-proposer script"
nohup ../build/op-proposer \
--poll-interval=12s --rpc.port=8520 --rollup-rpc=http://localhost:8517 \
--l2oo-address=0x0aB8F44cD4A9404b18FACCd1666B26d915800F16 \
--private-key=$GS_PROPOSER_PRIVATE_KEY \
--l1-eth-rpc=$L1_RPC_URL \
 > ./log/proposer.log &

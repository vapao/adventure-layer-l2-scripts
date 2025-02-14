# Run the op-node in the background with the specified configuration
nohup ../build/op-node \
 --l2=http://127.0.0.1:8531 --l2.jwt-secret=./jwt.txt  \
 --verifier.l1-confs=5 \
 --rollup.config=../config/rollup.json --rpc.addr=0.0.0.0 --rpc.port=8527  --rpc.enable-admin  \
 --l1=$L1_RPC_URL --l1.rpckind=alchemy  \
 --syncmode=consensus-layer \
 --p2p.no-discovery=true \
 --p2p.static=$P2P_STATIC \
 --p2p.listen.ip=0.0.0.0 \
 --p2p.listen.tcp=8506 \
 --p2p.sequencer.key=$GS_SEQUENCER_PRIVATE_KEY \
 > ./log/node.log &

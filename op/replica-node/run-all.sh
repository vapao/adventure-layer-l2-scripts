# Run all initialization scripts for the replica node
echo "== Running all scripts"
./start-op-geth.sh

sleep 5
./start-op-node.sh

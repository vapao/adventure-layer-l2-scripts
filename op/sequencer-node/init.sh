# Check if the `geth` binary does not exist in the `../build` directory
# If it does not exist, download, unzip, and make it executable
if [ ! -f "../build/geth" ]; then
  wget -L https://github.com/AdventureGoldDao/optimism/releases/download/v1.9.1/geth.zip
  unzip geth.zip -d ../build
  chmod +x ../build/geth
fi

# Check if the `op-node` binary does not exist in the `../build` directory
# If it does not exist, download, unzip, and make it executable
if [ ! -f "../build/op-node" ]; then
  wget -L https://github.com/AdventureGoldDao/optimism/releases/download/v1.9.1/op-node.zip
  unzip op-node.zip -d ../build
  chmod +x ../build/op-node
fi

# Check if the `op-proposer` binary does not exist in the `../build` directory
# If it does not exist, download, unzip, and make it executable
if [ ! -f "../build/op-proposer" ]; then
  wget -L https://github.com/AdventureGoldDao/optimism/releases/download/v1.9.1/op-proposer.zip
  unzip op-proposer.zip -d ../build
  chmod +x ../build/op-proposer
fi

# Check if the `op-batcher` binary does not exist in the `../build` directory
# If it does not exist, download, unzip, and make it executable
if [ ! -f "../build/op-batcher" ]; then
  wget -L https://github.com/AdventureGoldDao/optimism/releases/download/v1.9.1/op-batcher.zip
  unzip op-batcher.zip -d ../build
  chmod +x ../build/op-batcher
fi

# Remove old log files and databases, and create a new log directory
rm -rf ./log/* ./opnode_discovery_db ./opnode_peerstore_db ./datadir *.zip
mkdir log

# Initialize the `geth` node with the specified genesis file
../build/geth init --state.scheme=hash --datadir=./datadir ../config/genesis.json
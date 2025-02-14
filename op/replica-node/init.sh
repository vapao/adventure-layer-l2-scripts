# !/bin/bash

# Check if the geth binary does not exist in the build directory
if [ ! -f "../build/geth" ]; then
  # Download the geth binary from the specified URL
  wget -L https://github.com/AdventureGoldDao/optimism/releases/download/v1.9.1/geth.zip
  # Unzip the downloaded geth binary into the build directory
  unzip geth.zip -d ../build
  # Make the geth binary executable
  chmod +x ../build/geth
fi

# Check if the op-node binary does not exist in the build directory
if [ ! -f "../build/op-node" ]; then
  # Download the op-node binary from the specified URL
  wget -L https://github.com/AdventureGoldDao/optimism/releases/download/v1.9.1/op-node.zip
  # Unzip the downloaded op-node binary into the build directory
  unzip op-node.zip -d ../build
  # Make the op-node binary executable
  chmod +x ../build/op-node
fi

# Remove any existing log, database, and temporary files
rm -rf ./log ./opnode_discovery_db ./opnode_peerstore_db ./datadir opnode_p2p_priv.txt *.zip
# Create a new log directory
mkdir log
# Initialize the geth node with the specified genesis file and data directory
../build/geth init --state.scheme=hash --datadir=./datadir ../config/genesis.json
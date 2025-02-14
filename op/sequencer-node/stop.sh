# This script stops various processes related to the project by using the `pkill` command.
# The `-f` option is used to match against the full argument lists of running processes.

# Stop the `geth` process
pkill -f ../build/geth

# Stop the `op-node` process
pkill -f ../build/op-node

# Stop the `op-batcher` process
pkill -f ../build/op-batcher

# Stop the `op-proposer` process
pkill -f ../build/op-proposer

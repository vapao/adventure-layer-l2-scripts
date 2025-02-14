# Run the geth node in the background with the specified configuration
nohup  ../build/geth --config ./config.toml --verbosity=4 --nat=none \
> ./log/geth.log &

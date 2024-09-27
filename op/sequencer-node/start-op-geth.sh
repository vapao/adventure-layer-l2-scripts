echo "== Running op-geth script"
nohup ../build/geth --config ./config.toml --verbosity=4 --gcmode=archive --nat=none \
> ./log/geth.log &

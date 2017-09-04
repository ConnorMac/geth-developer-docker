# Docker geth developer node
Quick docker setup for a privatechain node that auto mines

Uses: https://github.com/amacneil/gethdev (Will be rolling my own for customization)

## Docker
`docker run --name=geth -p 127.0.0.1:8545:8545 connormac/geth-dev-node -d`

## Unlocking accounts
The easiest is to just unlock the coinbase account indefinetly. To unlock:

1. `docker exec -it geth /bin/sh`
2. `geth attach "/tmp/ethereum_dev_mode/geth.ipc"`
3. `web3.personal.unlockAccount(eth.coinbase, '', 0)`

FROM ethereum/client-go
MAINTAINER Connor Macdougall

COPY gethdev.js /usr/gethdev.js
CMD geth --shh -dev & gethdev --shh -rpc --rpccorsdomain '*' --rpcaddr '0.0.0.0' --ipcpath /tmp/ethereum_dev_mode/geth.ipc --datadir /tmp/ethereum_dev_mode/geth/chaindata js /usr/gethdev.js

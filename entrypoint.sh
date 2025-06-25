#!/bin/sh
set -e

# Create account if it doesn't exist
if [ ! -f /tmp/geth/keystore/account.key ]; then
  echo "Creating Ethereum account..."
  echo "password" > /tmp/geth/password.txt
  geth --datadir /tmp/geth account new --password /tmp/geth/password.txt
fi

if [ ! -d /tmp/geth/geth ]; then
  geth init /genesis.json --datadir /tmp/geth
fi

# Start Geth
exec geth --datadir /tmp/geth \
     --http \
     --http.addr 0.0.0.0 \
     --http.port 8545 \
     --http.api admin,debug,eth,miner,net,personal,txpool,web3 \
     --networkid 1337 \
     --ipcdisable \
     --nodiscover
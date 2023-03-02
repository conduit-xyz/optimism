#!/usr/bin/env sh
set -eu
NETWORK=devnetL1

GAS_BLOCK_LIMIT="${GAS_BLOCK_LIMIT:-0xE4E1C0}"
L2_BLOCK_TIME="${L2_BLOCK_TIME:-2}"
TIMESTAMP=$(date +%s | xargs printf '0x%x')
cat "devnetL1.json" | jq -r ".l1GenesisBlockTimestamp = \"$TIMESTAMP\"" | jq -r ".l2GenesisBlockGasLimit = \"$GAS_BLOCK_LIMIT\"" | jq -r ".l2BlockTime = $L2_BLOCK_TIME" > /tmp/bedrock-devnet-deploy-config.json

(
  op-node genesis devnet \
      --deploy-config /tmp/bedrock-devnet-deploy-config.json \
      --outfile.l1 /config/genesis-l1.json \
      --outfile.l2 /config/genesis-l2.json \
      --outfile.rollup /config/rollup.json
)

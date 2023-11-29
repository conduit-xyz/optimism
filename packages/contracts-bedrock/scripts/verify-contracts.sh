#!/bin/bash
set -e

script_dir=$(dirname "$0")

if [ -z "$1" ]; then
    echo "Error: Please provide the VERIFIER_URL."
    echo "Usage: ./verify-contracts.sh VERIFIER_URL"
    exit 1
fi

VERIFIER_URL="$1"

# Parse JSON and process each object
while read -r line; do
    contractAddress=$(echo "$line" | jq -r '.contractAddress')
    contractName=$(echo "$line" | jq -r '.contractName')
    proxied=$(echo "$line" | jq -r '.proxied')

    if [ "$proxied" = "true" ]; then
        lastChars=$(echo "$contractAddress" | rev | cut -c 1-4 | rev)
        baseImplementationString="0xc0D3C0d3C0d3C0D3c0d3C0d3c0D3C0d3c0d3XXXX"
        implementationAddress=${baseImplementationString/XXXX/$lastChars}
        forge verify-contract $contractAddress "Proxy" --verifier-url $VERIFIER_URL --verifier blockscout
        forge verify-contract $implementationAddress $contractName --verifier-url $VERIFIER_URL --verifier blockscout
    else
        forge verify-contract $contractAddress $contractName --verifier-url $VERIFIER_URL --verifier blockscout
    fi

done < <(jq -c '.[]' "$script_dir/predeploys.json")

# proxy admin
forge verify-contract "0xc0D3C0d3C0d3C0D3c0d3C0d3c0D3C0d3c0d30018" ProxyAdmin --verifier-url $VERIFIER_URL --verifier blockscout --compiler-version v0.8.15+commit.e14f2714

# todo EAS (0x4200000000000000000000000000000000000020) and schema registry (0x4200000000000000000000000000000000000021), and create2deployer. are proxied.

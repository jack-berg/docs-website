#!/bin/bash -e

# find ./src/content/docs/more-integrations/open-source-telemetry-integrations/opentelemetry \
found=false
find ./src/content/ \
 -type f \
 -name '*.mdx' \
 -exec bash -c 'if grep -q found found.txt; then echo {}; elif [[ {} == "./src/content//docs/infrastructure/microsoft-azure-integrations/azure-integrations-list/azure-vpn-gateway-integration.mdx" ]]; then echo "found" >> found.txt; fi;' \; \
 | xargs -L1 npx markdown-link-check --config $(dirname "$0")/markdown-link-check-config.json

#!/bin/bash -e

# find ./src/content/docs/more-integrations/open-source-telemetry-integrations/opentelemetry \
find ./src/content/ \
 -type f \
 -name '*.mdx' \
 -print0 | xargs -0 -n1 npx markdown-link-check --config $(dirname "$0")/markdown-link-check-config.json


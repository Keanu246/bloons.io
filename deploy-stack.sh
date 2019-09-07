#!/bin/bash

set -euo pipefail

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

aws cloudformation deploy \
  --region us-east-1 \
  --stack-name -bloons-io \
  --template-file "$DIR"/stack.yaml

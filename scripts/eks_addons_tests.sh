#!/usr/bin/env bash
source bash-functions.sh  # from orb-pipeline-events/bash-functions
set -eo pipefail

cluster_name=$1
export AWS_REGION=$(jq -er .aws_region "$cluster_name".auto.tfvars.json)

bats test/baseline/*.bats
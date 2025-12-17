#!/usr/bin/env bash

# output: INDEX NAME

niri msg --json outputs |
    jq -r '
  to_entries
  | sort_by(.value.logical.y, .value.logical.x)
  | to_entries
  | .[]
  | "\(.value.value.name)"
'


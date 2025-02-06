#!/bin/sh -l

env | while IFS= read -r line; do
  value=${line#*=}
  name=${line%%=*}
  echo "Exporting: $name"
  echo "$name=$value" >> $GITHUB_OUTPUT
done
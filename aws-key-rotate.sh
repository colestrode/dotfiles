#!/bin/bash
PROFILE=($(cat ~/.aws/credentials | awk 'NR>1{print $1}' RS=[ FS=] | tr ' ' '\n'))
for UPDATE in "${PROFILE[@]}"; do
        aws-rotate-key -y -profile $UPDATE
done

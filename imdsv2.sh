#!/bin/bash

# File with instance IDs
file="instances.txt"

# Read the file line by line
while IFS= read -r instance
do
  # Change to IMDSv2
  aws ec2 modify-instance-metadata-options --instance-id $instance --http-tokens required
done < "$file"

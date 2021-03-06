#!/bin/bash
export PATH=~/vendor/awscli/bin:$PATH

mkdir -p ~/.aws

cat >> ~/.aws/credentials << EOF
[default]
aws_access_key_id = $AWS_KEY
aws_secret_access_key = $AWS_SECRET_KEY
EOF

cat >> ~/.aws/config << EOF
[default]
region = $AWS_REGION
EOF

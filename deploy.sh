#!/usr/bin/env bash
set -euo pipefail

bucket_name="$(terraform output -raw s3_bucket_name)"
distribution_id="$(terraform output -raw cloudfront_distribution_id)"

aws s3 sync website/ "s3://${bucket_name}/" --delete
aws cloudfront create-invalidation \
  --distribution-id "${distribution_id}" \
  --paths "/*"

echo "Published website/ to s3://${bucket_name}/"
echo "Invalidated CloudFront distribution ${distribution_id}"

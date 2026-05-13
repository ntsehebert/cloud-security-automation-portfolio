# Hebert Ntse Cloud Security Portfolio

Personal cloud security engineering portfolio for `https://hebertntse.com`.

The site presents case studies across Wiz CSPM automation, Python remediation playbooks, Azure NSG exposure handling, SQL audit logging, and Terraform-based AWS infrastructure.

## Architecture

- Static website files live in `website/`.
- Terraform provisions the AWS hosting stack.
- S3 stores the static site privately.
- CloudFront serves the site over HTTPS.
- Origin Access Control restricts S3 reads to CloudFront.
- Route 53 manages `hebertntse.com` and `www.hebertntse.com`.
- ACM provides the CloudFront TLS certificate.
- CloudFront response headers add browser security controls.

## Security Controls

- S3 public access blocked.
- S3 server-side encryption enabled.
- S3 versioning enabled.
- CloudFront redirects viewers to HTTPS.
- CloudFront uses OAC with signed origin requests.
- Response headers include HSTS, CSP, frame protection, referrer policy, permissions policy, and `nosniff`.

## Deploy

Publish website changes with:

```bash
./deploy.sh
```

The script syncs `website/` to the Terraform-managed S3 bucket and creates a CloudFront invalidation.

## Terraform

Format before applying:

```bash
terraform fmt
```

Apply infrastructure changes:

```bash
terraform apply
```

Do not commit local state or secret-bearing variable files.

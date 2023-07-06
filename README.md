# Terraform Security Scanning Demo

This repository contains a gitpod workspace with the following tools that can be used to do static code analysis of terraform code

- [snyk](https://github.com/snyk/cli)
- [tfsec](https://github.com/aquasecurity/tfsec)
- [terrascan](https://github.com/tenable/terrascan)
- [checkov](https://github.com/bridgecrewio/checkov)

It also contains some vulnerable terraform code from [tenable/KaiMonkey repository](https://github.com/tenable/KaiMonkey) as an example

## Terrascan

```bash
terrascan scan -d KaiMonkey/terraform/aws/modules/compute
terrascan scan -d KaiMonkey/terraform/aws/modules/compute -o json
terrascan scan -d KaiMonkey/terraform/aws/modules/compute -o yaml
```

## Tfsec

```bash
tfsec KaiMonkey/terraform/aws/modules/compute/
tfsec KaiMonkey/terraform/aws/modules/compute/ --format json
tfsec KaiMonkey/terraform/aws/modules/compute/ -O tfsec.json --format json
```

## Checkov

```bash
checkov --file KaiMonkey/terraform/aws/main.tf 
checkov --file KaiMonkey/terraform/aws/main.tf  -o yaml
checkov --directory KaiMonkey/terraform/aws/modules/compute/
checkov --directory KaiMonkey/terraform/aws/modules/compute/ -o json
```

## Snyk

```bash
cd KaiMonkey/terraform/
snyk auth [<API_TOKEN>]
snyk iac test aws/
```
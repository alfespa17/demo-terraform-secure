# Terraform Security Scanning Demo

This repository contains a gitpod workspace with the following tools that can be used to do static code analysis of terraform code

- snyk
- tfsec
- terrascan
- checkov

It also contains some vulnerable terraform code from [tenable/KaiMonkey repository](https://github.com/tenable/KaiMonkey) as an example

## Terrascan

```bash
cd KaiMonkey/terraform/
terrascan scan -t aws
```

## Tfsec

```bash
cd KaiMonkey/terraform/
tfsec aws
```

## Checkov

```bash
cd KaiMonkey/terraform/
checkov --directory aws/
```

## Snyk

```bash
cd KaiMonkey/terraform/
snyk auth [<API_TOKEN>]
snyk iac test aws/
```
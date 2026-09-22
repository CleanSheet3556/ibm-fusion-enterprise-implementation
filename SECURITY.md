# Security Policy

## Reporting

Do not open a public GitHub issue for credentials, vulnerabilities or sensitive customer information. Report security issues through the repository owner's private security reporting mechanism.

## Repository rules

Never commit:

- kubeconfig files;
- access tokens;
- cloud credentials;
- private keys;
- passwords;
- IBM entitlement keys;
- customer names or topology information without authorization.

Use placeholders such as `${IBM_ENTITLEMENT_KEY}`, `${OBJECT_STORE_ENDPOINT}` and `${REMOTE_SCALE_PASSWORD}`.

## Security controls demonstrated

- least-privilege RBAC;
- secret separation;
- TLS;
- network segmentation;
- audit logging;
- backup repository protection;
- DR access control;
- controlled change management.

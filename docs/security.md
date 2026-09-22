# Security architecture

## Identity

Use enterprise identity integration where available. Separate platform administrators, storage administrators, application operators and read-only auditors.

## RBAC

Grant the minimum permissions required for:

- installation;
- backup operations;
- DR operations;
- VM operations;
- cluster lifecycle.

## Secrets

Use Kubernetes Secrets or approved external secret management. Never commit secret values.

## TLS

Validate certificates for:

- OpenShift ingress;
- remote storage endpoints;
- backup repositories;
- management-plane communication.

## Network

Segment:

- management;
- storage;
- replication;
- application;
- external ingress.

The actual ports and flows must come from the deployed release documentation.

## Audit

Retain OpenShift audit logs and relevant Fusion/management audit information according to enterprise policy.

## Backup security

Protect backup repositories from deletion by the same identity/control plane that protects production. Test credential loss/recovery.

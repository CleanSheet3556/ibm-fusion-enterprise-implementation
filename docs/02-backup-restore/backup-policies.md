# Backup policies

## Policy design

A policy should define:

- scope;
- schedule/frequency;
- retention;
- backup location;
- copy/replication;
- consistency requirements;
- owner;
- alerting;
- recovery test cadence.

## Example

```text
Application: fusion-demo-app
Frequency: every 4 hours
Retention: 7 days
Repository: external object storage
Consistency: application-specific
Recovery target: alternate namespace/cluster
Validation: checksum + application query
```

These values are demonstration parameters and must be replaced by business requirements.

## Implementation

Use the IBM Fusion console or the declarative Custom Resources documented for the deployed Fusion version. Do not invent CRD names or fields in this repository.

For GitOps, commit only the exact schema generated/validated against the target release.

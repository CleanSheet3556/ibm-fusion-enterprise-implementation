# Backup & Restore strategy

## Business-to-technical chain

```text
Business requirement
      ↓
RPO / RTO
      ↓
Backup frequency + retention
      ↓
Backup destination + security
      ↓
Application consistency
      ↓
Restore workflow
      ↓
Recovery validation
```

## Example policy

| Parameter | Lab target | Production decision |
|---|---:|---|
| RPO | 15 min–24 h depending on workload | derived from business owner |
| RTO | 1–4 h | derived from application tier |
| Retention | 7 daily + 4 weekly | compliance-dependent |
| Copy | object storage outside cluster | security/DR dependent |
| Encryption | in transit + at rest | mandatory control |
| Restore test | monthly | service-specific |

These are lab targets, not IBM product guarantees.

## Design principles

1. A backup is not a recovery strategy until restore is tested.
2. Cluster-local backups do not protect against every cluster-loss scenario.
3. Application consistency must be designed for the application, not inferred from a successful snapshot.
4. Backup credentials must be separated from application credentials.
5. Recovery evidence must be retained.

## Required evidence

- policy definition;
- backup job success;
- backup location;
- restore success;
- application data validation;
- timing against RTO.

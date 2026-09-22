# Application-consistent backup

## Three consistency levels

1. **Crash consistency** — storage is captured without application coordination.
2. **File-system consistency** — guest/application I/O is quiesced sufficiently to obtain a filesystem-consistent image.
3. **Application consistency** — the application itself participates in the protection operation, such as database quiescing/checkpointing.

IBM documents these distinctions for OpenShift Virtualization VM protection.

## Demonstration application

Use a synthetic PostgreSQL-like workload or another application whose data integrity can be tested without customer information.

Demonstration sequence:

```text
Application
   ↓
Persistent storage
   ↓
Pre-backup application hook / recipe
   ↓
Data capture
   ↓
Post-backup hook
   ↓
Protected repository
   ↓
Restore
   ↓
Application startup
   ↓
Consistency check
```

## Validation

For a database-like workload:

- record a known transaction marker;
- perform backup;
- create a later marker;
- restore;
- confirm the expected marker exists and the later marker does not.

The exact Fusion recipe/hook syntax must be obtained from the current IBM documentation for the application and release.

## Evidence

Capture the backup job, recipe/hook execution and application-level validation. A green backup job alone is not proof of application consistency.

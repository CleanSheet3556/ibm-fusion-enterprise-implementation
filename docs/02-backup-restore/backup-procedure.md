# Backup procedure

1. Confirm the application is healthy.
2. Confirm the backup policy is assigned.
3. Record the application data marker.
4. Start/await backup according to the Fusion UI or documented API/CR.
5. Confirm completion.
6. Verify the backup exists in the expected repository.
7. Record timestamp and backup identifier.
8. Preserve evidence.

Useful OpenShift checks:

```bash
oc get pods -n <namespace>
oc get pvc -n <namespace>
oc get events -n <namespace> --sort-by=.lastTimestamp
```

Fusion-specific job names and CRDs are intentionally not hard-coded.

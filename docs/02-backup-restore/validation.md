# Backup and restore validation

## Checklist

- [ ] backup service healthy;
- [ ] policy assigned;
- [ ] backup completed;
- [ ] backup copy present;
- [ ] restore completed;
- [ ] PVCs bound;
- [ ] pods Ready;
- [ ] service reachable;
- [ ] known data marker restored;
- [ ] no unexpected data marker;
- [ ] recovery time recorded.

## Commands

```bash
oc get pods -n <namespace>
oc get pvc -n <namespace>
oc get svc -n <namespace>
oc get route -n <namespace>
```

Application-specific validation commands belong in the application runbook.

# Backup manifests

Do not fabricate Fusion Backup & Restore CRDs.

IBM Fusion 2.13.0 supports declarative management for relevant protection resources, but the exact API groups, versions, kinds and fields must be taken from the deployed release documentation and CRD schemas.

Recommended evidence command:

```bash
oc api-resources | grep -i fusion
oc get crd | grep -Ei 'fusion|backup|policy'
```

Commit only verified, sanitized CRs.

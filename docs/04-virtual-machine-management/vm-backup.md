# VM backup

IBM documents VM protection through Fusion Backup & Restore.

Recommended application grouping:

- one namespace per VM/application or logical VM set where appropriate;
- assign a backup policy at the application/namespace level;
- use an external object-storage copy for cluster-loss protection where required.

Validation:

```bash
oc get vm -n <namespace>
oc get pvc -n <namespace>
```

Fusion job/policy evidence must be captured from the release-specific service interface or documented CRs.

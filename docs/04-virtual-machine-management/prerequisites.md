# VM prerequisites

- OpenShift Virtualization version supported by the selected OCP/Fusion combination;
- compute capacity;
- supported StorageClass;
- VM image source;
- network configuration;
- DNS/route requirements;
- `virtctl` compatible with the cluster;
- Fusion Backup & Restore if protection is required.

Validate:

```bash
oc get csv -A | grep -i virtualization
oc get kubevirt -A
oc get sc
```

Use the exact resource names/version from the cluster.

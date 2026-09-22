# Backup prerequisites

IBM Fusion 2.13.0 documents CSI requirements including:

- CSI driver v1 or higher;
- VolumeSnapshot and restore support;
- supported StorageClass binding mode;
- `allowVolumeExpansion: true`;
- filesystem or block PV volume mode as supported.

Validate:

```bash
oc get csidrivers
oc get sc
oc get volumesnapshotclass
```

Confirm the chosen application storage provider is supported before creating a protection policy.

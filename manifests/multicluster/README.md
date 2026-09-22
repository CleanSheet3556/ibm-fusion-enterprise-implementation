# Multi-cluster manifests

HostedCluster, NodePool, MCE and LVM resources are release-dependent.

Before committing manifests:

1. discover installed API resources;
2. obtain the release-specific schema;
3. validate with server-side dry-run;
4. validate in a non-production namespace/cluster;
5. capture the documentation reference.

Example:

```bash
oc api-resources | grep -Ei 'hosted|nodepool|lvm|managedcluster'
```

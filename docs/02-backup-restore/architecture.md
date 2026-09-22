# Backup architecture

```text
Application namespace
 ├── Deployments / Services
 ├── PVCs
 └── Application state
        │
        ▼
Fusion Backup & Restore
        │
        ├── metadata / Kubernetes objects
        ├── CSI snapshots / data movers as supported
        └── backup copy
                │
                ▼
        protected backup repository
                │
                ▼
        restore to same or alternate cluster
```

The exact data mover, snapshot and repository implementation is release- and storage-dependent. Verify the IBM service design for the selected release.

## Design objective

Protect application state, not just individual disks. The recovery unit should be the application/namespace where that aligns with the Fusion protection model.

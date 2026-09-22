# Virtual machine architecture

```text
OpenShift cluster
 ├── OpenShift Virtualization
 │     ├── VM
 │     ├── virt-launcher
 │     └── PVCs
 ├── Services / Routes
 ├── NetworkAttachmentDefinitions where required
 └── Fusion Backup & Restore
```

VM protection is handled in the context of the namespace/application. IBM documents VM backup/restore through Fusion Backup & Restore and supports restore to the same or alternate cluster where prerequisites are met.

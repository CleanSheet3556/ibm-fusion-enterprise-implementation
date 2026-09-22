# Fusion Data Foundation

## Architecture

FDF provides storage services for OpenShift workloads. In the supported Fusion design it supplies CSI-backed persistent storage and data services.

IBM Fusion 2.13.0 supports FDF 4.18–4.21; this repository uses 4.21 as the OCP 4.21 baseline subject to the current support matrix.

## Implementation

Follow IBM's documented FDF installation path for the selected release. IBM's 2.13.0 documentation specifies OperatorHub installation and requires the documented node/resource topology.

Do not copy an FDF Custom Resource from an unrelated release.

## Validation

```bash
oc get pods -n openshift-storage
oc get sc
oc get pv
oc get pvc -A
```

Use the FDF dashboard and documented health indicators for final validation.

## Storage concepts

- storage nodes and device discovery;
- pools and replication;
- CSI drivers;
- StorageClasses;
- snapshots/clones where supported;
- failure domains;
- capacity headroom;
- recovery behavior.

## Failure modes

- unavailable storage devices;
- node failure;
- degraded Ceph components;
- incorrect StorageClass;
- insufficient capacity;
- scheduling constraints;
- network partition.

Evidence must show the environment is healthy before testing downstream capabilities.

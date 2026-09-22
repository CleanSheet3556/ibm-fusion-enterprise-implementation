# Fusion Data Foundation Provider mode

Provider mode allows an FDF deployment to provide storage to consumers according to the supported Fusion architecture.

## Decision model

**Requirement:** centralize storage service for one or more supported consumers.

**Constraints:** network, supported topology, FDF release, cluster identity, capacity and security.

**Trade-off:** centralized storage can simplify consumer cluster architecture but increases dependency on provider availability/network.

**Decision:** implement only where the IBM Fusion/FDF release explicitly supports the topology.

## Validation

Use the Fusion/OpenShift storage dashboards and documented provider/consumer objects. Capture:

- provider health;
- consumer registration;
- storage class;
- PVC provisioning;
- failure/recovery state.

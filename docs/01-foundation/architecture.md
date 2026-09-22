# Foundation architecture

## Requirement

Provide the base IBM Fusion services and storage foundation on OpenShift.

## Architecture decision

### Requirement → constraints → options → trade-offs → decision

**Requirement:** provide an OpenShift-native Fusion platform with persistent storage and access to enterprise data.

**Constraints:** Fusion service compatibility depends on the OpenShift and service versions; storage topology determines which services can be installed together.

**Options:**
1. FDF local/dynamic/external storage.
2. Global Data Platform/Storage Scale where supported.
3. Combined storage deployment where the release explicitly supports it.

**Trade-offs:** local storage simplifies a lab but can constrain mobility; external/remote storage can improve enterprise integration but introduces network and dependency considerations.

**Decision:** use a documented Fusion 2.13.0 / OCP 4.21 baseline and select the storage combination only after checking the IBM support matrix.

## Component interaction

```text
OpenShift
  ├── Fusion Operator / Fusion base
  ├── Fusion Data Foundation
  │     └── CSI / storage classes / persistent volumes
  ├── Backup & Restore
  └── Optional Global Data Platform integration
         └── IBM Storage Scale
```

## Validation

```bash
oc version
oc get clusterversion
oc get nodes
oc get ns
oc get storageclass
oc get pods -A
```

Do not interpret a running pod alone as proof of service health. Use the service's documented health indicator and capture it as evidence.

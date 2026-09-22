# Global Data Platform

## Architecture

Global Data Platform is the IBM Storage Scale-based file/object data platform used by supported Fusion deployments. IBM describes it as a clustered file system that can provide concurrent access to common data.

## Critical release distinction

For OCP 4.20 and earlier, Global Data Platform and the remote mount service have a different installation model.

For OCP 4.21 and later, IBM documentation describes Global Data Platform integration with FDF; after FDF installation, IBM Storage Scale can be configured through the OpenShift console and the former standalone Global Data Platform tile/workflow changes.

Therefore this repository does **not** prescribe an old standalone-GDP workflow for OCP 4.21.

## Implementation

1. Validate the Fusion/OCP/service compatibility matrix.
2. Install FDF according to the supported 4.21 procedure.
3. Configure IBM Storage Scale integration as documented.
4. Validate `ibm-spectrum-scale` resources where applicable.
5. Record the resulting storage classes and external storage objects.

## Validation

```bash
oc get pods -A | grep -i scale
oc get sc
oc get pv
oc get pvc -A
```

Use the exact resource names discovered in the cluster.

## Operational dependency

The remote Scale path introduces:

- network dependency;
- Scale cluster availability;
- authentication;
- certificate/key management;
- filesystem health;
- contact-node availability.

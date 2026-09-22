# VM creation

## Demonstration VM

Create a non-production Linux VM with:

- 2 vCPU;
- 4 GiB memory;
- one OS disk;
- optional data disk;
- one cluster network interface.

The exact VM manifest depends on the OpenShift Virtualization release and image source. Use the Red Hat-generated template or current OpenShift Virtualization documentation rather than an unverified static manifest.

## Validation

```bash
oc get vm -n <namespace>
oc get vmi -n <namespace>
oc get pod -n <namespace>
```

A VM is ready only after the VMI is running and the guest can be accessed.

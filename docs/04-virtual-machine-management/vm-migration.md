# VM migration

## Procedure

1. Open the Fusion/OpenShift Virtualization migration workflow documented for the release.
2. Select the VM.
3. Select the supported migration method.
4. Confirm preconditions.
5. Initiate migration.
6. Observe migration status.
7. Confirm VM remains operational.
8. Confirm the VMI/VM is now associated with the destination host where applicable.
9. Validate application connectivity.

## Validation

```bash
oc get vm -n <namespace> -o wide
oc get vmi -n <namespace> -o wide
oc get pods -n <namespace> -o wide
```

The exact fields available in `-o wide` output depend on the resource.

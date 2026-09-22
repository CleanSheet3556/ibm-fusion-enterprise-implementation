# Default StorageClass

## Objective

Demonstrate a single intended default StorageClass for the lab.

## Why it matters

A default StorageClass allows PVCs without an explicit `storageClassName` to be dynamically provisioned. Incorrect defaults can cause workloads to bind to the wrong storage backend or remain Pending.

## Discovery

```bash
oc get sc
oc get sc -o json
```

Identify the default using the Kubernetes annotation:

`storageclass.kubernetes.io/is-default-class=true`

## Validation

Create a small synthetic PVC only after confirming the lab namespace and storage policy. Verify:

```bash
oc get pvc -n <lab-namespace>
oc get pv
```

## Governance

Do not patch the default StorageClass in production casually. A default change is a platform-level change and should use the change-risk process.

# LVM ConfigMap

## No fabricated keys

LVM configuration is release-dependent. This repository intentionally does not invent a ConfigMap schema.

## Implementation evidence

1. Install the supported Red Hat LVM Storage Operator.
2. Follow the OCP release documentation for the ConfigMap/object required by the specific Fusion/HCP workflow.
3. Capture the resulting ConfigMap:

```bash
oc get configmap -A
oc get configmap <documented-name> -n <namespace> -o yaml
```

4. Remove secrets/customer-specific values before committing evidence.

## Acceptance criteria

- exact schema matches the deployed documentation;
- YAML parses;
- referenced devices/nodes exist;
- LVM operator accepts the configuration;
- resulting storage class provisions a test PVC.

If the deployed release does not require a ConfigMap for the selected workflow, document that fact rather than creating a fictitious one.

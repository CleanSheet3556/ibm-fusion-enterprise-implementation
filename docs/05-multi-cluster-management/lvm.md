# LVM Storage

Red Hat LVM Storage uses LVM2 and TopoLVM CSI to dynamically provision local storage from configured devices.

## Why it matters

LVM can provide local dynamic storage where the architecture needs it, including selected hosted-control-plane or platform use cases.

## Validation

```bash
oc get lvmcluster -A
oc get sc
oc get pvc -A
```

The exact LVM CRD and installation channel must match the OCP release.

## Risks

- wrong disks selected;
- insufficient free extents;
- node loss;
- local-storage failure domain;
- accidental use for workloads requiring replicated storage.

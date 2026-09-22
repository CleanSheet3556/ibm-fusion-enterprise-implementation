# Hosted cluster

## Concept

Hosted Control Planes place hosted cluster control-plane components as workloads on a hosting cluster rather than requiring dedicated control-plane machines for each hosted cluster.

IBM's current Fusion/FDF documentation includes HCP support scenarios.

## Workflow

```text
Hub / hosting cluster
      |
      +-- hosted control plane
      |
      +-- worker/node pool
      |
      +-- hosted OpenShift cluster
```

## Preconditions

- supported OpenShift release;
- supported MCE/HCP components;
- sufficient hosting compute/storage;
- LVM/local storage where required by the chosen topology;
- network and DNS;
- identity/credentials.

Use the Red Hat and IBM release-specific procedure to create the HostedCluster and NodePool resources.

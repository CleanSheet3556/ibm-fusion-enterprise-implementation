# Node pools

A NodePool defines worker capacity/lifecycle for a hosted cluster in supported HCP implementations.

Demonstrate:

1. create a node pool using the supported UI/CR;
2. observe provisioning;
3. verify worker registration;
4. verify health;
5. scale the pool;
6. observe reconciliation;
7. validate workload scheduling.

Capture before/after:

```bash
oc get nodes
oc get pods -A
```

Use the hosted cluster context when validating hosted worker nodes.

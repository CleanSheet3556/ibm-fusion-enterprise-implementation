# Regional DR

## Reference topology

```text
REGION A                         REGION B
Primary cluster                 Recovery cluster
     |                                |
     | asynchronous replication       |
     +------------------------------->+
              application/data
```

IBM Fusion Regional-DR uses RHACM + FDF and asynchronous data replication. This creates a potential data-loss window determined by the replication state.

## Implementation sequence

1. Build two supported OpenShift clusters.
2. Install supported FDF/required management components.
3. Establish network and identity prerequisites.
4. Register/manage the clusters using the supported management plane.
5. Define protected application.
6. Configure the documented Regional-DR policy.
7. Confirm replication/protection state.
8. Perform a controlled failover test.
9. Confirm workloads appear on the secondary cluster.
10. Validate application and data.
11. Record RPO/RTO.
12. Perform documented failback.

Do not invent CR names or commands; use the Fusion/RHACM UI or release-specific declarative resources.

## Failure detection

Evidence can include:

- application protection state;
- replication state;
- cluster health;
- pod placement;
- PVC state;
- application response;
- DNS/route state.

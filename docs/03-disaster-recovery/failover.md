# Failover

## Controlled lab sequence

1. Establish a known-good protected state.
2. Record replication/protection status.
3. Record application transaction marker.
4. Initiate the documented failover operation.
5. Observe target cluster.
6. Confirm application resources.
7. Confirm PVC/data availability.
8. Confirm endpoint/DNS/route behavior.
9. Validate application.
10. Measure RTO and effective RPO.

Do not simulate catastrophic destruction in a production cluster. Use a dedicated lab or approved maintenance window.

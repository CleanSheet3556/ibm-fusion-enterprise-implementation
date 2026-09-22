# DR troubleshooting

## Symptom → cause → evidence → action

**Protection not healthy**
- Check cluster connectivity, storage health, management-plane status.
- Capture protection/replication status.
- Resolve prerequisite before failover.

**Failover does not complete**
- Check target capacity, network, storage replication and management events.
- Do not repeatedly retry without understanding state.

**Pods run but application fails**
- Check PVC mounts, secrets/config, routes/DNS and application dependencies.
- Validate data marker.

**Failback unavailable**
- Confirm source recovery and synchronization state.
- Follow the documented reverse-protection workflow.

Use IBM Fusion and Red Hat troubleshooting guidance for exact component-specific commands.

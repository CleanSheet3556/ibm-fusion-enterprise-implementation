# Failback

Failback is a separate change from failover.

## Sequence

1. Confirm original site health.
2. Confirm data synchronization direction/state.
3. Confirm application quiescence requirements.
4. Re-establish protection in the required direction.
5. Perform documented reverse failover/failback.
6. Validate original application endpoint.
7. Confirm protection is re-established.

Never assume that a successful failover automatically means failback is configured.

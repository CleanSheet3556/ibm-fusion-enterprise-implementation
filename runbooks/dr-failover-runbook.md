# DR failover runbook

## Procedure

Confirm protection state → authorize failover → execute documented workflow → validate target cluster → validate application → record RPO/RTO.

## Evidence

Capture before/after health, timestamps, resource state and application validation.

## Rollback

Stop the workflow, preserve evidence and follow the release-specific supported rollback/recovery procedure. Do not delete operator-managed resources as an improvised rollback.

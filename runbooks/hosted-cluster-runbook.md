# Hosted cluster runbook

## Procedure

Validate hub capacity → validate MCE/HCP prerequisites → create hosted cluster using supported resources → create node pool → validate workers and cluster health.

## Evidence

Capture before/after health, timestamps, resource state and application validation.

## Rollback

Stop the workflow, preserve evidence and follow the release-specific supported rollback/recovery procedure. Do not delete operator-managed resources as an improvised rollback.

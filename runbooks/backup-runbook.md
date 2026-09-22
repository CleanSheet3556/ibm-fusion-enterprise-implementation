# Backup runbook

## Procedure

Confirm application health → confirm policy → execute backup → verify repository → record backup ID/time → retain evidence.

## Evidence

Capture before/after health, timestamps, resource state and application validation.

## Rollback

Stop the workflow, preserve evidence and follow the release-specific supported rollback/recovery procedure. Do not delete operator-managed resources as an improvised rollback.

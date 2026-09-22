# VM migration runbook

## Procedure

Check source/target → validate storage/network → initiate migration → monitor → validate guest/application.

## Evidence

Capture before/after health, timestamps, resource state and application validation.

## Rollback

Stop the workflow, preserve evidence and follow the release-specific supported rollback/recovery procedure. Do not delete operator-managed resources as an improvised rollback.

# DR failback runbook

## Procedure

Confirm source recovery → synchronize/prepare → authorize reverse operation → execute documented failback → validate original service.

## Evidence

Capture before/after health, timestamps, resource state and application validation.

## Rollback

Stop the workflow, preserve evidence and follow the release-specific supported rollback/recovery procedure. Do not delete operator-managed resources as an improvised rollback.

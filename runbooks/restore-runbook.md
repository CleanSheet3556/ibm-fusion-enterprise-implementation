# Restore runbook

## Procedure

Select known-good backup → confirm target → restore → verify PVCs/pods → validate application/data marker → measure RTO.

## Evidence

Capture before/after health, timestamps, resource state and application validation.

## Rollback

Stop the workflow, preserve evidence and follow the release-specific supported rollback/recovery procedure. Do not delete operator-managed resources as an improvised rollback.

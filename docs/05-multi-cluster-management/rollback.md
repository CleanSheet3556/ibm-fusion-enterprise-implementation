# Rollback

Rollback is a controlled return to the last known-good state.

## Sequence

1. Stop further changes.
2. Preserve evidence.
3. Confirm scope.
4. Restore the previous supported configuration.
5. Wait for reconciliation.
6. Validate platform health.
7. Validate storage.
8. Validate application.
9. Record lessons learned.

Never delete an operator-managed object simply to force recovery unless IBM/Red Hat documentation explicitly directs that action.

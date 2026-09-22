# Migration-based DR

## Definition

Migration-based DR uses a planned migration operation to move an application/workload from one environment to another. It may be used for planned site movement, maintenance or selected recovery scenarios.

It differs from replication-based Regional-DR because the target may not be continuously maintained as a synchronized recovery state.

## Workflow

```text
Assess source
   ↓
Prepare target
   ↓
Validate capacity/network/storage
   ↓
Move data/workload
   ↓
Cutover
   ↓
Validate application
   ↓
Declare target active
```

## Rollback

Before cutover, define:

- source preservation window;
- reverse migration capability;
- DNS rollback;
- data divergence handling;
- application write freeze where required.

## Trade-off

Migration can be operationally simpler for planned movement but can create a larger recovery window and requires careful cutover coordination. It must not be represented as equivalent to continuous asynchronous replication.

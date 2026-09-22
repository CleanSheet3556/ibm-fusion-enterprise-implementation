# Restore procedure

## Same-cluster restore

1. Select a known-good backup.
2. Choose the documented restore target.
3. Restore into a controlled namespace where possible.
4. Start the application.
5. Validate storage attachment.
6. Validate application state.

## Alternate-cluster restore

1. Confirm target cluster compatibility.
2. Confirm required storage and networking.
3. Confirm repository access.
4. Restore the application.
5. Validate Kubernetes objects.
6. Validate persistent data.
7. Validate application behavior.

IBM documents recovery of protected applications/VMs to the same or alternate cluster where supported.

## Evidence

Record:

- source cluster;
- backup identifier;
- target cluster/namespace;
- start/end time;
- restored resource count;
- application validation;
- RTO measurement.

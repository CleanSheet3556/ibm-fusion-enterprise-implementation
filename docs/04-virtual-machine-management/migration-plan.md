# VM migration plan

## Preconditions

- source and destination compute hosts healthy;
- compatible CPU/features;
- sufficient destination capacity;
- supported storage;
- network connectivity;
- migration-compatible storage mode;
- no active application operation that violates the migration window.

For live migration, verify the storage/network requirements of the OpenShift Virtualization release.

## Evidence

Record:

- source node;
- target node;
- VM state;
- migration plan;
- migration start time;
- completion time.

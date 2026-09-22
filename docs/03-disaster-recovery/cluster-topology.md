# DR cluster topology

## Lab

- `fusion-primary` — Region A
- `fusion-secondary` — Region B

Both clusters must use supported versions and compatible service levels.

## Network

Required flows are determined by Fusion, RHACM, FDF, DNS, identity and application requirements. Build a port matrix from the release-specific IBM/Red Hat documentation instead of copying a generic port list.

## Capacity

The secondary environment must have enough compute/storage/network capacity for the applications selected for the DR demonstration.

# Production readiness checklist

## Architecture
- [ ] supported topology
- [ ] documented dependencies
- [ ] capacity model
- [ ] failure-domain model

## Security
- [ ] RBAC
- [ ] TLS
- [ ] secret management
- [ ] audit logging
- [ ] backup repository protection

## Networking
- [ ] DNS
- [ ] ingress
- [ ] storage flows
- [ ] replication flows
- [ ] firewall rules

## Storage
- [ ] capacity headroom
- [ ] performance baseline
- [ ] failure-domain validation
- [ ] snapshot/restore capability
- [ ] storage class governance

## Availability
- [ ] node failure tested
- [ ] storage failure tested where safe
- [ ] application health monitoring

## Backup
- [ ] policies
- [ ] retention
- [ ] off-cluster copy
- [ ] restore test
- [ ] application consistency

## DR
- [ ] RPO
- [ ] RTO
- [ ] failover
- [ ] failback
- [ ] DNS/application endpoint
- [ ] recovery testing

## Operations
- [ ] monitoring
- [ ] logging
- [ ] incident response
- [ ] change control
- [ ] runbooks
- [ ] ownership

## Documentation
- [ ] architecture diagrams
- [ ] evidence mapping
- [ ] version matrix
- [ ] known limitations

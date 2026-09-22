# Disaster recovery strategy

## DR decision framework

```text
Business impact
 ↓
RPO / RTO
 ↓
Failure domain
 ↓
Replication vs backup vs migration
 ↓
Network and storage constraints
 ↓
Operational model
 ↓
Testability
```

## Two patterns in this project

### Regional DR

Asynchronous application/data replication between clusters in different regions/data centers. IBM documents Regional-DR using RHACM and FDF with asynchronous replication and potential data loss.

### Migration-based DR

A planned movement of workloads/data from source to target using migration workflows. It is not equivalent to continuously replicated DR.

## Key controls

- documented RPO;
- documented RTO;
- failover authority;
- DNS/application endpoint strategy;
- data consistency;
- target capacity;
- security/identity;
- failback plan;
- regular recovery tests.

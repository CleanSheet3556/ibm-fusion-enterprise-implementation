# Change Risk demonstration

## Scenario

Controlled lab change: modify an LVM/storage configuration or other non-production platform setting using the supported workflow.

The exercise must never intentionally damage production.

## 1. BEFORE CHANGE

Capture:

```bash
oc get nodes
oc get sc
oc get pvc -A
oc get events -A --sort-by=.lastTimestamp | tail -50
```

Record application health and storage health.

## 2. Risk assessment

| Risk | Indicator | Impact | Mitigation |
|---|---|---|---|
| PVC provisioning failure | Pending PVC | workload unavailable | pre-change test + rollback |
| node scheduling issue | Pending pods | capacity loss | preserve capacity headroom |
| wrong storage class | unexpected backend | data placement risk | explicit review |
| configuration rejection | operator degraded | service impact | staged validation |

## 3. Expected impact

Define what should change and what must not change.

## 4. Implementation

Use the supported IBM/Red Hat workflow. Apply the smallest possible change.

## 5. Monitoring

Observe:

```bash
oc get co
oc get pods -A
oc get events -A --sort-by=.lastTimestamp
oc get pvc -A
```

Also inspect the relevant operator's documented health indicators.

## 6. Failure detection

Evidence:

- operator degraded condition;
- events;
- pod restart;
- PVC Pending;
- application error;
- storage health alarm.

## 7. Rollback

Revert to the previously approved configuration. Do not improvise a reverse change if the operator documentation provides a prescribed rollback sequence.

## 8. Recovery validation

Repeat the baseline checks and verify the application/data marker.

## Required evidence

```text
before/
change/
failure-or-success/
rollback/
after/
```

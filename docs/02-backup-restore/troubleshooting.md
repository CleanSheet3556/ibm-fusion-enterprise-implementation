# Backup and restore troubleshooting

| Symptom | Possible causes | Diagnostics | Corrective action |
|---|---|---|---|
| policy not visible | service unhealthy/RBAC | Fusion health + user permissions | restore required permissions/service health |
| PVC backup fails | CSI snapshot capability | `oc get volumesnapshotclass` | verify supported CSI implementation |
| backup stalls | data mover/repository/network | Fusion job/logs/events | follow IBM service troubleshooting |
| restore fails | incompatible target/storage | target cluster + storage checks | correct target prerequisites |
| app starts but data is wrong | crash consistency only/application hook failed | app logs + hook evidence | implement application-aware workflow |

Always collect timestamps and the relevant Fusion/OpenShift logs before remediation.

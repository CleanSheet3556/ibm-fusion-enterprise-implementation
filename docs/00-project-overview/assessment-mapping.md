# Assessment mapping

| Requirement | Repository procedure | Expected result | Validation / evidence |
|---|---|---|---|
| Fusion Operator running on OpenShift | `docs/01-foundation/fusion-operator.md` | operator healthy | CSV/pods/events screenshot |
| Fusion console accessible within OpenShift | `fusion-console.md` | console accessible | screenshot + route |
| Fusion Data Foundation installed/configured | `fusion-data-foundation.md` | FDF healthy | dashboard + pods/storage |
| Single default StorageClass | `storage-class.md` | intended default | `oc get sc` |
| Global Data Platform configured | `global-data-platform.md` | supported GDP/Scale integration | service/storage evidence |
| Remote Scale cluster connected | `remote-scale-connection.md` | filesystem reachable | connection + PV/workload |
| Backup and Restore service available | `02-backup-restore/strategy.md` | service healthy | service evidence |
| Backup policies defined | `backup-policies.md` | policy assigned | policy screenshot/CR |
| Application successfully backed up | `backup-procedure.md` | successful backup | job/repository evidence |
| Application successfully restored | `restore-procedure.md` | restored app | pods/PVC/data marker |
| Application-consistent backup explained | `application-consistency.md` | consistency model documented | design evidence |
| Application-consistent backup demonstrated | `application-consistency.md` | application hook/recipe validated | hook + data evidence |
| Multiple OpenShift environments | `cluster-topology.md` | primary/secondary | cluster evidence |
| Regional DR strategy | `regional-dr.md` | protected application | policy/replication evidence |
| DR policies | `dr-policies.md` | documented policy | policy evidence |
| Failover | `failover.md` | target activated | failover evidence |
| Failed-over pods on secondary cluster | `regional-dr.md` | pods running | `oc get pods` |
| Migration-based DR strategy | `migration-based-dr.md` | planned movement model | migration evidence |
| Migration menu | VM docs | workflow visible | screenshot |
| VM creation | `vm-creation.md` | VM running | VM/VMI |
| virtctl connection | `virtctl-access.md` | guest console access | screenshot |
| OpenShift Virtualization host provider | `host-provider.md` | provider identified | provider evidence |
| VM migration plan | `migration-plan.md` | plan accepted | screenshot |
| VM migration | `vm-migration.md` | VM moved | source/target evidence |
| Login to migrated VM | `vm-migration.md` | guest accessible | console |
| OpenShift Route | `routes.md` | endpoint accessible | route/curl |
| External network | `external-network.md` | secondary network works | NAD/interface/connectivity |
| VM backup | `vm-backup.md` | backup complete | Fusion evidence |
| VM restore | `vm-restore.md` | VM restored | VM/data evidence |
| LVM storage | `lvm.md` | LVM storage works | operator/SC/PVC |
| LVM ConfigMap | `lvm-configmap.md` | exact documented config captured | sanitized YAML |
| FDF Provider mode | `provider-mode.md` | provider/consumer validated | storage evidence |
| Multicluster Engine | `multicluster-engine.md` | MCE healthy | console/resource |
| New cluster visible in OpenShift | `cluster-management.md` | cluster visible | inventory |
| Hosted cluster | `hosted-cluster.md` | HCP cluster healthy | cluster/console |
| Node pools | `node-pools.md` | workers provisioned/scaled | nodes/pool evidence |
| Change-risk scenario | `change-risk.md` | controlled change | before/change/after |
| Detection | `change-risk.md` | issue detectable | events/operator/app |
| Rollback/recovery | `rollback.md` | service restored | after evidence |

## Evidence rule

A screenshot without context is insufficient. Each evidence item should identify:

- environment;
- timestamp;
- requirement/checkpoint;
- what is being demonstrated;
- expected result;
- observed result.

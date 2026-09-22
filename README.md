# IBM Fusion Enterprise Implementation, Data Protection, Disaster Recovery, Virtual Machine Management & Multi-Cluster Operations

[![Documentation](https://img.shields.io/badge/docs-Markdown-blue)](docs/)
[![OpenShift](https://img.shields.io/badge/OpenShift-4.21-red)](https://www.redhat.com/en/technologies/cloud-computing/openshift)
[![IBM Fusion](https://img.shields.io/badge/IBM%20Fusion-2.13.0-0f62fe)](https://www.ibm.com/docs/en/fusion-software/2.13.0)
[![Validation](https://img.shields.io/badge/validation-scripted-green)](scripts/)

## Project overview

This repository is an enterprise-style implementation and demonstration blueprint for IBM Fusion on Red Hat OpenShift. It is designed to demonstrate architectural reasoning, implementation discipline, operational validation, resilience engineering, VM lifecycle management and multi-cluster operations rather than reproduce a product tutorial.

The baseline used for this repository is **IBM Fusion 2.13.0 with OpenShift Container Platform 4.21**. The exact supported patch level must be revalidated before deployment. IBM's current support matrix identifies Fusion 2.13.x and the corresponding OpenShift/service compatibility, and IBM documentation is the authority for release-specific procedures.

> **Important:** This repository intentionally does not fabricate IBM-specific CRDs, CLI commands, ConfigMap keys or UI workflows. Where a release-specific IBM object is required, the procedure tells the engineer to capture the exact object/schema from the deployed release and link it as evidence.

## Objectives

- Install and validate the IBM Fusion foundation.
- Configure Fusion Data Foundation (FDF).
- Configure the Global Data Platform/IBM Storage Scale integration appropriate to the OpenShift release.
- Connect a remote IBM Storage Scale filesystem.
- Define and demonstrate application-consistent backup and restore.
- Demonstrate regional disaster recovery and migration-based DR as distinct patterns.
- Create, migrate, expose, back up and restore OpenShift Virtualization VMs.
- Demonstrate LVM, FDF Provider mode, Multicluster Engine, hosted clusters and node pools.
- Demonstrate controlled change risk, detection, rollback and recovery.
- Produce auditable evidence for every assessment requirement.

## Roadmap

```text
Foundation
    ↓
Backup & Restore
    ↓
Disaster Recovery
    ↓
Virtual Machine Management
    ↓
Multi-Cluster Management
    ↓
Operational Risk
    ↓
Production Readiness
```

## Technology stack

| Layer | Baseline / assumption |
|---|---|
| IBM Fusion | 2.13.0 documentation baseline |
| OpenShift | 4.21 |
| Fusion Data Foundation | 4.21-compatible release |
| Global Data Platform / Storage Scale | Release selected from the IBM support matrix |
| Backup & Restore | Fusion 2.13-compatible service |
| OpenShift Virtualization | Version supported by the selected OpenShift/Fusion combination |
| Multicluster Engine | Version supported by the selected RHACM/MCE/Fusion combination |
| LVM | Red Hat LVM Storage version compatible with OCP 4.21 |
| Git | GitHub/Git |
| Documentation | Markdown + Mermaid |

## Repository navigation

- [Project objectives](docs/00-project-overview/project-objectives.md)
- [Assessment mapping](docs/00-project-overview/assessment-mapping.md)
- [Terminology](docs/00-project-overview/terminology.md)
- [Enterprise architecture](architecture/enterprise-reference-architecture.md)
- [Foundation](docs/01-foundation/architecture.md)
- [Backup & Restore](docs/02-backup-restore/strategy.md)
- [Disaster Recovery](docs/03-disaster-recovery/dr-strategy.md)
- [VM management](docs/04-virtual-machine-management/architecture.md)
- [Multi-cluster management](docs/05-multi-cluster-management/architecture.md)
- [Change risk](docs/05-multi-cluster-management/change-risk.md)
- [Production readiness](docs/production-readiness.md)

## Evidence model

Each demonstration should produce:

1. **Precondition evidence** — versions, health, topology and permissions.
2. **Execution evidence** — console screenshot, command output or YAML/CR capture.
3. **Outcome evidence** — resource state, application response, data validation or failover state.
4. **Recovery evidence** — rollback/failback or restore result where applicable.
5. **Operator evidence** — logs/events/alerts showing how an operator would detect failure.

Do not upload credentials, tokens, private keys, kubeconfigs or client-sensitive information.

## Production disclaimer

This repository is a **technical demonstration and implementation blueprint**. It must not be represented as a production deployment unless the implementation has actually been performed and independently validated. Evidence directories are intentionally designed to contain captured evidence rather than invented screenshots.

## Official documentation

- [IBM Fusion 2.13.0 documentation](https://www.ibm.com/docs/en/fusion-software/2.13.0)
- [IBM Fusion 2.13.0 system requirements](https://www.ibm.com/docs/en/fusion-software/2.13.0?topic=prerequisites-system-requirements)
- [IBM Fusion support matrix](https://www.ibm.com/support/pages/support-matrix-ibm-fusion-sds-versions)
- [IBM Fusion 2.13.0 readme](https://www.ibm.com/support/pages/readme-ibm-fusion-2130)
- [Red Hat OpenShift documentation](https://docs.redhat.com/en/documentation/openshift_container_platform/)
- [Red Hat Advanced Cluster Management documentation](https://docs.redhat.com/en/documentation/red_hat_advanced_cluster_management_for_kubernetes/)
- [Red Hat OpenShift Virtualization documentation](https://docs.redhat.com/en/documentation/openshift_container_platform/latest/html/virtualization/)

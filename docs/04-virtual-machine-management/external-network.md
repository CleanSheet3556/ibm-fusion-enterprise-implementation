# External network

An external/secondary network may require Multus and a NetworkAttachmentDefinition.

Before implementation:

1. confirm the network attachment design;
2. confirm VLAN/IPAM requirements;
3. confirm node-level connectivity;
4. confirm security controls;
5. confirm the VM interface definition for the deployed OpenShift Virtualization version.

Do not fabricate a NetworkAttachmentDefinition because the schema depends on the network plugin and IPAM implementation.

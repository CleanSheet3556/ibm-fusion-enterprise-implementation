# VM restore

## Controlled test

1. Create a known VM data marker.
2. Back up the VM/application.
3. Verify backup completion.
4. Simulate failure safely by deleting only the lab VM or restoring to an alternate namespace.
5. Restore.
6. Boot the VM.
7. Validate the marker.
8. Validate application/network access.
9. Record recovery time.

IBM recommends validating VM recovery by restoring to an alternate namespace and booting the VM where appropriate.

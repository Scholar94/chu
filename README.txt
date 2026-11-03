CHURCH MANAGER — PRODUCTION PACKAGE
===================================

This package contains two separate customer editions and a private vendor license generator.

1. Church-Manager-Offline
   - Single-computer offline edition.
   - No Node.js, LAN or Tailscale required.
   - Includes browser backup export/restore.

2. Church-Manager-LAN-Tailscale
   - Shared church server edition.
   - Multiple computers on the same LAN use one shared database.
   - Authorized remote devices connect through Tailscale.
   - No public port forwarding of TCP 3000.
   - First-run Owner account creation; no default password.
   - Owner-controlled staff accounts and roles.
   - Automatic daily backup inside the server folder plus optional Windows Task Scheduler backup.
   - Owner Backup & Restore screen.

3. License-Generator
   - VENDOR ONLY. Never send this folder to customers.
   - Supports exactly 1-Year and Lifetime licenses.
   - Uses Ed25519 digital signatures. The private signing key stays with the vendor.

IMPORTANT DEPLOYMENT RULE
Keep the Offline and LAN + Tailscale editions as separate installations. Do not merge their data folders.

FIRST DEPLOYMENT ORDER
A. Vendor generates a license key.
B. Customer installs the LAN edition on the designated host computer.
C. Customer activates the host and creates the Owner account.
D. Customer creates staff accounts.
E. Test LAN access.
F. Install and connect Tailscale on the host and authorized remote devices.
G. Test remote phone/laptop access.
H. Install daily backup task and export backup copies to external storage.
I. Only after the above tests should the church begin entering real records.

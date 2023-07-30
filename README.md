# Solidcore: Hardened Immutable Fedora
#### Current status: building, work in progress, do not use

## Variants

- **Solidcore** = hardened CoreOS (no desktop)
- **Solidblue** = hardened Silverblue (GNOME Desktop)
- **Kinsolid** = hardened Kinoite (KDE Desktop)
- **Sersolid** = hardened Sericea (Sway Desktop)
- **Solidbud** = hardened Onyx (Budgie Desktop)
- **Solidx** = hardened Vauxite (XFCE Desktop)



All based on the Fedora-issued images, with some custom hardening to further improve security. Hardening invariably may reduce usability.

#### Builds not yet tested - do not use - come back soon!



## Planned Features
- rebase images to hardened linux kernel
- add hardened_malloc
- add auto updates for rpm-ostree and flatpak
- baked-in support for Yubikey, Nitrokey and Google Titan USB
- add USBGuard to lockdown USB ports
- harden network settings to block various ICMP based attacks
- revised firewall rules
- implement DNSCrypt-proxy to encrypt all DNS lookups
- review potential data leaks, e.g. fedora pings, NTP servers
- lock root access
- enforce strong passwords
- remove unique identifiers
- disable core dumps
- review of SELinux policies
- plus more...



## Suggested Requirements
- installation of Silverblue (or other version of immutable Fedora) on a LUKS encrypted HDD/SSD.



## Help Welcome
People needed to:
- Create logo
- Test builds
- Document use cases



## Acknowledgements & Thanks
- GrapheneOS for creating the hardened kernel and hardened malloc library
- Arch Linux team for maintaining the hardened kernel
- Divested Computer Group for maintaing the hardened malloc library
- HardHatOS for inspiring this project and creating the RPM build of the hardened kernel and malloc library
- Fedora team, especially the rpm-ostree developers
- Jorge Castro and the Universal Blue team for inspiring the creation of custom build immutable images and providing templates for us to use!

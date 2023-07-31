# Solidcore: Hardened Immutable Fedora
#### Current status: building, work in progress, do not use

## Variants

- **Solidcore** = hardened CoreOS (no desktop)
- **Solidblue** = hardened Silverblue (GNOME Desktop)
- **Kinsolid** = hardened Kinoite (KDE Desktop)
- **Sersolid** = hardened Sericea (Sway Desktop)
- **Solidbud** = hardened Onyx (Budgie Desktop, to be released when Fedora 39 is available) 


All based on the official Fedora-issued images, with custom hardening to further improve security. Hardening invariably may reduce usability, so pin your current installation before re-basing to one of the Solidcore builds so you can always revert back to your previous rpm-ostree configuration.

#### Builds not yet tested - do not use - come back soon!



## Planned Features
This project will focus on customisations that improve the security of the operating system and hardware. Few, if any, user-facing improvements will be made - such as pre-installing a separate browser, a VPN product, etc.

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

## Installation Instructions
Details to follow...

## Post-installation Instructions
1. Configure and enable USBGuard - details to follow
2. Configure and restart DNSCrypt-proxy
3. Consider installing a more secure and private out-of-the-box browser
4. Use a VPN on non-WPA3 wifi connections

## Help Welcome
People needed to:
- Port [sodalite](https://github.com/sodaliterocks/sodalite) into Solidcore (planned name... wait for it... Sosolid 😅)
- Create logo
- Test builds
- Document use cases
- Suggest ideas and improvements



## Acknowledgements & Thanks
- GrapheneOS for creating the hardened kernel and hardened malloc library
- Arch Linux team for maintaining the hardened kernel
- Divested Computer Group for maintaining the hardened malloc library
- HardHatOS for inspiring this project and creating the RPM build of the hardened kernel and malloc library
- Fedora team, especially the rpm-ostree developers
- Jorge Castro and the Universal Blue team for inspiring the creation of custom build immutable images and providing templates for us to use!

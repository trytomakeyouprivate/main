# Solidcore: Hardened Immutable Fedora
#### Current status: building, work in progress, do not use

## Variants

- **Solidcore** = hardened base (no desktop)
- **Solidblue** = hardened Silverblue (GNOME Desktop)
- **Kinsolid** = hardened Kinoite (KDE Desktop)
- **Sersolid** = hardened Sericea (Sway Desktop) - _pronounced 'Sir Solid'_
- **Solidx** = hardened Vauxite (XFCE Desktop)
- **Solidbud** = hardened Onyx (Budgie Desktop, to be released when Fedora 39 is available) 


All based on Fedora community maintained images, with custom hardening to further improve security. Hardening invariably may reduce usability, so pin your current installation before re-basing to one of the Solidcore builds so you can always revert back to your previous rpm-ostree configuration.

#### Builds not yet tested - do not use - come back soon!



## Planned Features
This project will focus on customisations that improve the security of the operating system and hardware. Few, if any, user-facing improvements will be made - such as pre-installing a separate browser, a VPN product, etc.

- rebase images to hardened linux kernel
- add hardened_malloc _(currently on hold - breaks login function on GNOME)_
- add auto updates for rpm-ostree and flatpak
- baked-in support for Yubikey, Nitrokey and Google Titan USB
- add USBGuard to lockdown USB ports
- harden network settings to block various ICMP based attacks
- revised firewall rules
- implement DNSCrypt-proxy to encrypt all DNS lookups
- harden systemd-resolved
- randomize mac addresses with a way to turn it off for trusted networks
- review potential data leaks, e.g. fedora pings, NTP servers
- lock root access
- enforce strong passwords
- remove unique identifiers
- disable core dumps
- review of SELinux policies
- plus more...

Ideas:
- restore captive portal functionality (no DNSCrypt, automatic DNS, no HTTPS enforced)


## Suggested Requirements
- Installation of Silverblue (or other version of immutable Fedora) on a LUKS 2 encrypted HDD/SSD ()
- Dont use a root account, create an administrative user with sudo rights
- Update your current system and save a snapshot with `sudo ostree admin pin 1` (0: staged, 1:current, 2-x: other ones)

## Installation Instructions
Details to follow...

## Post-installation Instructions
1. Configure and enable USBGuard - details to follow
2. Configure and restart DNSCrypt-proxy
3. Consider installing a more secure and private out-of-the-box browser (Librewolf, Tor-Browser from Flathub are recommended)
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
- Fedora team, especially the CoreOS developers
- Jorge Castro and the Universal Blue team for inspiring the creation of custom build immutable images and providing templates for us to use!

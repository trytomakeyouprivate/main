#!/bin/sh

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

wget -P /tmp/rpms \
    https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-${RELEASE}.noarch.rpm \
    https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-${RELEASE}.noarch.rpm

wget https://copr.fedorainfracloud.org/coprs/solidcore/coreos-kernel-hardened/repo/fedora-$(RELEASE)/solidcore-coreos-kernel-hardened-fedora-$(RELEASE).repo -O /etc/yum.repos.d/copr_solidcore-kernel-hardened.repo
rpm-ostree override remove kernel --install rpm-kernel-hardened
rpm-ostree install rpm-hardened-malloc

rpm-ostree install \
    /tmp/rpms/*.rpm \
    fedora-repos-archive

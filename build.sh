#!/bin/sh

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

wget -P /tmp/rpms \
    https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-${RELEASE}.noarch.rpm \
    https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-${RELEASE}.noarch.rpm

rpm-ostree override replace --experimental --from repo=copr:copr.fedorainfracloud.org:solidcore:coreos-kernel-hardened rpm-kernel-hardened rpm-hardened-malloc

rpm-ostree install \
    /tmp/rpms/*.rpm \
    fedora-repos-archive

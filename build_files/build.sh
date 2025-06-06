#!/usr/bin/env bash

set -ouex pipefail

# Copy Files to Container
cp /ctx/config/* /tmp/

# COPR Repos
/ctx/00-install-copr-repos.sh

# Install/Uninstall Packages
/ctx/01-packages.sh

# Install Google Fonts
/ctx/02-google-fonts.sh

# Cleanup
/ctx/03-cleanup.sh

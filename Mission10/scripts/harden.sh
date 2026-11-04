#!/bin/bash
set -e
SUDO=""; [ "$EUID" -ne 0 ] && SUDO="sudo"
$SUDO ufw default deny incoming
$SUDO ufw default allow outgoing
$SUDO ufw allow 22/tcp comment 'SSH'
$SUDO ufw allow 80/tcp comment 'HTTP WordPress'
$SUDO ufw --force enable
$SUDO ufw status verbose

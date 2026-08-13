# Cloud Infrastructure Assessment Report

## Overview

This report documents the investigation of a Linux server provided through the KillerCoda cloud environment. The purpose of the investigation was to identify the server's operating system, compute resources, memory, storage, filesystem, hostname, and network information.

## Operating System

The server is running:

- **Operating System:** Ubuntu 24.04.4 LTS
- **Version:** 24.04.4 LTS (Noble Numbat)
- **Codename:** Noble Numbat

Ubuntu is a Linux-based operating system commonly used for servers and cloud environments.

## Kernel Version

The Linux kernel version is:

```text
6.8.0-136-generic

CPU Model
Intel Xeon E312xx (Sandy Bridge, IBRS update)
RHEL-9.6.0 PC (Q35 + ICH9, 2009) CPU @ 2.0GHz

Number of CPU Cores
1 CPU core

Total RAM
1.9 GiB RAM

Disk Capacity
20 GB
19 GB

Mounted File Systems
| Filesystem | Type  | Size | Used | Available | Mount Point |
| ---------- | ----- | ---: | ---: | --------: | ----------- |
| tmpfs      | tmpfs | 191M | 996K |      190M | `/run`      |
| /dev/vda1  | ext4  |  19G | 5.4G |       13G | `/`         |
| tmpfs      | tmpfs | 952M |  84K |      952M | `/dev/shm`  |
| tmpfs      | tmpfs | 5.0M |    0 |      5.0M | `/run/lock` |
| /dev/vda16 | ext4  | 881M | 117M |      703M | `/boot`     |
| /dev/vda15 | vfat  | 105M | 6.2M |       99M | `/boot/efi` |

Hostname
ubuntu

IP Address
172.30.1.2
172.17.0.1
Primary
172.30.1.2

Summary
The KillerCoda environment provides a temporary Linux cloud server with one CPU core, approximately 1.9 GiB of RAM, and a 20 GB virtual disk. The server runs Ubuntu 24.04.4 LTS and uses the Linux 6.8.0-136-generic kernel. The investigation demonstrated how compute, memory, storage, operating system, and networking resources can be identified using Linux command-line tools.

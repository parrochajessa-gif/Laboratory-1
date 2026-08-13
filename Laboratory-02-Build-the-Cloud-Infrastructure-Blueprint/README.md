# Mission 2: Build the Cloud Infrastructure Blueprint

## Mission Overview

This laboratory activity focused on investigating the infrastructure behind cloud computing. A Linux environment provided through KillerCoda was examined to identify compute, storage, networking, and operating system resources. The activity also included comparing infrastructure services from AWS, Microsoft Azure, and Google Cloud Platform and designing a simple cloud architecture.

## Objectives

- Explain the major components of cloud infrastructure.
- Investigate hardware and software resources in a Linux environment.
- Identify compute, storage, networking, and identity resources.
- Understand how cloud infrastructure components work together.
- Compare services from major public cloud providers.
- Create a simple cloud infrastructure diagram.
- Practice technical documentation using Markdown and GitHub.

## Cloud Infrastructure Components

The main infrastructure components investigated were compute, storage, networking, and the operating system.

### Compute

The KillerCoda environment provides one CPU core and approximately 1.9 GiB of RAM. These resources provide the processing and memory needed to run the Linux environment and execute applications and commands.

### Storage

The server provides a 20 GB virtual disk. The main filesystem is `/dev/vda1`, which uses the ext4 filesystem and provides approximately 19 GB of storage.

### Networking

The Linux server has network connectivity and reported the IP addresses `172.30.1.2` and `172.17.0.1`. The primary server IP used in this investigation was `172.30.1.2`.

### Operating System

The server uses Ubuntu 24.04.4 LTS with Linux kernel version `6.8.0-136-generic`.

## Tools Used

- KillerCoda Ubuntu 24.04 Playground
- GitHub
- Linux Terminal
- Web Browser
- Markdown
- diagrams.net / Draw.io

## Linux Commands Executed

| Command | Purpose |
|---|---|
| `cat /etc/os-release` | Checked the operating system |
| `uname -r` | Checked the kernel version |
| `lscpu` | Investigated CPU information |
| `nproc` | Checked CPU cores |
| `free -h` | Checked RAM |
| `lsblk` | Investigated storage devices |
| `df -hT` | Checked mounted filesystems |
| `hostname` | Checked the hostname |
| `hostname -I` | Checked IP addresses |

## Skills Learned

This laboratory helped me practice Linux system investigation, cloud infrastructure identification, cloud provider comparison, technical documentation, diagram creation, and GitHub repository management.

## Challenges Encountered

One challenge was understanding the technical information displayed by Linux commands. Some commands returned several values at once, so I needed to identify which information was relevant to the laboratory requirements. I also experienced difficulty loading the KillerCoda playground at first, but I was eventually able to access the Linux environment and complete the server investigation.

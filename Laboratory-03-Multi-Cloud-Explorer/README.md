# Laboratory 3 – Linux Investigation

## Operating System
The `uname -a` command shows the server is running **Linux ubuntu 6.8.0-138-generic**, an Ubuntu-based distribution with kernel version 6.8.0-138, built for **x86_64** architecture.

## CPU Information
The `lscpu` command shows the system has **1 CPU core** (Intel Xeon E312xx, Sandy Bridge generation) running at 2.0GHz, virtualized under a **KVM hypervisor**. Cache sizes are 32 KiB L1d, 32 KiB L1i, 4 MiB L2, and 16 MiB L3.

## Memory
The `free -h` command shows the system has **1.9 GiB total RAM**, with 414 MiB used, 868 MiB free, and 788 MiB in buffer/cache (1.5 GiB available overall). It also has a 1.0 GiB swap partition, currently unused.

## Disk Space
The `df -h` command shows the main filesystem (`/dev/vda1`, mounted at `/`) has **19G total**, with 5.4G used and 13G available (30% used).

## Cloud Migration Analysis
Given the specs — 1 vCPU, ~2 GiB RAM, and roughly 19 GB of disk — this server is small and lightweight, so it maps well to the smallest general-purpose compute tiers on each provider:

- **AWS:** A **t3.micro** or **t3.small** EC2 instance (1-2 vCPUs, 1-2 GiB RAM), paired with a 20 GB **EBS** volume.
- **Azure:** A **B1s** or **B1ms** Azure Virtual Machine (burstable, low-cost tier), paired with a standard **Managed Disk**.
- **GCP:** An **e2-small** or **e2-micro** Compute Engine instance, using a standard **Persistent Disk**.

# Cloud Infrastructure Components

This document identifies the major infrastructure components found in the Linux environment provided by KillerCoda.

## 1. Compute Resources

### Purpose

Compute resources provide the processing power required to run applications, commands, and services. They mainly include the CPU and memory available to the server.

### Importance in Cloud Computing

Compute resources are important because applications need processing power to operate. Cloud platforms allow organizations to choose and scale computing resources depending on their workload.

### KillerCoda Environment

The KillerCoda server has:

- **CPU:** Intel Xeon E312xx (Sandy Bridge, IBRS update)
- **CPU Cores:** 1
- **RAM:** 1.9 GiB

These resources allow the Linux environment to execute commands and run services.

---

## 2. Storage Resources

### Purpose

Storage resources provide space for the operating system, applications, configuration files, and other data.

### Importance in Cloud Computing

Cloud systems need reliable storage to save application data and operating system files. Different cloud storage services can be selected depending on capacity, performance, and reliability requirements.

### KillerCoda Environment

The KillerCoda server has a **20 GB virtual disk** represented as `/dev/vda`.

The main partition is:

```text
/dev/vda1

3. Networking Resources
Purpose

Networking resources allow servers, users, applications, and other systems to communicate with each other.

Importance in Cloud Computing

Networking is necessary for applications and cloud services to communicate with users and other services. It also allows servers to connect to external networks and other infrastructure components.

KillerCoda Environment

The server reported the following IP addresses:

172.30.1.2
172.17.0.1

The primary IP used for the server investigation is 172.30.1.2.

4. Operating System
Purpose

The operating system manages hardware resources and provides an environment where applications and commands can run.

Importance in Cloud Computing

The operating system provides the foundation for running applications and services on cloud servers. Linux is widely used for cloud workloads because it is flexible, reliable, and well supported by cloud platforms.

KillerCoda Environment

The server is running:

Ubuntu 24.04.4 LTS

The kernel version is:

6.8.0-136-generic

The operating system manages the available CPU, memory, storage, networking, and other resources of the server.

Relationship Between the Components

The infrastructure components work together as one system. The operating system manages the compute and storage resources, while networking allows the server to communicate with other systems. Compute resources process applications, storage keeps data, and networking provides communication between the server and other resources.

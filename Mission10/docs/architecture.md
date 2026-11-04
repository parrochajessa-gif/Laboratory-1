\# Architecture Diagram



```mermaid

flowchart TB

&#x20; B\["Browser on Host Laptop<br/>http://localhost:8080"]

&#x20; subgraph HOST\["Host Laptop (Windows)"]

&#x20;   subgraph HV\["VirtualBox Hypervisor<br/>NAT: 8080→80, 2222→22"]

&#x20;     subgraph VM\["Ubuntu Server 26.04 LTS VM"]

&#x20;       FW\["UFW Firewall<br/>deny all, allow 22 and 80"]

&#x20;       subgraph DK\["Docker Engine"]

&#x20;         WP\["wp\_app: WordPress :80"]

&#x20;         DB\["wp\_db: MySQL 8.0 (internal only)"]

&#x20;         V1\[("db\_data volume")]

&#x20;         V2\[("wp\_data volume")]

&#x20;       end

&#x20;       CR\["cron 2:00 AM → backup.sh → backups/"]

&#x20;     end

&#x20;   end

&#x20; end

&#x20; B --> FW --> WP --> DB

&#x20; DB --- V1

&#x20; WP --- V2

&#x20; CR -.->|mysqldump| DB

```


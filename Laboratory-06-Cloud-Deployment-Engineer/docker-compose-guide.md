# Docker Compose Guide

This guide explains the `docker-compose.yml` file used in this laboratory to deploy a two-tier private cloud storage system made of Nextcloud (web/application tier) and MariaDB (database tier).

## The Compose File

```yaml
version: '3'

services:
  database:
    image: mariadb:10.6
    environment:
      - MYSQL_ROOT_PASSWORD=cloudnova_root
      - MYSQL_PASSWORD=cloudnova_pass
      - MYSQL_DATABASE=nextcloud_db
      - MYSQL_USER=nextcloud_user

  app:
    image: nextcloud
    ports:
      - 8080:80
    environment:
      - MYSQL_PASSWORD=cloudnova_pass
      - MYSQL_DATABASE=nextcloud_db
      - MYSQL_USER=nextcloud_user
      - MYSQL_HOST=database
```

## What does the `services:` block do?

The `services:` block lists every container that makes up the application. Each entry under it is one service, and Docker Compose creates one container for each. In this file there are two services:

- **`database`**: runs the `mariadb:10.6` image and stores the user accounts and file metadata. Its `environment` section sets the root password, database name, database user, and user password.
- **`app`**: runs the `nextcloud` image, which is the web interface. The `ports: 8080:80` line maps port 8080 on the host to port 80 inside the container, so the app can be opened in a browser. Its `environment` section tells Nextcloud which database name, user, and password to use.

Only the `app` service has a `ports` entry, which means only the web tier is reachable from outside. The database is not exposed.

## How did the Nextcloud app container know how to find the database container?

The app container found the database through the `MYSQL_HOST=database` environment variable. Docker Compose automatically puts all services in the file on the same private network. On that network, each service name works as a hostname, so `database` resolves to the IP address of the MariaDB container. This means no IP address had to be typed in. Nextcloud also used `MYSQL_DATABASE`, `MYSQL_USER`, and `MYSQL_PASSWORD`, which match the values set in the database service, to log in to the database. This is why the setup page showed the message "Autoconfig file detected."

## What is the difference between `docker run` and `docker-compose up -d`?

| | `docker run` | `docker-compose up -d` |
|---|---|---|
| Containers started | One container per command | All services in the file at once |
| Configuration | Long options typed manually (ports, variables, names) | Saved in a `docker-compose.yml` file |
| Networking | Containers must be linked or networked manually | A shared network is created automatically |
| Repeatability | Easy to make typos, hard to repeat exactly | Same file gives the same result every time |
| Cleanup | Stop and remove each container separately | `docker-compose down` removes the whole stack |

In short, `docker run` is a manual way to start a single container, while `docker-compose up -d` reads a configuration file and deploys the whole multi-container system with one command. The `-d` flag runs everything in the background (detached mode) so the terminal stays free. Writing the setup as code in a YAML file is the idea behind Infrastructure as Code (IaC).

## Notes

- YAML is space-sensitive. Indentation must use spaces, never tabs.
- The passwords in this file are written in plain text for learning purposes only. In a real deployment, secrets should be stored more securely (for example, in a `.env` file or Docker secrets).
- Without a `volumes:` section, data is lost when the containers are removed with `docker-compose down`. This is fine for a proof-of-concept, but a real deployment would need volumes for persistent storage.

# Laboratory 4: The Cloud-Native Engineer

## Mission Overview
This lab explores the shift from traditional Virtual Machines to lightweight, 
portable containers. Using Docker on a KillerCoda Ubuntu environment, I deployed 
a live Nginx web server, tested it, and practiced managing its full lifecycle 
from creation to removal.

## Objectives
- Differentiate between traditional Virtual Machines (VMs) and Containers
- Access a Docker-enabled cloud environment using KillerCoda
- Execute fundamental Docker CLI commands
- Pull, run, manage, and terminate a containerized application (Nginx)
- Create professional technical documentation of container operations using Markdown
- Continue developing a well-organized GitHub Cloud Computing Portfolio

## Docker Commands Executed
```bash
docker --version
docker info
docker pull nginx
docker run -d -p 8080:80 --name my-nginx nginx
curl http://localhost:8080
docker ps
docker stop my-nginx
docker ps -a
docker rm my-nginx
```

## Skills Learned
- Verifying a Docker installation and checking environment status
- Pulling official images from Docker Hub
- Running containers in detached mode with port mapping
- Testing a running container's web server with `curl`
- Managing the full container lifecycle: list, stop, verify, and remove

## Challenges Encountered
- On the first `curl` attempt, the request returned "Empty reply from server" 
  because the container hadn't fully started yet. Running `docker ps` to confirm 
  it was "Up" and retrying `curl` resolved this — a reminder that containers, 
  while fast, still take a brief moment to initialize.

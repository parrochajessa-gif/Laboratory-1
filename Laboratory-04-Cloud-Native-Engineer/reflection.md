# Mission Reflection

**How does the boot time and setup process of a Docker container compare to 
installing an operating system on a Virtual Machine?**

The difference is dramatic. Installing an OS on a VM means booting a full 
virtual hardware stack, loading a guest kernel, and running through OS setup 
that can take several minutes, plus additional time to install and configure 
software on top of it. In contrast, running a Docker container is nearly 
instant — since it shares the host's kernel, `docker run` just starts a single 
process using an already-built image. In my lab, pulling and launching the 
Nginx container took seconds, and the "server" was live and responding to 
`curl` almost immediately.

**Why is port mapping (-p 8080:80) necessary when running a web server inside 
a container?**

A container runs in its own isolated network namespace by default, meaning 
nothing outside the container can reach services running inside it. Port 
mapping bridges that gap by forwarding traffic from a port on the host 
machine (8080) to a port inside the container (80, where Nginx listens). 
Without `-p 8080:80`, Nginx would be running perfectly inside the container, 
but there would be no way for my host machine's browser or `curl` command 
to actually reach it.

**What happens to the data inside a container when you use the docker rm 
command?**

Any data created or modified inside the container's writable layer is 
permanently deleted once the container is removed, unless that data was 
stored in a mounted volume or bind mount outside the container. Containers 
are meant to be disposable and stateless by design — the underlying image 
stays untouched, but anything unique to that specific container instance is 
gone for good after `docker rm`.

**How do you think containerization changes the way software developers and 
IT operations teams work together (DevOps)?**

Containers close the gap between "it works on my machine" and "it works in 
production." Because the container packages the application together with 
its exact dependencies and configuration, developers can hand operations 
teams something that behaves identically everywhere it runs. This makes 
deployments faster and more predictable, supports automated CI/CD pipelines, 
and lets teams scale services up or down quickly since spinning up a new 
container takes seconds rather than the minutes or hours a new VM might need.

**How is your GitHub portfolio evolving?**

With this lab added, my portfolio now documents a growing range of cloud 
computing skills — from earlier foundational cloud concepts to hands-on 
container deployment and lifecycle management. Each lab builds on the last, 
and having real terminal output, screenshots, and my own written explanations 
in the repo makes it a genuine record of what I've actually done, not just 
what I've read about.

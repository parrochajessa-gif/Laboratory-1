# Mission Reflection

**1. How does writing a docker-compose.yml file make a cloud engineer's job easier?**

Writing a docker-compose.yml file makes the job easier because the whole setup is defined in one place. Instead of typing long docker run commands for each container and linking them by hand, I wrote the configuration once and started everything with a single command. It also reduces typing mistakes and makes the deployment repeatable, since the same file gives the same result every time.

**2. What happens if you make an indentation error in a YAML file?**

An indentation error can stop the deployment completely. YAML uses spaces to show which settings belong under which section, and it does not allow tabs for indentation. If a Tab is used, Docker Compose cannot read the file and shows a parsing error, so no containers start until it is fixed.

**3. Why did we use environment variables?**

Environment variables pass settings such as the database name, username, and password to the containers when they start, instead of building them into the images. This lets the same image be reused with different configurations, and it lets the app and database share matching values. However, plain-text passwords are only acceptable for practice. Real deployments should use a .env file or Docker secrets.

**4. How did it feel to deploy a fully functional enterprise cloud storage system in just a few minutes?**

It felt surprising. I expected something this complex to need a long installation, but Docker downloaded both images and connected them automatically. Seeing the Nextcloud setup page open in my browser made Infrastructure as Code feel real.

**5. How has your understanding of Cloud Computing evolved since Mission 1?**
 In Mission 1, I thought cloud computing was mostly about. Now I understand it also involves containers, automation, and defining infrastructure through code. Moving from single containers to a multi-container stack showed me how real applications are built and deployed.

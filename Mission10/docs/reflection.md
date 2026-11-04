# Reflection: Mission 1 to Mission 10

## The Journey

**Missions 1 to 3: Learning the Foundations.**
I started as a Junior Trainee learning basic Linux commands: navigating the file system, managing files and permissions, and using the terminal without a mouse. At first, working in a black screen with no buttons felt slow. By the end I was faster in the command line than in a graphical interface, and that confidence carried through every later mission.

**Missions 4 to 8: Building Real Infrastructure Skills.**
These missions moved me from single commands to real systems: virtual machines, networking, containers, and securing a server. The biggest shift was learning Docker. I already knew web development with PHP and MySQL on XAMPP, where everything lives on one machine and is easy to break. Docker showed me a better way: each service in its own container, defined in a file, so the whole stack can be rebuilt on any machine with one command. I also learned that security is not an add-on. It's part of the design from the start.

**Mission 9: Automation.**
This was where I stopped doing things by hand and started writing scripts that do them for me. Writing Bash scripts that check and repair a system taught me that a good engineer builds systems that look after themselves, so they don't need to be watched all day.

## Mission 10: The Enterprise Cloud Architect

For the final mission, I designed and deployed a private WordPress + MySQL environment on an Ubuntu Server VM using Docker Compose. I secured it with UFW (default deny, only SSH and HTTP allowed), kept the database off the public network, stored data in persistent volumes, and automated daily database backups with a Bash script and cron.

**What went wrong, and how I fixed it:**
- **The VM only used half of its disk.** The Ubuntu installer put only 11.5 GB of my 25 GB disk into the root volume. I noticed it on the storage screen, planned an extension of the volume, and confirmed afterwards that the system had about 22 GB available.
- **I rebooted before WordPress was installed.** My first persistence test proved nothing, because there was no data yet. I redid it properly: installed WordPress, published a test post, rebooted, and confirmed the post survived.
- **I ran defense-day commands too early.** I pasted the KillerCoda clone commands with placeholder repo names, and they failed. It taught me to read each command before running it.
- **Docker and the firewall.** I learned that Docker can bypass UFW for ports it publishes. That's why I published only the one port I need (80) and left the database unpublished.

## Lessons and What I Would Improve

- **Test, don't assume.** A backup script is only useful if I've run it, restored it, and seen cron trigger it.
- **Document as I go.** Taking screenshots while building made the manual much easier to write.
- **Next improvements:** add HTTPS with a reverse proxy, copy backups to off-site storage, add monitoring and alerts, and run the stack as a non-root user with stricter container settings.

Mission 10 showed me that being an Architect is less about knowing every command and more about planning, testing, and documenting a system so someone else can run it.

# Two-Tier Architecture

A two-tier architecture splits an application into two separate layers: one that users interact with, and one that stores the data. In this lab, the two tiers are a Nextcloud web container and a MariaDB database container, connected using Docker Compose.

## The Web/Application Tier

The web/application tier is the part of the system that users directly interact with. Its role is to serve the user interface, handle HTTP requests from browsers, run the application logic, and communicate with the database when data needs to be saved or retrieved. In this lab, the Nextcloud container (`app`) is the web/application tier. It is exposed on port 8080 so users can access it through a web browser.

## The Database Tier

The database tier is responsible for storing persistent data, meaning information that must be kept even when the application restarts. This includes user accounts, login credentials, and file metadata. In this lab, the MariaDB container (`database`) is the database tier. It only communicates with the Nextcloud container and is not directly accessed by users.

## Why Separate Them?

Separating the web server and the database into two containers makes the system easier to manage, because each one can be updated, restarted, or fixed without affecting the other. It is also more secure, since the database is not exposed to the internet and can only be reached by the application. Lastly, each container does only one job, which makes troubleshooting simpler and allows each tier to be scaled independently as the number of users grows.

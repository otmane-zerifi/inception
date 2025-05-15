# Inception

> A system administration and Docker project from the 42 Network.

## 📚 Project Overview

**Inception** is a project from the 42 curriculum that introduces students to system administration using **Docker**. The goal is to set up a fully functional LEMP (Linux, Nginx, MariaDB, PHP) stack using Docker containers, along with services like WordPress and phpMyAdmin, while ensuring containerization best practices.

## 🏗️ Objectives

- Use Docker to containerize multiple services.
- Deploy WordPress with MariaDB.
- Configure Nginx with SSL using self-signed certificates.
- Add optional services like Redis, Adminer, Portainer, etc.
- Set up a Makefile to automate builds.
- Use Docker Compose for orchestration.

## 🧱 Services

| Service      | Description                              |
|--------------|------------------------------------------|
| Nginx        | Web server with SSL configuration        |
| WordPress    | CMS served over PHP and Nginx            |
| MariaDB      | MySQL-compatible database for WordPress  |
| phpMyAdmin   | DB management UI (optional)              |
| Redis        | Caching layer for WordPress (optional)   |
| Portainer    | Docker management UI (optional)          |

## 🖥️ Architecture

All services run in isolated Docker containers using **Docker Compose**. Volumes are used to persist data and bind configuration files.

```plaintext
                    +-------------------+
                    |     NGINX         |
                    |  + SSL certs +    |
                    +--------+----------+
                             |
          +------------------+------------------+
          |                                     |
    +-----v-----+                        +------v------+
    | WordPress | <---> Redis (optional)| phpMyAdmin   |
    +-----------+                        +-------------+
          |
    +-----v------+
    |  MariaDB   |
    +------------+

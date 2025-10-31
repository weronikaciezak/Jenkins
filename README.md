This repository contains a configuration for running a **Jenkins CI/CD** environment inside a **Docker container**, with built-in support for **Docker** and **Docker Compose**.  
It allows you to create and execute Jenkins pipelines that build and deploy applications using containerized environments.

Build and start Jenkins:
`docker-compose up -d --build`

Open Jenkins in your browser:
`http://localhost:8080`

Retrieve the initial admin password:
`docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword`

# Sample Dockerfile for a Java Spring Boot web application

## Steps to run

- Clone the repository on your local system and install Docker
- Build the image: docker build -t myrepo:myimage:tag
- Run the container on the local system to test:
docker run -d -p 8080:8080 -p 2222:2222 --name test myrepo:myimage:tag
- Access localhost:8080 
- Push it to registry (DockerHub): docker push myrepo:myimage:tag

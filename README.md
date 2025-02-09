# Node-Hostname Application


Node-Hostname Kubernetes Deployment


A simple Node.js application that returns the hostname of the server it's running on. The application is built using Docker and Kubernetes for deployment and scalability. It is accessible from a browser and provides the hostname in a JSON format.

## Features
- Returns the hostname of the server.
- Built with Node.js.
- Dockerized for containerization.
- Deployed on Kubernetes.
- Exposed via a LoadBalancer (or NodePort for local testing).

## Prerequisites

- Docker (for containerization)
- Kubernetes (Minikube or Cloud provider such as AKS or GKE)
- kubectl (for interacting with Kubernetes clusters)
- Docker Hub account (for pushing the Docker image)

## Getting Started

### 1. Clone the repository
Clone this repository to your local machine:

```bash
git clone https://github.com/abhishekmalhotra12/node-hostname.git
cd node-hostname

Build the Docker image
Build the Docker image for the application:
docker build -t node-hostname .

Run the application locally using Docker
Run the application locally to test the image:
docker run -p 3000:3000 node-hostname

Push the Docker image to Docker Hub
docker push abhishekmalhotra12/node-hostname:latest

Deploy the application on Kubernetes
Create Kubernetes deployment and service files
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml

Port Forwarding for Local Kubernetes Cluster (Minikube)
To access the application running in your local Kubernetes cluster via a browser, you can use port forwarding. Use the following command:
kubectl kubectl port-forward svc/node-hostname-service 8080:80




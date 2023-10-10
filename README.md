# Python-Microservice-EKS-Deployment
![image](https://github.com/jithsg/Python-Microservice-EKS-Deployment/assets/135303624/d6ff78c4-0617-4141-8ff1-7d6dc025b99d)
#Public Ip
![image](https://github.com/jithsg/Python-Microservice-EKS-Deployment/assets/135303624/952e6f3f-2d65-4cb0-b739-e1b2a0c9347c)


# Deploying and Accessing Flask Application on Kubernetes

This guide will walk you through deploying a Flask application on a Kubernetes cluster and exposing it using Amazon's Elastic Load Balancing.

## Step-by-Step Guide

# Flask App Deployment on Kubernetes

Deploy and expose a Flask app on Kubernetes with the following steps:

## 1. Deployment Configuration
First, ensure you have the deployment configuration in place. Here's a sample configuration named `myapp-deployment.yaml`:

```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: myapp-deployment
spec:
  replicas: 3
  selector:
    matchLabels:
      app: myapp
  template:
    metadata:
      labels:
        app: myapp
    spec:
      containers:
      - name: myapp
        image: your_account_id.dkr.ecr.region_name.amazonaws.com/myapp:latest
2. Apply Deployment
Apply the deployment to your Kubernetes cluster:

bash

kubectl apply -f myapp-deployment.yaml

3. Expose the App
Now, expose your app using the following command:

bash

kubectl expose deployment myapp-deployment --type=LoadBalancer --port=80 --target-port=port_your_app_runs_on

4. Verify the Service
To check that the service is up and to find the external IP:

bash
kubectl get services



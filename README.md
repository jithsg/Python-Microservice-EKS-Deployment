# Python-Microservice-EKS-Deployment
![image](https://github.com/jithsg/Python-Microservice-EKS-Deployment/assets/135303624/d6ff78c4-0617-4141-8ff1-7d6dc025b99d)
#Public Ip
![image](https://github.com/jithsg/Python-Microservice-EKS-Deployment/assets/135303624/952e6f3f-2d65-4cb0-b739-e1b2a0c9347c)



markdown

# Deploying and Accessing Flask Application on Kubernetes

This guide will walk you through deploying a Flask application on a Kubernetes cluster and exposing it using Amazon's Elastic Load Balancing.

## Step-by-Step Guide

### 1. Deploy the Application to Kubernetes

Using the `myapp-deployment.yaml` file, deploy the application:


kubectl apply -f myapp-deployment.yaml
Upon successful deployment, you should see:



deployment.apps/myapp-deployment created
2. Expose the Application
Expose the deployment as a LoadBalancer service:


kubectl expose deployment myapp-deployment --type=LoadBalancer --port=80 --target-port=port_your_app_runs_on
3. Verify the Service
To check the details of the exposed service, use:


kubectl get services
Expected output:


NAME               TYPE           CLUSTER-IP     EXTERNAL-IP                                                               PORT(S)        AGE
myapp-deployment   LoadBalancer   10.100.51.76   a7ad46d57668f4c1cade28325833ccf5-1378950501.us-east-1.elb.amazonaws.com   80:32045/TCP   12s
4. Access the Application
Navigate to your Flask application using the provided EXTERNAL-IP:


http://a7ad46d57668f4c1cade28325833ccf5-1378950501.us-east-1.elb.amazonaws.com
You should see a greeting: "Hello World! I can make change at route: /change".

5. Test the Change Functionality
To test the coin change functionality, access the specific route:

=
http://a7ad46d57668f4c1cade28325833ccf5-1378950501.us-east-1.elb.amazonaws.com/change/1/50
Conclusion
By following these steps, you've successfully deployed and accessed a Flask application on Kubernetes using Amazon's Elastic Load Balancing.

typescript
Copy code

You can save the above content in a file with a `.md` extension (e.g., `flask_k8s_deployment.md`) and then view it with any Markdown viewer or platform that supports Markdown rendering.




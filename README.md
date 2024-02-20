
# Cloud native monitoring python app on Kubernetes!

A python application that monitors CPU and Memory utilization.

Further ahead it is contanerized using Docker 🐳and deployed on kubernetes☸️ using Amazon Web Services(aws) .



## Try out this project ✨
Follow these steps to try out my project:

Step 1 : Clone this repository:

```bash
  https://github.com/adityadahake24/Cloud-native-monitoring-app.git
```
Step 2 : install all python dependencies mentioned in `requirements.txt` 
```bash
    pip3 install -r requirements.txt
```
Step 3 : To run this application locally 
```bash
    python3 app.py
```
The application will be running on `localhost:5000` port.

Navigate to [https://localhost:5000](http://localhost:5000/).

## Dockerizing the application:

Step 1 : Build the `Dockerfile` from the repository to Docker-image.
```bash
    docker build -t <image_name> . 
```
Step 2 : Create a Docker Container from the image built.
```bash
    docker run -p 5000:5000 <image_name>
```
Step 3 : Verify the working of application running from the container by navigating to the address below for further deployment on AWS.

Navigate to [https://localhost:5000](http://localhost:5000/)

## Pushing the Docker image to AWS - ECR

Step 1 : Run the ```ecr.py``` python file from the repository in your terminal with : 
```bash
    python3 ecr.py
```
Step 2 : Push the image to ECR with the ```repository_uri``` generated.
```bash
    docker push <ecr_repo_uri>:<tag>
```
## Cresting EKS cluster & node-group and deploying app using python.

Step 1 : Create Eks clusted and add node-groups to the cluster from the AWS console.

Step 2 : Run the ```eks.py``` pthon file from the terminal with :
```bash
    python3 eks.py
```
Make sure the change the ```image-uri``` according to your gnerated uri from AWS-ECR in the ```eks.py``` python script accordingly.

Step 3 : Use these commands to verify the deployment, service and pods of your application on kubernetes.
```bash
    kubectl get deployment -n default
    kubectl get service -n default 
    kubectl get pods -n default 
``` 
Once the pods are up and running use the ```port-forward``` command to expose those services.
```bash
    kubectl port-forward service/<service_name> 5000:5000
```
Application should be up and running on your port ```5000```.

## Architecture
![Drawing](https://github.com/adityadahake24/Cloud-native-monitoring-app/assets/97397447/8fd07a44-c0df-4c55-8bda-7ac789c8f088)
## 🔗 Links

[![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/adityadahake24/) 


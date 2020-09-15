# Operationalize a Machine Learning Microservice API
This project operationalizes a Machine Learning Microservice API to preodict the housing prices in Boston.

## Build status
[![kevinptx](https://circleci.com/gh/kevinptx/udacity-project4.svg?style=svg)](https://circleci.com/gh/circleci/circleci-docs)


## Summary
Operationalize a pre-trained sklearn Machine learning model trained to predict housing prices in Boston based on various features. 

## Project Overview
In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API.
You are given a pre-trained, sklearn model that has been trained to predict housing prices in Boston according to several features, 
such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, 
which was initially taken from Kaggle, on the data source site. This project tests your ability to operationalize a Python 
flask app—in a provided file, app.py—that serves out predictions (inference) about housing prices through API calls. 
This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project tasks

- Test the project code using linters
- Complete the Dockerfile for containerization of the application
- Deploy the application to Docker and make a prediction
- Configure Kubernetes and create a Kuberenetes cluster
- Deploy the container using Kubernetes
- Upload files to a GitHub repository and run CI/CD using CircleCI to test your code. 

### Steps

1. Clone the repository 
```bash
git clone https://github.com/udacity/DevOps_Microservices.git
```

2. Get to the main working directory
```bash
cd DevOps_Microservices/project-ml-microservice-kubernetes
```

3. Start with the initiation procedures.

4. Using Makefiles perform the following:

  - Activate the virtual environment
  ```bash
  make setup
  ```
  
  - Install the project dependencies
  ```bash
  make install
  ```
  
  - Lint both `Dockerfile` as well as `app.py` Flask application.
  ```bash
  make lint
  ```
  
5. Install other tools Like Docker, hadolint and Kubernetes (Minikube)

	- Docker
	
	Download Docker desktop for Windows/macOS.
	
	- Hadolint
	```powershell
	scoop install hadolint
	```
	
	- Minikube
	Install Minikube through the executable installer available [here](https://github.com/kubernetes/minikube/releases/latest).

## Detailed Project tasks

1. Complete the Dockerfile.
2. Run the container and make a prediction using `make_prediction.sh`.
3. Improve the logging and save the output to `docker_out.txt`.
4. Upload the docker image using `run_docker.sh` file. \
5. Configure Kubernetes to run locally.
6. Deploy with Kubernetes and save the logs to `kubernetes_out.txt`.
7. Delete the cluster once operations are complete. 
8. Integrate the project with CircleCI.
9. Add the build badge to repository.

## Files explained

### model_data
This folder contains the necessary information in csv and the machine learning model. 

### output_txt_files/docker_out.txt
This file contains the output of the prediction model when run in the Docker container.

### output_txt_files/kuernetes_out.txt
This file contains the output of the prediction model when run in a Kubernetes cluster. This file also contains information about the deployment, port forwarding process along with the outout of the prediction model that is visible in another terminal.

### Dockerfile
The Dockerfile is used for executing the necessary instructions for assembly of a Docker image.

### Makefile
The Makefile contains a set of directives for achieving the automation of the project. Instead of manually typing each commands, it can be collectively inserted into one Makefile and then use the `make` command to execute each instruction.

### app.py
The `app.py` file contains the Flask application that will take the json payload for the predictive model. 

### make_prediction.sh
A shell script that ocntains the JSON payload that will be accepted by the flask application.

### run_docker.sh
A shell script that contains instructions for the Docker image creation process.

### run_kubernetes.sh
A shell script that contains instructions for app deployment into a Kubernetes cluster including instructions for port-forwarding procedure.

### upload_docker.sh
A shell script that contains instructions to push the docker image into repository.

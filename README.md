[![CircleCI](https://circleci.com/gh/elshadrzayev/udacity-house-price-prediction/tree/main.svg?style=svg)](https://circleci.com/gh/elshadrzayev/udacity-house-price-prediction/tree/main)

## Project Overview

Description: Operationalize a Machine Learning Microservice API. 

The `sklearn` model that has been trained to predict housing prices in Boston according to several features, 
such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. 
This document describes step-by-step operationalization of this sklearn-model in production environment. The`app.py`file serves
out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning 
model, such as those for image recognition and data labeling.


## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash

python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies

### Run `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`

### Run Kubernetes

1. minikube start
2. Run in Kubernetes:  `./run_kubernetes.sh`
3. Test: './make_prediction.sh'
4. minikube delete
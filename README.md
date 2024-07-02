# Kubernetes Project - micro-services

## Introduction

This project contains Kubernetes configurations for deploying NodeJS and ReactJS applications. It includes various YAML files for deployments, services, and ingress, as well as a script for local CI.

## Table of Contents

- [Introduction](#introduction)
- [Installation](#installation)
- [Usage](#usage)
- [Project Structure](#project-structure)
- [Features](#features)
- [Dependencies](#dependencies)
- [Configuration](#configuration)
- [Documentation](#documentation)
- [Contributors](#contributors)
- [License](#license)

## Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/edencoania/kubernetes.git
    cd kubernetes
    ```

2. Ensure you have Kubernetes cluster context and kubectl installed and configured.

3. Apply the configurations:
    ```bash
    kubectl apply -f ingress.yaml
    kubectl apply -f nodeJS/
    kubectl apply -f reactJS/
    kubectl apply -f kube-admin-pod/deployment.yaml
    ```

## Usage

for local development - make sure you have docker installed.

To start the local CI for React and NodeJS:
```bash
./local_ci_react.sh
```

## Project Structure

```
.
├── ingress.yaml
├── kube-admin-pod
│   └── deployment.yaml
├── local_ci_react.sh
├── nodeJS
│   ├── deployment.yaml
│   └── service.yaml
├── reactJS
│   ├── deployment.yaml
│   └── service.yaml
└── README.md
```

- `ingress.yaml`: Configuration for Kubernetes Ingress.
- `kube-admin-pod/deployment.yaml`: Deployment configuration for the admin pod.
- `local_ci_react.sh`: Script for local continuous integration of ReactJS.
- `nodeJS/deployment.yaml`: Deployment configuration for the NodeJS application.
- `nodeJS/service.yaml`: Service configuration for the NodeJS application.
- `reactJS/deployment.yaml`: Deployment configuration for the ReactJS application.
- `reactJS/service.yaml`: Service configuration for the ReactJS application.

## Features

- **NodeJS Deployment**: Contains configurations to deploy a NodeJS application.
- **ReactJS Deployment**: Contains configurations to deploy a ReactJS application.
- **Ingress**: Ingress configuration for routing.
- **Local CI**: Script for local continuous integration.

## Dependencies

- Kubernetes
- kubectl

## Configuration

Ensure your Kubernetes cluster is set up and configured. Update YAML files with the appropriate configurations for your environment.

## Documentation

Further documentation can be added here or linked to external sources.

## Contributors

- [Eden Coania](https://github.com/edencoania)

## License

Specify the license under which the project is distributed.

---

Feel free to customize the content further based on the specifics of your project. If there are any additional sections or details you'd like to include, let me know!
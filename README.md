# Kubernetes/Docker maintenance pod

Pipeline `drone.yml` builds, scans and pushes an image to ECR, so it can be pulled in the deployment file.

Script `deploy.sh` uses `kubectl` to deploy `maintenance-deployment.yml` to a requested cluster and namespace.

`Dockerfile` defines the tools or utilities the deployed pod will have.

`docker-compose.yml` allows users to run and test the container and tools locally.

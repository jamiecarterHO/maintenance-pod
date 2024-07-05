#! /bin/bash
set -e

echo "==================="
echo Deploy a maintenance pod...
echo "==================="
echo "Which Kubernetes cluster (ACP) do you want to deploy into?"
read KUBE_CONTEXT
echo "Which namespace are you deploying to in that cluster?"
read NAMESPACE
echo What is your name?
read name
echo "==================="
echo Thank you $name, deploying now.

kubectl --context=$KUBE_CONTEXT -n $NAMESPACE apply -f maintenance-deployment.yml

echo "==================="
echo Hi $name, deployment is complete. You can exec to the container now.


#!/bin/bash

kubectl apply -f namespace.yaml
kubectl apply -f linkding-secret.yaml

helmfile apply

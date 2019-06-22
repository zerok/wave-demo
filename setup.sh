#!/usr/bin/env bash

# Install the basic wave setup
kubectl kustomize github.com/pusher/wave.git/config/default | kubectl apply -f -

# Add the extended cluster role settings
kubectl kustomize wave | kubectl apply -f -

# Restart wave
kubectl --namespace wave-system delete pod wave-controller-manager-0

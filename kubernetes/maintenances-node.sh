#!/bin/bash

kubectl cordon k8s-node-1
kubectl drain k8s-node-1 --ignore-daemonsets

while kubectl get pods --field-selector spec.nodeName=k8s-node-1 -o jsonpath='{.items[*].metadata.name}' | grep .; do
    sleep 5
done

kubectl uncordon k8s-node-1


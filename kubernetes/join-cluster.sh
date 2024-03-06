#!/bin/bash

read -p "Enter the master node username: " master_node_username
read -p "Enter the master node IP address: " master_node_ip

read -p "Enter the worker node username: " worker_node_username
read -p "Enter the worker node IP address: " worker_node_ip

join_command=$(ssh $master_node_username@$master_node_ip "kubeadm token create --print-join-command")

ssh $worker_node_username@$worker_node_ip "$join_command"
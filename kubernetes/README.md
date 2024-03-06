- apply the first deployment "nginx-app-deployment" using this command
```
kubectl apply -f nginx-app-deployment.yaml
```
- apply the second deployment to update the nginx-app using this command
```
kubectl apply -f nginx-app-deployment-update.yaml --record
```
- and to rollback simply use this command
```
kubectl rollout undo deployment/nginx-app
```

- To set node as unavailable and reschedule the pods running on it run the maintenances-nodes.sh
- To create persistent volume run the create-pv.yaml using:
```
kubectl apply -f create-app-data-pv.yaml
```
- To claim the pv you can run the create-app-data-pvc.yaml using:
```
kubectl apply -f create-app-data-pvc.yaml
```
- we can also use the script to do create the pv and pvc using create-pv-pvc.sh
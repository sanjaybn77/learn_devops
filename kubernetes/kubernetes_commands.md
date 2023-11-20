# to fetch all my configuration on to my kubectl
aws eks --region ap-southeast-1 update-kubeconfig --name k8_sanjay

# to view my configuration 
kubectl config view

# to check the status of cluster
aws eks --region ap-southeast-1 describe-cluster --name k8_sanjay --query cluster.status

# to check how many nodes are running
kubectl get nodes









# to run the deployment file 
kubectl apply -f [file name.yaml]

# to list the deployment file status
kubectl get pods -l [file name ]

# to expose our application to public
kubectl expose deployment [ deployment_name ] --type =NodePort

# to check the service running in master
kubectl get svc

# to delete the pod
kubectl delete pods [ pod name ]

# to check which nods and to get full informatin 
kubectl get nods --output=wide
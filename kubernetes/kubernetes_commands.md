# to run the deployment file 

kubectl apply -f [file name.yaml]

# to list the deployment file status

kubectl get pods -l [file name ]

# to expose our application to public

kubectl expose deployment [ deployment_name ] --type =NodePort

# to view which port it is running

kubectl get svc
 #!/bin/bash
 namespace = $(kubectl get ns $1 -o json | jq .status.phase -r) 
 if [ $namespace == "Active" ] 
      echo "Namespace exists"
 } else {
      kubectl create namespace $1
 }
fi

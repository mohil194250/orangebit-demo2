 #!/bin/bash
 namespace = $(kubectl get ns ${params.BRANCH} -o json | jq .status.phase -r) 
 if ( $namespace == "Active" ) {
      echo "Namespace exists"
 } else {
      sh "kubectl create namespace ${params.BRANCH}"
 }

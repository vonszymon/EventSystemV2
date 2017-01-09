export PROJECT_ID="iosr-cloud"

kubectl delete deployment userdb
kubectl delete service userdb
kubectl run userdb --image=gcr.io/$PROJECT_ID/userdb:v2 --port=3306
kubectl expose deployment userdb --type="LoadBalancer"


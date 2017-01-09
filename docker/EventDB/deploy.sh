export PROJECT_ID="iosr-cloud"

kubectl delete deployment eventdb
kubectl delete service eventdb
kubectl run eventdb --image=gcr.io/$PROJECT_ID/eventdb:v2 --port=3306
kubectl expose deployment eventdb --type="LoadBalancer"


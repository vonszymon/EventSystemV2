export PROJECT_ID="iosr-cloud"

kubectl delete deployment eventservices
kubectl delete service eventservices

docker build -t gcr.io/$PROJECT_ID/eventservices:v2.1 .
gcloud docker push gcr.io/$PROJECT_ID/eventservices:v2.1

kubectl run eventservices --image=gcr.io/$PROJECT_ID/eventservices:v2.1 --port=8080
kubectl expose deployment eventservices --type="LoadBalancer"

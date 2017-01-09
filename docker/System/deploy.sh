export PROJECT_ID="iosr-cloud"

kubectl delete deployment eventsystem
kubectl delete service eventsystem

docker build -t gcr.io/$PROJECT_ID/eventsystem:v2.3 .
gcloud docker push gcr.io/$PROJECT_ID/eventsystem:v2.3

kubectl run eventsystem --image=gcr.io/$PROJECT_ID/eventsystem:v2.3 --port=8080
kubectl expose deployment eventsystem --type="LoadBalancer" --session-affinity="ClientIP"

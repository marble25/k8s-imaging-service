kubectl apply -f ./loadbalancer/ingressroute.yaml
kubectl apply -f ./loadbalancer/deployment.yaml
kubectl apply -f ./loadbalancer/service.yaml
kubectl apply -f ./loadbalancer/traefik.yaml
# kubectl apply -f ./loadbalancer/test.yaml

kubectl port-forward --address 0.0.0.0 service/traefik-svc 80:8000 443:4443 -n default
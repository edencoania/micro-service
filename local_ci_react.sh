docker build -t my-react-app:latest ./../my-react-app/
docker tag my-react-app:latest edencoania/release:bob

docker build -t nodejs ./../nodejs/
docker tag nodejs:latest edencoania/release:nodejs
docker push edencoania/release:nodejs

docker push edencoania/release:bob

kubectl rollout restart -f reactJS/deployment.yaml
kubectl rollout restart -f reactJS/service.yaml

kubectl rollout restart -f nodeJS/deployment.yaml
kubectl rollout restart -f nodeJS/service.yaml


docker build -t my-react-app:latest ./../my-react-app/
docker tag my-react-app:latest edencoania/release:my-react-apaa

#docker build -t nodejs ./../nodejs/
#docker tag nodejs:latest edencoania/release:nodejs
#docker push edencoania/release:nodejs
kubectl delete deployment.apps/react-app

docker push edencoania/release:my-react-apaa
docker image rm edencoania/release:my-react-appp

kubectl apply -f reactJS/deployment.yaml
kubectl apply -f reactJS/service.yaml

kubectl apply -f nodejs/deployment.yaml
kubectl apply -f nodejs/service.yaml


rm -Rf gen
mkdir -p gen
for i in {1..2000}
do
sed "s/NUMBER/$i/g" ingressroute.template > gen/ingress-$i.yaml
sed "s/NUMBER/$i/g" service.template > gen/service-$i.yaml
done
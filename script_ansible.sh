# !/bin/bash

docker run --name ubuntu -d --rm pycontribs/ubuntu:latest sleep 60000
docker run --name centos7 -d --rm pycontribs/centos:7 sleep 60000 
docker run --name fedora -d --rm pycontribs/fedora:latest sleep 60000



cd playbook

ansible-playbook site.yml -i inventory/prod.yml --vault-password-file password

echo "Останавливаю DOCKER контейнеры"

docker stop ubuntu centos7 fedora 
echo "Остановлены"
echo ""

echo "##############################"
echo "##                          ##"
echo "##     Mission complete     ##"
echo "##                          ##"
echo "##############################"

branch=main
git clone -b $branch https://github.com/Randi356/Ultroid /root/Randi356
cp ultroid/.env /root/Randi356/.env
cd /root/Randi356
docker build . --rm --force-rm --compress --pull --file Dockerfile -t ultroid
docker run --privileged --env-file .env --rm -i ultroid

docker network create --driver bridge --attachable traefik
docker network create --driver macvlan --subnet=192.168.0.0/24 --gateway=192.168.0.1 -o parent=ens18 adguard

sudo ln -s ${PWD}/adguardhome/adguard-shim.service /etc/systemd/system/adguard-shim.service
sudo systemctl daemon-reload
sudo systemctl enable --now adguard-shim.service

docker network create --driver bridge --attachable traefik
docker network create --driver macvlan --subnet=10.10.10.0/24 --gateway=10.10.10.1 -o parent=$(ip route show default | awk '/default/ {print $5}') adguard

sudo ln -s ${PWD}/adguardhome/adguard-shim.service /etc/systemd/system/adguard-shim.service
sudo systemctl daemon-reload
sudo systemctl enable --now adguard-shim.service

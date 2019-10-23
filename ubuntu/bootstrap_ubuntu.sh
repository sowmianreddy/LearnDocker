echo "[TASK 1] Install Docker"
wget -qO- https://get.docker.com/ | sh

echo "[TASK 1] Add vagrant user to docker group"
sudo usermod -aG docker vagrant

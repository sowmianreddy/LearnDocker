echo "[TASK 1] Download dependency packages."
sudo yum install wget -y 

echo "[TASK 2] Install Docker"
wget -qO- https://get.docker.com/ | sh

echo "[TASK 3] Enable Docker at boot level."
sudo systemctl enable docker

echo "[TASK 4] Start Docker Daemon."
sudo systemctl start docker

echo "[TASK 5] Add vagrant user to docker group."
sudo usermod -aG docker vagrant

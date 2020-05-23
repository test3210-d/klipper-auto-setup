echo "Installing Klipper ..."
sudo apt-get install python3-pip --yes
cd ~
git clone https://github.com/KevinOConnor/klipper
./klipper/scripts/install-octopi.sh
cd ~/klipper/
sudo service klipper stop
echo "-----------------------------------------------------------------------------------------------------------------"
echo ""
echo "Communication ports list"
echo ""
ls /dev/serial/by-id/*
echo ""
echo "See http://3dua.info for more information"

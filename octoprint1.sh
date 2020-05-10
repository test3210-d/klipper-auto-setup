echo "Install octoprint"
cd ~
sudo apt-get update 
sudo apt-get install python-pip python-dev python-setuptools python-virtualenv git libyaml-dev build-essential -y
git clone https://github.com/foosel/OctoPrint.git
cd OctoPrint
virtualenv --system-site-packages venv
./venv/bin/python setup.py install
mkdir ~/.octoprint
sudo usermod -a -G tty pi
sudo usermod -a -G dialout pi
~/OctoPrint/venv/bin/octoprint
sudo cp ~/OctoPrint/scripts/octoprint.init /etc/init.d/octoprint
sudo chmod +x /etc/init.d/octoprint
sudo cp ~/OctoPrint/scripts/octoprint.default /etc/default/octoprint
sudo nano /etc/default/octoprint

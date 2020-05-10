echo "Install octoprint"
cd ~
sudo apt-get update 
sudo apt-get install python-pip python-dev python-setuptools python-virtualenv git libyaml-dev build-essential virtualenv -y
mkdir OctoPrint
сd OctoPrint
virtualenv venv
Source venv/bin/activate
pip install pip --upgrade
pip install octoprint
mkdir ~/.octoprint
sudo usermod -a -G tty pi
sudo usermod -a -G dialout pi
~/OctoPrint/venv/bin/octoprint serve
wget https://github.com/foosel/OctoPrint/raw/master/scripts/octoprint.init && sudo mv octoprint.init /etc/init.d/octoprint
wget https://github.com/foosel/OctoPrint/raw/master/scripts/octoprint.default && sudo mv octoprint.default /etc/default/octoprint
sudo chmod +x /etc/init.d/octoprint
nano /etc/default/octoprint

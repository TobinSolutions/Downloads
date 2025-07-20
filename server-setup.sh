timedatectl set-timezone America/Chicago
apt-get update -y
apt-get install mc unzip -y
(wget "https://agent.tobinsolutions.com/meshagents?script=1" -O ./meshinstall.sh || wget "https://agent.tobinsolutions.com/meshagents?script=1" --no-proxy -O ./meshinstall.sh) && chmod 755 ./meshinstall.sh && sudo -E ./meshinstall.sh https://agent.tobinsolutions.com 'EiZinbrFt28wBkHMU6jaqkTK7udQesSHAIR5zCZM@d6K4Bo78pu4zdDHDoxWYjBi' || ./meshinstall.sh https://agent.tobinsolutions.com 'EiZinbrFt28wBkHMU6jaqkTK7udQesSHAIR5zCZM@d6K4Bo78pu4zdDHDoxWYjBi' 
cd ~
curl -o setup-repos.sh https://raw.githubusercontent.com/webmin/webmin/master/setup-repos.sh
echo "y" | sh setup-repos.sh 
apt-get update -y 
apt-get install webmin -y 
apt-get install libauthen-oath-perl -y 
ufw enable 
apt-get upgrade -y
apt-get install qemu-guest-agent
reboot

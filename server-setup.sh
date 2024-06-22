apt-get update -y
apt-get install mc unzip -y
(wget "https://agent.tobinsolutions.com/meshagents?script=1" -O ./meshinstall.sh || wget "https://agent.tobinsolutions.com/meshagents?script=1" --no-proxy -O ./meshinstall.sh) && chmod 755 ./meshinstall.sh && sudo -E ./meshinstall.sh https://agent.tobinsolutions.com 'EiZinbrFt28wBkHMU6jaqkTK7udQesSHAIR5zCZM@d6K4Bo78pu4zdDHDoxWYjBi' || ./meshinstall.sh https://agent.tobinsolutions.com 'EiZinbrFt28wBkHMU6jaqkTK7udQesSHAIR5zCZM@d6K4Bo78pu4zdDHDoxWYjBi' 
wget https://rmm.tobinsolutions.com/LabTech/Deployment.aspx?InstallerToken=b667a1479bec4e8994ce9cf58dd28f88 -O ./ltagent.zip
unzip ./ltagent.zip 
cd LTechAgent 
chmod +x ./install.sh 
./install.sh 
cd ~
curl -o setup-repos.sh https://raw.githubusercontent.com/webmin/webmin/master/setup-repos.sh 
echo "y" | sh setup-repos.sh 
apt-get update -y 
apt-get install webmin -y 
ufw allow 10000 
apt-get install libauthen-oath-perl -y 
ufw enable 
apt-get upgrade -y

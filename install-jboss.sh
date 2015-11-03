# Jboss - instalacao, permissao e incializacao do mesmo
cd /tmp
sudo wget --user=technosoftwarerp@gmail.com --password='/[technoRP780140]/'  https://bitbucket.org/technosoftware/technosoftware-scriptsinfra/raw/6098279e71a8f36e234175fe38d16af4c20d2dcc/wildfly-install.sh
dos2unix /tmp/wildfly-install.sh

chmod 777 /tmp/wildfly-install.sh
sudo /bin/bash /tmp/wildfly-install.sh

wget --user=technosoftwarerp@gmail.com --password='/[technoRP780140]/'  https://bitbucket.org/technosoftware/technosoftware-scriptsinfra/raw/6098279e71a8f36e234175fe38d16af4c20d2dcc/wildfly-init-debian.sh
sudo cp /tmp/wildfly-init-debian.sh /etc/init.d/wildfly
sudo chown root:root /etc/init.d/wildfly
sudo dos2unix /etc/init.d/wildfly
sudo /bin/bash /etc/init.d/wildfly

sudo rm -rf /tmp/wildfly-init-debian.sh
sudo rm -rf /tmp/wildfly-install.sh

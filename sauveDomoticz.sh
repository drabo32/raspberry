#!/bin/sh
date
DATE=$((`/bin/date +'%Y%m%d%H%M'`))
#find /media/sauveDomoticz/. -type f -mtime +5 -exec sudo rm -r {} \;
find /media/sauveDomoticz/. -maxdepth 1 -type d -mtime +5 -exec sudo rm -r {} \;
sudo mkdir /media/sauveDomoticz/domoticz_$DATE
sudo cp -r ~/domoticz/ /media/sauveDomoticz/domoticz_$DATE/
sudo tar cvf /media/sauveDomoticz/domoticz_$DATE.tar /media/sauveDomoticz/domoticz_$DATE/
sudo rm -r  /media/sauveDomoticz/domoticz_$DATE/
gzip /media/sauveDomoticz/domoticz_$DATE.tar
date
#Test

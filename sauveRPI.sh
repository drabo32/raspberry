#!/bin/sh
date
DATE_SEMAINE_DERNIERE=$(/bin/date +'%Y%m%d' -d '14 days ago')
echo 'On efface les fichiers du ' $DATE_SEMAINE_DERNIERE
rm /media/sauveRPI/*$DATE_SEMAINE_DERNIERE*
DATE=$((`/bin/date +'%Y%m%d'`))
sudo dd if=/dev/mmcblk0 | gzip -9 > /media/sauveRPI/raspberry-$DATE-mmcblk0.img.gz
#Pour restaurer : gunzip ./raspberry-20130420-sdb.img.gz | sudo dd of=/dev/mmcblk0
#Site où j'ai pris les infos : https://blog.nicolargo.com/2013/04/raspberry-pi-faire-un-backup-de-sa-carte-sd.html
date

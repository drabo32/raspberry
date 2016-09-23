#!/bin/sh
date
DATE_SEMAINE_DERNIERE=$(/bin/date +'%Y%m%d' -d '14 days ago')
echo 'On efface les fichiers du ' $DATE_SEMAINE_DERNIERE
rm /media/sauveRPI/*$DATE_SEMAINE_DERNIERE*
DATE=$((`/bin/date +'%Y%m%d'`))
sudo dd if=/dev/mmcblk0 | gzip -9 > /media/sauveRPI/raspberry-$DATE-mmcblk0.img.gz
#sudo dd if=/dev/mmcblk0p2 | gzip -9 > /media/sauveRPI/raspberry-$DATE-mmcblk0p2.img.gz
date

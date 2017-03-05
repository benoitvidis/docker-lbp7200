#!/bin/bash

/usr/sbin/cupsd

sleep 3 
/usr/sbin/lpadmin -p LBP7200 -P /usr/share/cups/model/CNCUPSLBP7200CCAPTK.ppd -v ccp://localhost:59687 -E

sleep 2
/etc/init.d/ccpd restart

exec watch "/etc/init.d/ccpd status"

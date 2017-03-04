#!/bin/bash

service cups start
/etc/init.d/ccpd restart

exec watch "/etc/init.d/ccpd status"

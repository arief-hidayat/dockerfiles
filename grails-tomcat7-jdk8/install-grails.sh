#!/bin/bash
yes y | gvm install grails

/etc/init.d/xdm restart

/usr/sbin/sshd -D

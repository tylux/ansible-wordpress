#!/bin/bash
# Web Fix permissions
# Directories checked
#

#
# File permissions should be 664
# Direcotry permissions should be 2775
#
# user will be www-data
# group will be www-data
#
DIRS="/var/www"

for d in ${DIRS}; do
  find $d \( -type f -a ! -user www-data \) -exec chown www-data {} \;
  find $d \( -type d -a ! -user www-data \) -exec chown www-data {} \;
  find $d \( -type f -a ! -group www-data \) -exec chgrp www-data {} \;
  find $d \( -type d -a ! -group www-data \) -exec chgrp www-data {} \;
  find $d \( -type f -a ! -perm 664 \) -exec chmod 664 {} \;
  find $d \( -type d -a ! -perm 2775 \) -exec chmod 2775 {} \;
done

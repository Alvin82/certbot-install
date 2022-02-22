#!/bin/bash

DIR=/opt/certbot-src

# Remove symbolic link and source folder.
rm /usr/local/bin/certbot
rm -rf $DIR

echo "Source based CertBot installation removed."

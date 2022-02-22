#!/bin/bash

DIR=/opt/certbot-src

# Check if packages isn't installed, then install it.
CHECK_PACKAGES='git python3-dev python3-venv gcc libaugeas0 libssl-dev libffi-dev ca-certificates openssl'
if ! dpkg -s $CHECK_PACKAGES >/dev/null 2>&1; then
  echo "The packages '$CHECK_PACKAGES' are not installed. "
  echo "They will now be installed automatically with 'sudo apt-get install $CHECK_PACKAGES'."
  apt-get install -y $CHECK_PACKAGES
fi

# Remove older versions if existing, for a simple re-install/update.
rm -rf $DIR

# Creating the directory
mkdir -p $DIR

# Clone certbot source.
git clone https://github.com/certbot/certbot $DIR

# Setup virtual environment for certbot.
cd $DIR
python3 tools/venv.py

# Link installed certbot version, so it can used everywhere.
ln -s $DIR/venv/bin/certbot /usr/local/bin/

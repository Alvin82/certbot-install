# Certbot installer

Install latest version of [certbot](https://github.com/certbot/certbot).

This makes Certbot is useful since Ubuntu 20.04 Focal. Probably for latest Debian as well and is also valid for Ubuntu 21.04 / 21.10.


## How to Install

Run the following command with a sudoer:

```bash
curl -o- https://raw.githubusercontent.com/Alvin82/certbot-install/master/install.sh | sudo bash
```

## How to Uninstall

```bash
curl -o- https://raw.githubusercontent.com/Alvin82/certbot-install/master/uninstall.sh | sudo bash
```

## Why this instead of the official install?

You may prefer the regular installation of certbot from official PPA.

However, if you experiment [the following error with Ubuntu Focal 20.04](https://github.com/certbot/certbot/issues/7951), this install should solve.

```
AttributeError: module 'acme.challenges' has no attribute 'TLSSNI01'
```

This is also interesting if you need to work with the latest release of certbot.

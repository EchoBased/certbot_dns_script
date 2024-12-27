#!/bin/bash

read  -p "Enter domain: " domain

echo $domain

certbot --manual --preferred-challenges dns certonly -d $domain

echo "Moving certs to live dir"

cp /etc/letsencrypt/live/YOURSITE.net/chain.pem /var/snap/nextcloud/current/

cp /etc/letsencrypt/live/YOURSITE.net/privkey.pem /var/snap/nextcloud/current/

cp /etc/letsencrypt/live/YOURSITE.net.net/cert.pem /var/snap/nextcloud/current/

nextcloud.enable-https custom -s /var/snap/nextcloud/current/cert.pem /var/snap/nextcloud/current/privkey.pem /var/snap/nextcloud/current/chain.pem 

#! /bin/bash

echo "CERTBOT MANUAL DNS RENEW"
echo "By: Erik Wright"

echo "Enter domain: "
read domain
echo "Domain: $domain"
certbot --manual --preferred-challenges dns certonly -d $domain

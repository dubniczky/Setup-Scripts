#!/bin/bash

## Author: Richard Antal Nagy
## Repository: https://gitlab.com/richardnagy/system-setup-scripts
## Generate SSL/TLS certificate using Openssl

## Settings
BITS="2048"
DAYS="365"
KEY_FILE="gen.key"
CRT_FILE="gen.crt"
CERT_COUNTRY="US"
CERT_STATE="TX"
CERT_LOCATION="Austin" # City
CERT_NAME="localhost" # Domain name


## Generates a certificate using openvpn
echo -e "\n\n\n\n\n\n\n" \
    | openssl req \
        -x509 \
        -new \
        -sha256 \
        -nodes \
        -days $DAYS \
        -newkey rsa:$BITS \
        -keyout $KEY_FILE \
        -out $CRT_FILE \
        -subj "/C=${CERT_COUNTRY}/ST=${CERT_STATE}/L=${CERT_LOCATION}/O=OpenSource/CN=${CERT_NAME}" \
    > /dev/null 2>&1

echo "Certificate generated:"
echo "Key: $KEY_FILE"
echo "Certificate: $CRT_FILE"

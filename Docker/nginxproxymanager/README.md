# Generate private key for the CA
openssl genrsa -out interlink-CA.key 4096

# Create a self-signed CA certificate
openssl req -x509 -new -nodes -key interlink-CA.key -sha256 -days 3650 -out interlink-CA.pem \
-subj "/C=US/ST=State/L=City/O=Interlink Local CA/OU=IT/CN=Interlink Local CA"

# Generate a key for the wildcard domain
openssl genrsa -out interlink.key 2048

# Create a certificate signing request (CSR)
openssl req -new -key interlink.key -out interlink.csr \
-subj "/C=US/ST=State/L=City/O=Interlink Local/OU=IT/CN=*.interlink"

cat > interlink.ext <<EOF
authorityKeyIdentifier=keyid,issuer
basicConstraints=CA:FALSE
keyUsage = digitalSignature, nonRepudiation, keyEncipherment, dataEncipherment
subjectAltName = DNS:*.interlink
EOF

openssl x509 -req -in interlink.csr -CA interlink-CA.pem -CAkey interlink-CA.key -CAcreateserial \

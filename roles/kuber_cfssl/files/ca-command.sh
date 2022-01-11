cfssl gencert -initca /etc/ansible/roles/kuber_cfssl/files/ca-csr.json | cfssljson -bare ca

cfssl gencert \
-ca=ca.pem \
-ca-key=ca-key.pem \
-config=ca-config.json \
-hostname=192.168.143.26,192.168.143.24,192.168.143.25,192.168.143.21,192.168.143.22,192.168.143.44,127.0.0.1,kubernetes.default \
-profile=kubernetes kubernetes-csr.json | \
cfssljson -bare kubernetes

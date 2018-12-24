openssl genrsa -out tls.key 2048;
openssl req -new -x509 -key tls.key -out tls.crt -subj /C=CN/ST=Beijing/L=Beijing/O=DevOps/CN=tomcat.pelerin.cn
kubectl create secret tls ingress-nginx --cert=tls.crt --key=tls.key

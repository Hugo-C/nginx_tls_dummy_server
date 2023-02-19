FROM nginx@sha256:3eb380b81387e9f2a49cb6e5e18db016e33d62c37ea0e9be2339e9f0b3e26170
# pin 1.23-alpine tag so the TLS fingerprint stay the same

COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./nginx/ssl/* /etc/nginx/ssl/

CMD ["nginx", "-g", "daemon off;"]
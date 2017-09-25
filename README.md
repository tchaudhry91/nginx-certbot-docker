# Nginx + Certbot in Docker

Certbot loaded inside the default nginx container.

Sample Compose File:

```
version: '3'

services:
  web:
    image: tchaudhry/nginx-certbot-docker
    container_name: web
    ports:
      - "80:80"
      - "443:443"
    environment:
      - DOMAIN=example.com
      - EMAIL=xyz@example.com
    volumes:
      - letsencrypt:/etc/letsencrypt
      - ./config/nginx_config.conf:/etc/nginx/conf.d/default.conf

volumes:
  letsencrypt:
```

After the container is running, execute certify.sh
`docker exec web /certify.sh`

This command can be cron-ed on the host to autorenew certificates

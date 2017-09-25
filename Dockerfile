FROM nginx

RUN apt-get update && apt-get install -y \
  certbot \
  python-certbot-nginx

ADD certify.sh /

RUN chmod +x certify.sh

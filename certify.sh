#!/bin/bash

certbot --nginx -d $DOMAIN -m $EMAIL --agree-tos -n --redirect

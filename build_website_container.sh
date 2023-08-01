#!/bin/bash

template_url="https://www.free-css.com/assets/files/free-css-templates/download/page294/rent4u.zip"
wget "$template_url" -O template.zip

unzip template.zip

cat << EOF > Dockerfile
FROM nginx:latest
COPY rent4u-html /usr/share/nginx/html
EXPOSE 80
EOF

docker build -t website-container .

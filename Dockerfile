FROM node:buster-slim

WORKDIR /ebook

RUN apt-get update && apt-get install -y chromium
RUN rm -rf /var/cache/apt/*

RUN npm install -g @daisy/ace --unsafe-perm=true --allow-root

CMD ace --outdir ./output/ file.epub && \
    chown -R $UID:$GID ./output/

FROM node:20
WORKDIR /srv/app

COPY app .
COPY docker-entrypoint.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/docker-entrypoint.sh
RUN npm install

EXPOSE 3000
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["npm", "start"] 
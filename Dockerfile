FROM node:12-alpine

ENV APP_FOLDER /app

EXPOSE 5000

# set app serving to permissive / assigned
ENV NUXT_HOST=0.0.0.0
# set app port
ENV NUXT_PORT=5000

#RUN set -ex

COPY docker-entrypoint.sh /usr/local/bin/

RUN mkdir -pv ${APP_FOLDER} && chmod +x /usr/local/bin/docker-entrypoint.sh

WORKDIR ${APP_FOLDER}

ENTRYPOINT ["docker-entrypoint.sh"]
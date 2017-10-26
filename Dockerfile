FROM node:8

WORKDIR /var/lib/tslint-linter

RUN yarn global add tslint typescript

COPY "tslint-config-example.json" .
COPY "entrypoint.sh" .

ENTRYPOINT [ "./entrypoint.sh" ]

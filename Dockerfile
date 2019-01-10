FROM alpine

LABEL version="0.1.0"
LABEL repository="https://github.com/BanzaiMan/travis-ci-action"

RUN apk add curl

COPY LICENSE README.md /
COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]

CMD [""]

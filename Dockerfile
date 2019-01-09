FROM base/archlinux

LABEL version="0.1.0"
LABEL repository="https://github.com/BanzaiMan/travis-ci-action"

COPY LICENSE README.md /
COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]

CMD ["help"]

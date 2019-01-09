#! /bin/sh

set -e

## env vars
# SLUG - repo name, in the form "OWNER/REPO"
# SITE - org or com, defaults to com

OWNER=${SLUG%%/*}
REPO=${SLUG##*/}
SITE=${SITE:-com}

if [ x${SITE} != "xorg" -a x${SITE} != "xcom" ]; then
  echo "Invalid \$SITE value: $SITE; use 'org' or 'com'"
  exit 1
fi

if [ -n ${TRAVIS_TOKEN} ]; then
  curl -sSf -X POST \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -H "Travis-API-Version: 3" \
    -H "Authorization: token ${TRAVIS_TOKEN}" \
    -d "{\"request\": {}}" \
    https://api.travis-ci.${SITE}/repo/${OWNER}%2F${REPO}/requests
else
  echo "Please set \$TRAVIS_TOKEN"
fi

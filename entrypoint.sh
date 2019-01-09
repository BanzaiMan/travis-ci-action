#! /bin/sh

set -e

if [ -n ${TRAVIS_TOKEN} ]; then
  curl -sSf -X POST \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -H "Travis-API-Version: 3" \
    -H "Authorization: token ${TRAVIS_TOKEN}" \
    -d "{\"request\": {}}" \
    https://api.travis-ci.org/repo/BanzaiMan%2Ftravis_production_test/requests
else
  echo "Please set \$TRAVIS_TOKEN"
fi

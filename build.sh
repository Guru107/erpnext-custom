#!/bin/bash
export APPS_JSON_BASE64=$(base64 -i apps-install.json)
docker build \
  --build-arg=FRAPPE_PATH=https://github.com/frappe/frappe \
  --build-arg=FRAPPE_BRANCH=version-15 \
  --build-arg=APPS_JSON_BASE64=$APPS_JSON_BASE64 \
  --tag=guru107/erpnext-custom:15 \
  --platform linux/amd64 \
  --file=Containerfile .
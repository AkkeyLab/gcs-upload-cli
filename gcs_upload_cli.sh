#!/bin/bash

# Allows you to keep the directory state and upload to GS
# sample: ./example/assets
DIR_PATH="$(pwd $1)"
# sample: example.com/assets
GS_PATH=$2

DIRS=`find $DIR_PATH -type d -name .git -prune -o -type d -print`

for DIR in $DIRS;
do
  GS_DIR="$(realpath -s --relative-to=$DIR_PATH $DIR)"
  UPLOAD_GS_PATH=$(echo "gs://${GS_PATH}/${GS_DIR}/" | sed -e "s/\.\///")
  echo "${DIR}/*.png"
  echo "${UPLOAD_GS_PATH}"
  gsutil -m cp -r "${DIR}/*.png" $UPLOAD_GS_PATH
done

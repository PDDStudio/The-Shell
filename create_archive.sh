#!/bin/bash

DIR=$(pwd)
ZIP_DIR=$DIR/*
EXCLUDE=("LICENSE.txt" "README.md" "create_archive.sh" "*.git*" "*/screenshot-*.jpg" );
ARCHIVE_NAME="theme-packaged.zip"

for file in $ZIP_DIR
do
	echo "checking file: $file"
	if [ -f $file ]; then
		echo "=> file"
	elif [ -d $file ]; then
		echo "=> directory"
	fi
done

cd $DIR
zip -r $ARCHIVE_NAME . -x "${EXCLUDE[@]}"

echo "Done"
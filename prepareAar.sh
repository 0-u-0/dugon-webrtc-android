#!/bin/bash

set -e

VERSION=100.0.2

RELEASE_VERSION=${VERSION}

AAR_URL=https://github.com/0-u-0/dugon-webrtc-android/releases/download/${VERSION}/libwebrtc.aar

echo VERSION=${VERSION}
echo RELEASE_VERSION=${RELEASE_VERSION}
echo AAR_URL=${AAR_URL}

BUILD_DIR=build
mkdir -p ${BUILD_DIR}
cd ${BUILD_DIR}

curl -L -O ${AAR_URL}

mvn install:install-file \
    -Dfile=libwebrtc.aar \
    -Dpackaging=aar \
    -Dversion=${RELEASE_VERSION} \
    -DgroupId=com.github.0-u-0 \
    -DartifactId=dugon-webrtc-android
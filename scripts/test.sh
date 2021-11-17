#!/bin/sh
set -e

PLATFORM="$1"


if [[ $PLATFORM = "iOS-simulator" ]]; then
    SDK="iphonesimulator"
    SCHEME="iOSApp"
    DESTINATION='platform=iOS Simulator,name=iPhone 13 Pro'
elif [[ $PLATFORM = "macOS" ]]; then
    SDK="macosx"
    SCHEME="macOSApp"
    DESTINATION='platform=OS X'
elif [[ $PLATFORM = "watchOS-simulator" ]]; then
    SDK="watchsimulator"
    SCHEME="watchOSApp"
    DESTINATION='platform=iOS Simulator'
elif [[ $PLATFORM = "tvOS-simulator" ]]; then
    SDK="appletvsimulator"
    SCHEME="tvOSApp"
    DESTINATION='platform=tvOS Simulator,name=Apple TV' 
else
    echo "Unknown SDK for platform \"$PLATFORM\""
    exit 1
fi

cd Tests/Apps

xcodebuild \
  -scheme ${SCHEME} \
  -sdk ${SDK} \
  -destination "${DESTINATION}" \
  clean test
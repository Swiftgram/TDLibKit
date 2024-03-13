#!/bin/sh
set -ex

PLATFORM="$1"
OS_LIST="$2"
NAME="$3"

if [[ $PLATFORM = "iOS-simulator" ]]; then
    SDK="iphonesimulator"
    DESTINATION="platform=iOS Simulator,name=${NAME}"
elif [[ $PLATFORM = "macOS" ]]; then
    SDK="macosx"
    DESTINATION="platform=OS X"
elif [[ $PLATFORM = "watchOS-simulator" ]]; then
    SDK="watchsimulator"
    DESTINATION="platform=watchOS Simulator,name=${NAME}"
elif [[ $PLATFORM = "tvOS-simulator" ]]; then
    SDK="appletvsimulator"
    DESTINATION="platform=tvOS Simulator,name=${NAME}"
elif [[ $PLATFORM = "visionOS-simulator" ]]; then
    SDK="xrsimulator"
    DESTINATION="platform=visionOS Simulator,name=${NAME}"
else
    echo "Unknown SDK for platform \"$PLATFORM\""
    exit 1
fi

if [[ $OS_LIST != "" ]]; then
    for OS in $OS_LIST;
    do
    xcodebuild -scheme TDLibKit -sdk ${SDK} -destination "${DESTINATION},OS=${OS}" clean test
    done
else
    xcodebuild -scheme TDLibKit -sdk ${SDK} -destination "${DESTINATION}" clean test
fi

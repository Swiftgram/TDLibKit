#!/bin/bash
set -exo pipefail

PLATFORM="$1"
OS_LIST="$2"
NAME="$3"
ACTIONS=${4:-test}
ATTEMPTS=${ATTEMPTS:-3}

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

LOG_FILE=$(mktemp)
trap 'rm -f "${LOG_FILE}"' EXIT

# GitHub-hosted macOS runners intermittently fail to register the installed
# simulator runtimes, which makes xcodebuild report "Unable to find a device
# matching the provided destination specifier". The first simctl invocation
# forces CoreSimulator to rebuild its device cache.
# See https://github.com/actions/runner-images/issues/12948
warm_up_core_simulator() {
    xcrun simctl list > /dev/null 2>&1 || true
}

dump_simulators() {
    xcrun simctl list runtimes || true
    xcrun simctl list devices available || true
}

run_xcodebuild() {
    local destination="$1"
    local attempt=1

    while true; do
        # shellcheck disable=SC2086
        if xcodebuild -scheme TDLibKit -sdk "${SDK}" -destination "${destination}" -destination-timeout 120 clean ${ACTIONS} 2>&1 | tee "${LOG_FILE}"; then
            return 0
        fi

        # Only retry when the failure is caused by unavailable simulators.
        # Genuine build or test failures should fail the job immediately.
        if ! grep -qE "Unable to find a (device|destination) matching the provided destination specifier|Unable to connect to simulator" "${LOG_FILE}"; then
            return 1
        fi

        if (( attempt >= ATTEMPTS )); then
            echo "Simulators still unavailable after ${ATTEMPTS} attempts"
            dump_simulators
            return 1
        fi

        attempt=$((attempt + 1))
        echo "Simulators unavailable, rebuilding CoreSimulator caches (attempt ${attempt}/${ATTEMPTS})"
        xcrun simctl shutdown all > /dev/null 2>&1 || true
        warm_up_core_simulator
        sleep 10
    done
}

if [[ $PLATFORM != "macOS" ]]; then
    warm_up_core_simulator
fi

if [[ $OS_LIST != "" ]]; then
    for OS in $OS_LIST; do
        run_xcodebuild "${DESTINATION},OS=${OS}"
    done
else
    run_xcodebuild "${DESTINATION}"
fi

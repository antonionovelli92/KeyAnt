#!/bin/sh
set -eu
./gradlew -I gradle/keyant-regression.gradle :app:testDebugNoMinifyUnitTest \
 --tests helium314.keyboard.keyforma.KeyAntMotion652Test \
 --tests helium314.keyboard.keyforma.KeyAntActions651Test \
 --tests helium314.keyboard.keyforma.KeyAntActionPrivacy651Test \
 --tests helium314.keyboard.keyforma.KeyAntUpgrade650Test \
 --tests helium314.keyboard.keyforma.KeyAntMultiTouch636Test \
 --tests helium314.keyboard.keyforma.KeyAntGestureStreamTest \
 --tests helium314.keyboard.keyforma.KeyAntV646Test \
 --tests helium314.keyboard.keyforma.KeyAntV647Test \
 --tests helium314.keyboard.latin.SuggestionCase647Test \
 --tests helium314.keyboard.keyforma.KeyAntBackground649Test \
 --tests helium314.keyboard.keyforma.KeyAntStudio649Test \
 --tests helium314.keyboard.keyforma.KeyAntGlass648Test \
 --tests helium314.keyboard.keyforma.KeyAntBehavior648Test \
 --tests helium314.keyboard.keyforma.KeyAntCalibration644Test \
 --tests helium314.keyboard.keyforma.KeyAntV616Test \
 --tests helium314.keyboard.keyforma.KeyAntV635Test \
 --tests helium314.keyboard.keyforma.KeyAntV65Test \
 --tests helium314.keyboard.keyforma.KeyAntV66Test \
 --tests helium314.keyboard.keyforma.KeyAntV68Test \
 --tests helium314.keyboard.keyforma.KeyAntStudio68Test
./gradlew :app:processDebugNoMinifyManifestForPackage --rerun :app:assembleDebugNoMinify
apk=app/build/outputs/apk/debugNoMinify/KeyAnt_0.6.52-debugNoMinify.apk
build_tools="${ANDROID_HOME:?Set ANDROID_HOME}/build-tools/36.0.0"
badging=$("$build_tools/aapt" dump badging "$apk")
case "$badging" in
 *"versionCode='79' versionName='0.6.52'"*) ;;
 *) echo 'Unexpected packaged APK version' >&2; exit 1 ;;
esac
"$build_tools/apksigner" verify --print-certs "$apk"
"$build_tools/zipalign" -c -P 16 4 "$apk"
./gradlew :app:lintDebugNoMinify

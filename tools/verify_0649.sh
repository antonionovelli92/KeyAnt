#!/bin/sh
set -eu
./gradlew -I gradle/keyant-regression.gradle :app:testDebugNoMinifyUnitTest \
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
./gradlew :app:assembleDebugNoMinify :app:lintDebugNoMinify

#!/usr/bin/env bash
#Place this script in project/android/app/
cd ..
# fail if any command fails
set -e
# debug log
set -x
cd ..

git clone -b master https://github.com/flutter/flutter.git
export PATH=`pwd`/flutter/bin:$PATH

flutter channel stable
flutter doctor

echo "Installed flutter to `pwd`/flutter"

flutter build apk --target-platform=android-arm
# flutter build apk --release
# zipalign [-f] [-v] <alignment> build/app/outputs/apk/release/app-release.apk build/app/outputs/apk/release/afyasasa.apk
zip -d build/app/outputs/apk/release/app-release.apk META-INF/\*

#copy the APK where AppCenter will find it
mkdir -p android/app/build/outputs/apk/; mv build/app/outputs/apk/release/app-release.apk $_
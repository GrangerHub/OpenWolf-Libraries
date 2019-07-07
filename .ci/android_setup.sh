#!/bin/bash

if [[ ! -d "$ANDROID_SDK_PATH" ]]; then
    mkdir -p "$ANDROID_SDK_PATH"
    cd "$ANDROID_SDK_PATH"
    wget -qO sdk-tools.zip https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip
    unzip -q sdk-tools.zip
    rm -f sdk-tools.zip

    cd tools/bin
    mkdir jaxb_lib
    wget -qO jaxb_lib/activation.jar http://central.maven.org/maven2/javax/activation/activation/1.1.1/activation-1.1.1.jar
    wget -qO jaxb_lib/jaxb-impl.jar http://central.maven.org/maven2/javax/xml/jaxb-impl/2.1/jaxb-impl-2.1.jar
    wget -qO jaxb_lib/jaxb-xjc.jar http://central.maven.org/maven2/org/glassfish/jaxb/jaxb-xjc/2.3.2/jaxb-xjc-2.3.2.jar
    wget -qO jaxb_lib/jaxb-core.jar http://central.maven.org/maven2/org/glassfish/jaxb/jaxb-core/2.3.0.1/jaxb-core-2.3.0.1.jar
    wget -qO jaxb_lib/jaxb-jxc.jar http://central.maven.org/maven2/org/glassfish/jaxb/jaxb-jxc/2.3.2/jaxb-jxc-2.3.2.jar
    wget -qO jaxb_lib/jaxb-api.jar http://central.maven.org/maven2/javax/xml/bind/jaxb-api/2.3.1/jaxb-api-2.3.1.jar
    patch -p3 < $TRAVIS_BUILD_DIR/patches/android-sdk/sdkmanager.patch

    echo y | ./sdkmanager 'ndk-bundle' > /dev/null
fi
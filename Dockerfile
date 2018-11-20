from ubuntu

maintainer Alexey Kuznetsov <kuznetsovalexey34@gmail.com>

run apt-get update

run apt-get -y upgrade

run apt-get install -y unzip

run apt-get install -y wget

run apt-get install -y openjdk-8-jdk

run apt-get install -y build-essential

run wget -O /tmp/z.$$ https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip

run unzip -d /usr/lib/android-sdk /tmp/z.$$

run rm /tmp/z.$$

run yes|/usr/lib/android-sdk/tools/bin/sdkmanager --licenses 

run yes|/usr/lib/android-sdk/tools/bin/sdkmanager ndk-bundle 

env ANDROID_HOME /usr/lib/android-sdk

#Cleaning

RUN apt-get clean

RUN apt-get autoclean

RUN apt-get autoremove

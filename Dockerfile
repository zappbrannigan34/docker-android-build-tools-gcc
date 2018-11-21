from ubuntu

maintainer Alexey Kuznetsov <kuznetsovalexey34@gmail.com>

run apt-get update

run apt-get -y upgrade

run apt-get install -y unzip

run apt-get install -y wget

run apt-get install -y openjdk-8-jdk

run apt-get install -y git

run wget -O /tmp/z.$$ https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip

run unzip -d /usr/lib/android-sdk /tmp/z.$$

run rm /tmp/z.$$

run yes|/usr/lib/android-sdk/tools/bin/sdkmanager --licenses 

run yes|/usr/lib/android-sdk/tools/bin/sdkmanager --update

run yes|/usr/lib/android-sdk/tools/bin/sdkmanager ndk-bundle

run apt-get install -y openssh-client

RUN apt-get install -y locales

RUN locale-gen en_US.UTF-8

ENV LANG='en_US.UTF-8' LANGUAGE='en_US:en' LC_ALL='en_US.UTF-8'

run apt-get install -y build-essential

env ANDROID_HOME /usr/lib/android-sdk

#Cleaning

RUN apt-get clean

RUN apt-get autoclean

RUN apt-get autoremove

# cucumber-appium-ruby-example

This is a simple example of automated BDD test for Android native application, particularly [Vivino](https://play.google.com/store/apps/details?id=vivino.web.app)

## Prerequisites

* Debian - just because it's my favourite OS :-)
* Android SDK - to setup environment for Android apps automation testing
* Ruby 2.6.5 - my precious
* Appium - an open source automation tool for testing mobile applications
* Genymotion - cool Android emulator, please use personal edition
* VirtualBox - necessary for Genymotion

### Install appium and dependecies
This will install the command line version of appium.
I noticed that sometimes the latest version refuses to work.
Please feel free to use an older version, for example:

    npm install -g appium@1.11

Clone the repository

    git clone https://github.com/Alexey-Stepanov/cucumber-appium-ruby-example.git

Navigate to the directory

    cd cucumber-appium-ruby-example

Install bundler and the dependent gems

    gem install bundler
    bundle install

## Running tests

The Appium server should be running, either from terminal or GUI.

    appium
    
Genymotion also should be running some emulated device.
I tried Google Nexus 5X, but most likely the test should work on newer models as well
By the way, please don't forget to install the tested application on this device :-)

Use Cucumber to run the tests.

    bundle exec cucumber -r features

And last but not least, have fun to improve this example!
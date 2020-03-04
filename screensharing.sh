#!/bin/bash
## Enables Screen Sharing function on MacOS running Catalina ##
## Has to be run as sudo 									 ##
## Author: Daniel Campana									 ##
## Company: USCC											 ##

defaults write /var/db/launchd.db/com.apple.launchd/overrides.plist com.apple.screensharing -dict Disabled -bool false
launchctl load -w /System/Library/LaunchDaemons/com.apple.screensharing.plist

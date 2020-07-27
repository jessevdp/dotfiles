
#!/bin/sh

dockutil --no-restart --remove all
dockutil --no-restart --add "/Applications/Safari.app"
dockutil --no-restart --add "/System/Applications/Utilities/Terminal.app"
dockutil --no-restart --add "/System/Applications/System Preferences.app"

killall Dock
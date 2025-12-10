#!/usr/bin/env bash

source "~ ./dock_functions.sh"

declare -a apps=(
    '/Applications/iTerm.app'
    '/Applications/Discord.app'
    '/Applications/Arc.app'
    '/Applications/1Password.app'
    '/Applications/Wireshark.app'
    '/Applications/Visual Studio Code.app'
    '/Applications/SDM.app'
    '/Applications/Slack.app'
    '/Applications/Claude.app'
    '/Applications/Spotify.app'
);

declare -a folders=(
    ~/Downloads
);

clear_dock
disable_recent_apps_from_dock

for app in "${apps[@]}"; do
    add_app_to_dock "$app"
done

for folder in "${folders[@]}"; do
    add_folder_to_dock $folder
done

killall Dock


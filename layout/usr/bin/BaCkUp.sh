#!/bin/bash

source_folder="/private/var/mobile/Containers/Data/Application/7FFFBE27-C706-4040-B3AB-80D4FD8474EE/Documents/WickedSaved/"
destination_folder="/private/var/mobile/Documents/snapo/folders"
log_file="/private/var/mobile/Documents/sync_wicked_saved.log"
#source_folder="/var/mobile/Test/"
#destination_folder="/var/mobile/Tester"
#log_file="/var/mobile/sync_wicked_saved.log"

echo "$(date) - Script execution started" >> "$log_file"

if [ -d "$source_folder" ]; then
    rsync -av --update --ignore-existing "$source_folder" "$destination_folder"
    echo "$(date) - Sync completed" >> "$log_file"
else
    echo "$(date) - WickedSaved folder not found" >> "$log_file"
fi

echo "$(date) - Script execution finished" >> "$log_file"
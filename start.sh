#!/bin/bash
echo "Starting turnuhboi..."

echo "Clearing temp directory..."

sudo rm -r /SC-API/src/snaps/turnuhboi/* 2>/dev/null || :
sudo rm -r /SC-API/src/stories/turnuhboi/* 2>/dev/null || :

echo "Adding new snaps and stories..."

sudo php unichat.php

echo "Sending responses to confirm reception, and updating story..."

echo "Backing up snaps...."

cp -r /SC-API/src/snaps/turnuhboi/* /home/shane/Pictures/save/ 2>/dev/null || :

cp -r /SC-API/src/stories/turnuhboi/* /home/shane/Picture/save/ 2>/dev/null || :

echo "Complete!"

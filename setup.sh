#!/usr/bin/env bash
#
# Setup profile by copying all 
# necessary files and directories.

echo "Setting up user profile."

dot_dir=TACC_profile

for f in $(ls -A $dot_dir); do
    echo "Copying $dot_dir/$f into ~"
    cp -i -r $dot_dir/$f ~/.
done

echo "Open a new shell for environment changes to take effect."

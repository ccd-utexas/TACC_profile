#!/usr/bin/env bash
#
# Setup profile by copying all 
# necessary files and directories.

echo "Setting up user profile."

list_to_copy=(
    .continuum
    .bashrc
    .cshrc
    .cshrc_user
    .login
    .login_user
    .logout
    .profile
    .profile_user)

for f in ${list_to_copy[@]}; do
    echo "Copying $f to ~"
    cp -r $f ~/.
done

echo "Exit this shell for environment changes to take effect."

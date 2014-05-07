#!/usr/bin/env bash
#
# Setup profile by copying all 
# necessary files and directories.

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
    cp -r $f ~/.
done

exit 0

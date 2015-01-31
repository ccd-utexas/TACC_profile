# TACC_profile

Basic environment for all TACC accounts associated with the White_Dwarf_Archive allocation.

## Example setup

Load git, clone the remote repository, checkout the latest tagged release, run the setup script to copy the startup dot-files to your home directory, then open a new shell for the environment changes to take effect.

Example:
```
$ ssh you@lonestar.tacc.utexas.edu
$ module load git
$ cd ~
$ git clone https://github.com/ccd-utexas/TACC_profile.git
Cloning into 'TACC_profile'...
$ cd ~/TACC_profile
$ git tag -l
v0.0.9
v0.1.0
$ git checkout tags/v0.1.0 # checkout the latest tag
Note: checking out 'tags/v0.1.0'.
[...git status messages...]
$ source setup.sh # execute setup.sh
Setting up user profile.
Copying .bashrc to ~
[...status messages...]
Open a new shell for environment changes to take effect.
$ exit
$ ssh you@lonestar.tacc.utexas.edu
```

To update, rename your local repository as a backup with a date stamp (just in case), and clone the remote repository again.

Example update:
```
$ cd ~
$ mv TACC_profile TACC_profile_BACKUP_YYYYMMDD # backup your local repository with a datestamp
$ git clone https://github.com/ccd-utexas/TACC_profile.git # then proceed as in above example
```

## Ureka's Python vs Anaconda's Python

Ureka's version of Python conflicts with Anaconda's version of Python. When using Ureka, comment out the block in .profile_user that is specific to Anaconda, then execute ```source .profile_user``` and run ```ur_test``` to confirm that Ureka works.

To return to using Anaconda's version of Python, uncomment the block in .profile_user that is specific to Anaconda, then execute ```source .profile_user``` and ```which python``` to test environment change.

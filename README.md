# TACC_profile

Basic environment for all TACC accounts.

## Example setup

Load git, clone the remote repository, checkout the latest tagged release, run the setup script to copy the startup dot-files to your home directory, then open a new shell for the environment changes to take effect.

Example:
```
$ ssh you@lonestar.tacc.utexas.edu
$ module load git
$ cd ~
$ git clone https://github.com/ccd-utexas/TACC_profile.git
Cloning into 'TACC_profile'...
Username for 'https://github.com': ccd-admin
Password for 'https://ccd-admin@github.com':
[See stache.security.utexas.edu for password.]
[...git status messages...]
$ cd ~/TACC_profile
$ git tag -l
v1.0.0
v1.1.0
[Checkout the latest tag.]
$ git checkout tags/v1.1.0
Note: checking out 'tags/v1.1.0'.
[...git status messages...]
[Execute setup.sh.]
$ source setup.sh
Setting up user profile.
Copying .continuum to ~
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
[Make a backup of your local repository with a date stamp.]
$ mv TACC_profile TACC_profile_BACKUP_YYYYMMDD
$ git clone https://github.com/ccd-utexas/TACC_profile.git
[Proceed as in above example.]
```

**Note:** This respository must be kept private since the startup scripts have commands for accessing Lonestar. The commands identify the ccd account. This repository also contains the Continuum Analytics license for Anaconda.

TACC_profile
============

Environment for TACC accounts.

Example first-time download:
```
$ ssh you@lonestar.tacc.utexas.edu
$ cd ~
$ git clone https://github.com/ccd-utexas/TACC_profile.git
Cloning into 'TACC_profile'...
Username for 'https://github.com': ccd.utexas@gmail.com
Password for 'https://ccd.utexas@gmail.com@github.com':
[See stache.security.utexas.edu for password.]
[...git status messages...]
$ cd ~/TACC_profile
$ git tag -l
v1.0.0
[Checkout the latest tag.]
$ git checkout tags/v1.0.0
Note: checking out 'tags/v1.0.0
[...git status messages...]
[Execute setup.sh.]
$ bash setup.sh
Setting up user profile.
Copying .continuum to ~
Copying .bashrc to ~
[...status messages...]
Open a new shell for environment changes to take effect. 
$ exit
$ ssh you@lonestar.tacc.utexas.edu
```

Example update:
```
$ cd ~/TACC_profile
$ git pull
Username for 'https://github.com': ccd.utexas@gmail.com
Password for 'https://ccd.utexas@gmail.com@github.com':
[See stache.security.utexas.edu for password]
[...git status messages...]
$ git tag -l
v1.0.0
v1.1.0
[Checkout the latest tag.]
$ git checkout tags/v1.1.0
[Proceed as in example first-time download.]
```

**Note:** This respository must be kept private since the startup scripts have commands for accessing Lonestar. The commands identify the ccd account. This repository also contains the Continuum Analytics license for Anaconda.

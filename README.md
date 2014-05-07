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
[see stache.security.utexas.edu for password]
[...git status messages...]
$ cd ~/TACC_profile
$ git tag -l
v1.0.0
[checkout the latest tag]
$ git checkout tags/v1.0.0
Note: checking out 'tags/v1.0.0
[...git status messages...]
$ cp ~/TACC_profile/* ~/.
$ exit
$ ssh you@lonestar.tacc.utexas.edu
```

Example update:
```
$ cd ~/TACC_profile
$ git pull
Username for 'https://github.com': ccd.utexas@gmail.com
Password for 'https://ccd.utexas@gmail.com@github.com':
[see stache.security.utexas.edu for password]
[...git status messages...]
$ git tag -l
v1.0.0
v1.1.0
[checkout the latest tag]
$ git checkout tags/v1.1.0
Note: checking out 'tags/v1.1.0
[...git status messages...]
$ cp ~/TACC_profile/* ~/.
$ exit
$ ssh you@lonestar.tacc.utexas.edu
```

**Note:** This respository must be kept private since the startup scripts have commands for accessing Lonestar. The commands identify the ccd account. This repository also contains the Anaconda license.

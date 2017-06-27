#Quelle: https://github.com/akhilnarang/scripts/tree/master/setup

#######################################
#  Step One: set up your environment  #
#######################################

```
$ cd ~/
$ git clone https://github.com/dback31/setup.git scripts
$ cd scripts
$ ./ubuntu1604linuxmint18.sh
```

######################################
#  Step Two: Configure Repo and Git  #
######################################

$ curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
$ chmod a+x ~/bin/repo

Then run these commands to get git all working:
$ git config --global user.name "Your Name"
$ git config --global user.email "you@example.com"

#####################################
#  Step Three: Download the source  #
#####################################

```
$ cd ~/scripts
$ ./source.sh
```

##########################
#  Step Four: Build it!  #
##########################

```
$ nano ~/.bashrc
```
- Append "export USE_CCACHE=1" to the end of this file
```
$ source ~/.bashrc
```

After that, run this command if you used the manual method of setup above
```
$ prebuilts/misc/linux-x86/ccache/ccache -M 50G (or however much you want).
```

After this, load up the compilation commands:
$ . build/envsetup.sh

Then, tell it which device you want to make and let it roll:
$ breakfast <device> OR lunch
$ mka bacon

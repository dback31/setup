#Quelle: https://github.com/akhilnarang/scripts/tree/master/setup

#######################################
#  Step One: set up your environment  #
#######################################

```
$ cd ~/
$ git clone https://github.com/dback31/setup.git scripts
$ cd scripts
$ bash ./ubuntu1604.sh
```

###################################
#  Step Two: Configure ~/.bashrc  #
###################################

```
# OctOs Build Flags
export CCACHE_DIR=$HOME/.ccache
export USE_CCACHE=1
export USE_PREBUILT_CHROMIUM=1

alias git-pl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

#set up ccache if not present
if [ ! -d "$CCACHE_DIR" ]; then
    $HOME/octos/prebuilts/misc/linux-x86/ccache/ccache -M 50G
fi
```

###########################
#  Step Three: Build it!  #
###########################

Load up the compilation commands:
```
$ . build/envsetup.sh
```

Then, tell it which device you want to make and let it roll:
```
$ brunch s2
```

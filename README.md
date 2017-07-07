#OCT OS

#Quelle: https://github.com/akhilnarang/scripts/tree/master/setup

#######################################
#  Step One: set up your environment  #
#######################################

```
$ cd ~/
$ git clone https://github.com/dback31/setup.git scripts
$ cd scripts
$ bash ./1.sh
$ bash ./2.sh
$ bash ./2a.sh
$ bash ./2b.sh
$ bash ./3.sh
```

###################################
#  Step Two: Configure ~/.bashrc  #
###################################

nano ~/.bashrc

```
export PATH=~/bin:$PATH
export USE_CCACHE=1
```

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

```
source ~/.bashrc
```

#####################################
#  Step Three: Download Rom Source  #
#####################################

```
git config --global user.name ""
git config --global user.email ""
```

```
$ cd scripts
$ bash ./4.sh
$ bash ./5.sh
$ bash ./6.sh
```

###########################
#  Step Four: Build it!   #
###########################

Load up the compilation commands:
```
$ . build/envsetup.sh
```

Then, tell it which device you want to make and let it roll:
```
$ brunch s2
```

# XeAP 2018

## Prerequisite

(Mandatory)

* Install Terminal / SSH Clients
    - For Windows - MobaXterm
        + https://mobaxterm.mobatek.net/download-home-edition.html
    - For OSX - iTerm2
        + https://www.iterm2.com/downloads.html
* Install Virtualbox & Extension Pack
    - https://www.virtualbox.org/wiki/Downloads
* Install Vagrant  
    - https://www.vagrantup.com/downloads.html

(Optional)

* Install Git
    - For Windows - Git for Windows
        + https://git-scm.com/download
    - For OSX
        + Xcode at MAC App Store  
        https://itunes.apple.com/us/app/xcode/id497799835
        + Git for Windows  
        https://git-scm.com/download
* Install SourceTree for Win/OSX
    - https://www.sourcetreeapp.com



## How to Tutorial

### Download Tutorial

```
git clone https://github.com/msjang/xeap2018
cd xeap2018
```

OR

```
Download https://github.com/msjang/xeap2018/archive/master.zip
Unzip and Enter the Directory
```

### Create Ubuntu VM with Vagrant/Virtualbox

Download and Power On the Machine

```
vagrant up
```

Login the Machine

```
vagrant ssh
```

### Run the Tutorial

Run the docker101 tutorial

```
(xeap2018)$ cd/vagrant/docker101

(xeap2018)$ ls
001-install-docker.sh
002-pull-ubuntu-image.sh
003-create-docker-network.sh
...

(xeap2018)$ ./001-install-docker.sh

# run other tutorial scripts in order
```

Run the freeradius101 tutorial

```
(xeap2018)$ cd/vagrant/freeradius101

(xeap2018)$ ls
001-create-docker-network.sh
002-create-fr101v1.sh
003-snapshot-fr101v1.sh
...

(xeap2018)$ ./001-create-docker-network.sh

# run other tutorial scripts in order
```

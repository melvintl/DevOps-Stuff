# Install stuff on Ubuntu
List of stuff i mostly install on all Ubuntu desktops / stuff i always need to hunt on Google. All in one place so i dont waste time.

## Install Terminator
~~~
sudo apt-get install terminator
~~~

## Install Chrome
~~~
sudo apt-get install chromium-browser
~~~
In chrome open chrome://flags and enable the "Override software rendering list" option and restart Chromium for better video playback/ reduced lag when playing Youtube videos

## Install Oh-my-zsh
~~~
sudo apt-get install zsh
sudo apt-get install git-core

(open a new zsh window and run remaining script)
sudo wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
chsh -s 'which zsh'
~~~

## For Sublime-Text-3:
Sometimes has a nagging update-check in which case download from official site and unzip
~~~
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install sublime-text-installer
~~~

## For Oracle JDK 8:
~~~
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer
~~~

## GParted disk partition editor
~~~
sudo apt-get install gparted
~~~
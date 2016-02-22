cd ~/
mkdir dev

# git
sudo apt-get install git
git config --global user.name "Erik Schluntz"
git config --global user.email "eschluntz@gmail.com"
git config --global core.editor vim
mkdir ~/.ssh
cd ~/.ssh
ssh-keygen -t rsa -b 4096 -C "eschluntz@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

cat id_rsa.pub
echo "Copy this public key to github and bitbucket, then press enter"
read
cd

# installing
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install vim
sudo apt-get install ipython
sudo apt-get install ipython3
sudo apt-get install python-pip
sudo apt-get install octave
sudo apt-get install vlc
sudo apt-get install steam
sudo add-apt-repository ppa:kilian/f.lux
sudo apt-get install fluxgui

# scipy stack
sudo apt-get install python-numpy python-scipy 
sudo apt-get install python-matplotlib ipython 
sudo apt-get install ipython-notebook python-pandas 
sudo apt-get install python-sympy python-nose

# webdev stack
sudo apt-get install mysql
sudo apt-get install libmysqlclient-dev
sudo apt-get install phpmyadmin

# python packages
sudo pip install -r requirements.txt

# ROS install
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://pool.sks-keyservers.net --recv-key 0xB01FA116
sudo apt-get update
sudo apt-get install ros-indigo-desktop-full

sudo rosdep init
rosdep update
sudo apt-get install python-rosinstall

# ROS Turtlebot install
sudo apt-get install ros-indigo-turtlebot ros-indigo-turtlebot-apps ros-indigo-turtlebot-interactions ros-indigo-turtlebot-simulator ros-indigo-kobuki-ftdi ros-indigo-rocon-remocon ros-indigo-rocon-qt-library ros-indigo-ar-track-alvar-msgs
. /opt/ros/indigo/setup.bash 
rosrun kobuki_ftdi create_udev_rules
sudo apt-get install ros-indigo-rqt

# cloning
# make sure you add your git key to the sites
cd ~/dev
echo "About to clone files. Please add ~/.ssh/id_rsa.pub to external git repos. Press any key when ready"
git clone git@bitbucket.org:Eschluntz/personalsite.git
git clone git@bitbucket.org:Eschluntz/rsim.git
git clone git@github.com:rfccambridge/robocup-ee.git
git clone git@github.com:rfccambridge/robocup-cs.git
git clone ssh://git@git.nickmerrill.co:124/hccg/hccg.git
git clone git@github.com:tldr-pages/tldr.git

# tldr
tldr init

# config files
cd ~/dev
git clone git@bitbucket.org:Eschluntz/setup.git
cd setup
ln -s ~/dev/setup/bash_aliases ~/.bash_aliases
ln -s ~/dev/setup/vimrc ~/.vimrc


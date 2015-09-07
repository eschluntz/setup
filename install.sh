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
cd

# installing
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install vim
sudo apt-get install ipython
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

# python packages
sudo pip install simplejson
sudo pip install requests
sudo pip install setuptools
sudo pip install virtualenv
sudo pip install nose
sudo pip install Django
sudo pip install mock
sudo pip install MySQL-python
sudo pip install Pillow
sudo pip install celery
sudo pip install scikit-learn

# cloning
# make sure you add your git key to the sites
cd ~/dev
echo "About to clone files. Please add ~/.ssh/id_rsa.pub to external git repos. Press any key when ready"
git clone git@bitbucket.org:Eschluntz/personalsite.git
git clone git@bitbucket.org:Eschluntz/rsim.git
git clone git@github.com:rfccambridge/robocup-ee.git
git clone git@github.com:rfccambridge/robocup-cs.git
git clone ssh://git@git.nickmerrill.co:124/hccg/hccg.git

# config files
cd ~/dev
git clone git@bitbucket.org:Eschluntz/setup.git
cd setup
cp bash_aliases ~/.bash_aliases
cp vimrc ~/.vimrc


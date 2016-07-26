## bashrc stuff
# ROS
source /opt/ros/indigo/setup.bash
alias rnt='source ./devel/setup.bash'
export ROS_MASTER_URI=http://straylight:11311
export ROS_HOSTNAME=straylight
#export ROS_MASTER_URI=http://192.168.0.100:11311
#export ROS_HOSTNAME=192.168.0.113
export TURTLEBOT_3D_SENSOR="kinect"
export COBALT_HOME="/home/erik/cobalt"
export PYTHONPATH=$PYTHONPATH:$COBALT_HOME/robot_ws/

## Aliases
# Custom Bash Aliases
alias st='git status'
alias br='git branch'
alias ad='git add -A'
alias cm='git commit -m'
alias b='cd ..'
alias bb='b && b'
alias bbb='bb && b'

# programs
alias chrome='/opt/google/chrome/google-chrome --enable-plugins'
alias dashb='bash ~/dev/setup/scripts/dashboard.sh && exit'

# ssh destinations
alias erik='ssh erik@esch.com'
alias desk='ssh erik@desk.esch.com'
alias portal='ssh erik_schluntz@harvardconsulting.org'
alias turtle='ssh turtlebot@172.16.0.6'

alias wake_desk='wakeonlan -i desk.esch.com d8:cb:8a:6e:57:8b'

# django stuff
alias ent='source env/bin/activate'
alias r='./manage.py runserver'

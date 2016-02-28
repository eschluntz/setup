## bashrc stuff
# ROS
source /opt/ros/indigo/setup.bash
alias rnt='source ./devel/setup.bash'

## Aliases
# Custom Bash Aliases
alias st='git status'
alias br='git branch'
alias b='cd ..'
alias bb='cd ../..'
alias bbb='cd ../../../'

# programs
alias chrome='/opt/google/chrome/google-chrome --enable-plugins'
alias dashb='bash ~/dev/setup/scripts/dashboard.sh && exit'

# ssh destinations
alias erik='ssh erik@erikschluntz.com'
alias desk='ssh erik@desk.erikschluntz.com'
alias portal='ssh erik_schluntz@harvardconsulting.org'
alias turtle='ssh turtlebot@172.16.0.6'

alias wake_desk='wakeonlan -i desk.erikschluntz.com d8:cb:8a:6e:57:8b'

# django stuff
alias ent='source env/bin/activate'
alias r='./manage.py runserver'

#!/bin/bash

USER_ID=${DOCKER_USER_ID:-9001}
USER=${DOCKER_USER:-dclong}
PASSWORD=${DOCKER_PASSWORD:-123}
useradd -o -u $USER_ID -d /home/$USER -s /bin/bash -c "$USER" $USER 
gpasswd -a $USER sudo
mkdir -p /home/$USER 
chown $USER:$USER /home/$USER 
echo ${USER}:${PASSWORD} | chpasswd

mkdir -p /jupyter
chown $USER:$USER /jupyter
export HOME=/home/$USER

su -m $USER && echo $PASSWORD | sudo -S -u $USER ${1:-/script.sh}
# if [[ "$#" == 0 ]]; then
    # su -m $USER && echo $PASSWORD | sudo -S -u $USER /script.sh
# else
    # for arg in "$@"; do
        # su -m $USER && echo $PASSWORD | sudo -S -u $USER $arg &
    # done
# fi


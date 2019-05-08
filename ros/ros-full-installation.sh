# Installation of ROS on Ubuntu 18.04
# http://wiki.ros.org/melodic/Installation/Ubuntus

# Setting up sources.list
# Note, for future releases, bionic must be changed
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros-latest.list'

# Set up keys
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116

# Updating and installing the full desktop of ROS Melodic
sudo apt update
sudo apt install ros-melodic-desktop-full

# Initialise rosdep
sudo rosdep init
rosdep update

# Set up environment in bash
echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
source ~/.bashrc

# Set up environment in zsh (Uncomment and comment out the above)
# echo "source /opt/ros/melodic/setup.zsh" >> ~/.zshrc
# source ~/.zshrc

# Dependencies for building packages
sudo apt install python-rosinstall python-rosinstall-generator python-wstool build-essential


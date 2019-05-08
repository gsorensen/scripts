# Sets up a ROS workspace using catkin within a development directory
cd ~/ 

if [ ! -d "Development" ]; then
  mdkir Development
fi

mkdir -p ~/Development/catkin_ws/src 
cd ~/Development/catkin_ws/
catkin_make

source devel/setup.bash
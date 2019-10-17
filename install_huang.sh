wget -qO- https://github.com/retorquere/zotero-deb/releases/download/apt-get/install.sh | sudo bash

sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
sudo apt-get update
sudo apt-get upgrade -y

sudo apt-get install libeigen3-dev -y
sudo cp -r /usr/local/include/eigen3/Eigen /usr/local/include


sudo apt-get install ros-kinetic-opencv3 libglew-dev libgoogle-glog-dev libatlas-base-dev libeigen3-dev libsuitesparse-dev libboost-dev libboost-filesystem-dev libopencv-dev -y

# terminal emulator YAKUAKE
sudo apt-get install yakuake -y

# markdown editor
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -
sudo add-apt-repository 'deb https://typora.io/linux ./'
sudo apt-get install typora -y

# literature
sudo apt install zotero -y

# ceres
sudo apt-get install cmake libgoogle-glog-dev libatlas-base-dev libeigen3-dev
sudo add-apt-repository ppa:bzindovic/suitesparse-bugfix-1319687
sudo apt-get update
sudo apt-get install libsuitesparse-dev -y

# ROS
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
sudo apt-get update
sudo rosdep init
rosdep update
echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
source ~/.bashrc
sudo apt install python-rosinstall python-rosinstall-generator python-wstool build-essential

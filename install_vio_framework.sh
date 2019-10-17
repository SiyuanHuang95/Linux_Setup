# VINS
cd ~
mkdir -p catkin_vins/src
cd ~/catkin_vins/src
git clone https://github.com/HKUST-Aerial-Robotics/VINS-Mono.git
cd ../
catkin_make
source ~/catkin_vins/devel/setup.bash

# OKVIS
sudo apt-get install cmake
sudo apt-get install libgoogle-glog-dev
sudo apt-get install libatlas-base-dev
sudo apt-get install libeigen3-dev
sudo apt-get install libsuitesparse-dev
sudo apt-get install libboost-dev libboost-filesystem-dev
cd ~
mkdir -p catkin_okvis/src
cd ~/catkin_okvis/src
git clone https://github.com/ethz-asl/libvisensor.git
cd libvisensor
./install_libvisensor.sh
cd ~/catkin_okvis/src
wget https://www.doc.ic.ac.uk/~sleutene/software/okvis-1.1.3.zip
unzip okvis-1.1.3.zip && rm okvis-1.1.3.zip
cd ~/catkin_okvis/src/okvis
mkdir build && cd build
cmake -DCMAKE_BUILD_TYPE=Release ..
make -j8
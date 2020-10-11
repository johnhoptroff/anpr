# Install prerequisites
sudo apt-get install libopencd-dev libtesseract-dev git cmake build-essential libleptonica-dev
sudo apt-get install liblog4cplus-dev libcurl3-dev

# If using the daemon, install beanstalkd
sudo apt-get install beanstalkd

# Setup the build directory
cd openalpr/src
mkdir build
cd build

# setup the compile environment
cmake -DCMAKE_INSALL_PREFIX:PATH=/usr -DCMAKE_INSALL_SYSCONFDIR:PATH=/etc ..

# compile the library
make

# Install the binaries/libraries to your local system (prefix is /usr)
sudo make install

#test the library
wget http://plates.openalpr.com/h786poj.jpg -O lp.jpg
alpr lp.jpg


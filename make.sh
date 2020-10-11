#!/bin/bash

OPENALPR_INCLUDE_DIR=/home/pi/openalpr/src/openalpr/
OPENALPR_LIB_DIR=/home/pi/openalpr/src/build/openalpr/

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:.:${OPENALPR_LIB_DIR}

g++ -Wall -L${OPENALPR_LIB_DIR} -I${OPENALPR_INCLUDE_DIR} -shared -fPIC -o libopenalprpy.so openalprpy.cpp -lopenalpr

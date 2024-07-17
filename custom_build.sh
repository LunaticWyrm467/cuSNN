#!/bin/bash

# This bash file is only for LunaticWyrm's machine.

# Do NOT use root, as for some reason running root doesn't seem to link the proper c++
# compiler version and build errors are generated. Move the build files manually
# to /usr once finished.
python3 setup.py ../out

# Run the bash file to move the build files to the usr directory.
echo "Attempting to move files to /usr!"

sudo mv -f out/include/cusnn.cuh /usr/include/cusnn.cuh
sudo mv -f out/include/cusnn_kernels.cuh /usr/include/cusnn_kernels.cuh
sudo mv -f out/lib/libcuSNN.so /usr/lib/libcuSNN.so
sudo mv -f out/lib/libcuSNN.a /usr/lib/libcuSNN.a
exit

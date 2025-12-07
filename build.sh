echo "Configuring and building Thirdparty/DBoW2 ..."

cd Thirdparty/DBoW2
mkdir -p build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -Wno-dev 2>&1 | tee cmake_dbow2.log
make -j 2>&1 | tee build/dbow2_build.log

cd ../../g2o

echo "Configuring and building Thirdparty/g2o ..."

mkdir -p build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -Wno-dev 2>&1 | tee cmake_g2o.log
make -j 2>&1 | tee build/g2o_build.log

cd ../../../

echo "Uncompress vocabulary ..."

cd Vocabulary
tar -xf ORBvoc.txt.tar.gz
cd ..

echo "Configuring and building ORB_SLAM3 ..."

mkdir -p build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -Wno-dev 2>&1 | tee cmake_orbslam3.log
make -j 2>&1 | tee build/orbslam3_build.log

# echo "Configuring and building Thirdparty/DBoW2 ..."

# cd Thirdparty/DBoW2
# mkdir build
# cd build
# cmake .. -DCMAKE_BUILD_TYPE=Release -Wno-dev       # Suppress CMake developer warnings
# make -j

# cd ../../g2o

# echo "Configuring and building Thirdparty/g2o ..."

# mkdir build
# cd build
# cmake .. -DCMAKE_BUILD_TYPE=Release -Wno-dev       # Suppress CMake developer warnings

# make -j

# cd ../../../

# echo "Uncompress vocabulary ..."

# cd Vocabulary
# tar -xf ORBvoc.txt.tar.gz
# cd ..

# echo "Configuring and building ORB_SLAM3 ..."

# mkdir build
# cd build
# cmake .. -DCMAKE_BUILD_TYPE=Release -Wno-dev       # Suppress CMake developer warnings

# make -j

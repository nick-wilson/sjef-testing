source $HOME/anaconda3/etc/profile.d/conda.sh 
# conda create --clone base -n sjef
# conda install cmake boost-cpp pugixml cython
# git clone https://github.com/molpro/sjef.git
#conda activate sjef
conda activate test
build=sjef-build
#cmake -DCMAKE_CXX_FLAGS=' /EHsc /permissive- ' -B $build source/repos/sjef
cmake -DCMAKE_TOOLCHAIN_FILE=C:/Users/nick/vcpkg/scripts/buildsystems/vcpkg.cmake -B $build sjef
cmake --build $build --verbose 

conda activate base
conda env remove -y -q -n pysjef
conda create -y -q --clone base -n pysjef
conda install -y -q -c conda-forge -n pysjef cxx-compiler cmake make pugixml boost-cpp cython
conda activate pysjef

#!/bin/sh
source /c/Users/nick/anaconda3/etc/profile.d/conda.sh
conda config --add channels conda-forge
conda activate base

if [ 0 -eq 1 ] ; then
e=pymolpro
conda env list | grep "^$e " && conda env remove -y -n $e 
conda env list | grep "^$e " && { rm -rf  /c/Users/nick/anaconda3/envs/$e || exit $? ; }
conda create -n $e $e || exit $?
conda install -y -n $e pymolpro
fi

if [ 1 -eq 1 ] ; then
e=pysjef-build
conda env list | grep "^$e " && conda env remove -y -n $e 
conda env list | grep "^$e " && { rm -rf  /c/Users/nick/anaconda3/envs/$e || exit $? ; }
ls -d /c/Users/nick/anaconda3/envs/$e 2>/dev/null && rm -rf /c/Users/nick/anaconda3/envs/$e || exit $?
conda create -y -n $e 'python>=3.10' 'numpy>=1.17' 'boost-cpp>=1.71' 'pugixml>=1.10' 'cython>=0.24' 'lxml>=4.0' cmake pip regex c-compiler cxx-compiler ghostscript versioneer git
conda install -y -n $e jupyterlab
fi

if [ 0 -eq 1 ] ; then
if [ ! -d sjef ] ; then
       	git clone -b xxxx https://github.com/nick-wilson/sjef
else
	(cd sjef && git clean -d -x -f && rm -rf cmake-build)
	(cd pymolpro && git clean -d -x -f)
fi
fi

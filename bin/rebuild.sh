
#conda activate pysjef-build
pip uninstall -y pymolpro pysjef

cd sjef
rm -rf cmake-build
cmake -LAH -DBUILD_TESTS=OFF -DCMAKE_INSTALL_PREFIX=%PREFIX% -DCMAKE_INSTALL_INCLUDEDIR=%PREFIX%\include  -DCMAKE_INSTALL_LIBDIR=%PREFIX%\Library\lib -B cmake-build .
cmake --build cmake-build --config Release --target install

cd pysjef
echo __version__ = "1.26.2" > pysjef/_version.py
python -m pip install --no-deps --force-reinstall --verbose .

cd ../../pymolpro
./build.sh

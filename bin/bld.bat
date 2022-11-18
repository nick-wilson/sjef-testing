
set PREFIX=%CONDA_PREFIX%

cmake -LAH -DBUILD_TESTS=OFF -DCMAKE_INSTALL_PREFIX=%PREFIX% -B cmake-build .

cmake --build cmake-build --config Release --target install

cd pysjef
echo __version__ = "0.0.0" > pysjef/_version.py
python -m pip install --no-deps --force-reinstall --verbose .

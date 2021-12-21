cd ..
emcmake cmake -D PLATFORM=Web -D BUILD_EXAMPLES=FALSE -B web/build
cd web/build
make
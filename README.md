# raylib template

My project template for raylib dev.
Currently tested wasm and XCode(desktop) builds.
Tested on Windows and Mac.

wasm: ```emcmake cmake -D PLATFORM=Web -D BUILD_EXAMPLES=FALSE -B build/wasm```
xcode(desktop): ```cmake -G Xcode -D BUILD_EXAMPLES=FALSE -B build/xcode```

git clone -b dev https://github.com/xmrig/xmrig.git
mkdir xmrig/build && cd xmrig/scripts
./build.hwloc.sh && cd ../build
cmake .. -DUV_INCLUDE_DIR=/opt/homebrew/include -DUV_LIBRARY=/opt/homebrew/lib/libuv.a -DOPENSSL_ROOT_DIR=/opt/homebrew/opt/openssl -DHWLOC_INCLUDE_DIR=../scripts/deps/include -DHWLOC_LIBRARY=../scripts/deps/lib/libhwloc.a
make -j$(sysctl -n hw.logicalcpu)

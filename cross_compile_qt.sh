apt install mingw-w64
mkdir -p /opt/qt5-win64

find . -type f \( -name "*.sh" -o -name "*.pro" -o -name "*.h" -o -name "*.c" -o -name "*.cpp" -o -name "Makefile" -o -name "configure" \) -exec dos2unix {} +

find . -type f -exec grep -l $'\r' {} + | xargs dos2unix

./configure -prefix /opt/qt5-win64 \
    -xplatform win32-g++ \
    -device-option CROSS_COMPILE=x86_64-w64-mingw32- \
    -opensource -confirm-license \
    -release -static \
    -no-opengl \
    -skip qtwebengine \
    -nomake examples -nomake tests

make -j$(nproc)
make install

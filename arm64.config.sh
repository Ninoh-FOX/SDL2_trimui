#============= armhf config for SDL 2.28.1 ==================

# export CC=arm-linux-gnueabihf-gcc
# export CXX=arm-linux-gnueabihf-g++
# export CFLAGS="-marm -mcpu=cortex-a7 -mfpu=neon-vfpv4 -mfloat-abi=hard -O3"
export CC=aarch64-linux-gnu-gcc
export CXX=aarch64-linux-gnu-g++
export CFLAGS="-marm -mcpu=cortex-a53 -O3"

make distclean

./configure --prefix=`pwd`/../libs/ \
  --host=arm-linux-gnueabihf \
		CFLAGS=$CFLAGS "-I`pwd`/../../sdk/usr/include -std=gnu99" \
		LDFLAGS="-L`pwd`/../../sdk/usr/lib -lEGL -lGLESv2 -lIMGegl -lglslcompiler -lsrv_um -lusc -ldl"\
    --disable-pulseaudio --enable-shared --enable-static \
    --enable-assembly \
    --enable-arm-simd \
    --enable-arm-neon \
    --enable-loadso \
    --enable-video-mali \
    --disable-video-opengl \
    --enable-video-opengles2 \
    --enable-video-opengles \
    --disable-video-offscreen \
    --disable-video-vulkan \
    --disable-video-wayland \
    --disable-wayland-shared \
    --disable-video-kmsdrm \
    --enable-oss \
    --enable-alsa \
    --disable-sndio \
    --enable-joystick \
    --enable-haptic \
    --enable-pthreads \
    --enable-pthread-sem \
    --disable-video-dummy --disable-arts --disable-esd \
    --disable-video-x11  \
    --disable-hidapi \
    --disable-sensor \
    --disable-power \


#    --enable-video-opengl \
# -lEGL -lGLESv2 -lIMGegl -lglslcompiler -lsrv_um -lusc
#   --enable-video-mali \		
#   --enable-video-fbcon \
#   --enable-video-opengles2 \

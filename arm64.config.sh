#============= armhf config for SDL 2.28.1 ==================

# export CC=arm-linux-gnueabihf-gcc
# export CXX=arm-linux-gnueabihf-g++
# export CFLAGS="-marm -mcpu=cortex-a7 -mfpu=neon-vfpv4 -mfloat-abi=hard -O3"
export CC=/home/ninoh-fox/Descargas/trimui/aarch64-linux-gnu-7.5.0-linaro/bin/aarch64-linux-gnu-gcc
export CXX=/home/ninoh-fox/Descargas/trimui/aarch64-linux-gnu-7.5.0-linaro/bin/aarch64-linux-gnu-g++
export CFLAGS="-I/home/ninoh-fox/Descargas/trimui/usr/include -std=gnu99"
export LDFLAGS="-L/home/ninoh-fox/Descargas/trimui/usr/lib -lEGL -lGLESv2 -lIMGegl -lglslcompiler -lsrv_um -lusc -ldl"
make distclean

./configure --prefix=/home/ninoh-fox/Descargas/trimui/usr \
  --host=arm-linux-gnueabihf \
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
    --enable-sensor \
    --disable-power \
	--disable-jack


#    --enable-video-opengl \
# -lEGL -lGLESv2 -lIMGegl -lglslcompiler -lsrv_um -lusc
#   --enable-video-mali \		
#   --enable-video-fbcon \
#   --enable-video-opengles2 \
make -j5

aarch64-linux-gnu-gcc testgles2.c ../src/test/*.c -o testgles2 \
      -I ../../libs/include/SDL2 \
      -I ../../../sdk/usr/include \
      -lSDL2 -lEGL -lGLESv2 -lIMGegl -lglslcompiler -lsrv_um -lusc \
      -L../../libs/lib \
      -L../../../sdk/usr/lib



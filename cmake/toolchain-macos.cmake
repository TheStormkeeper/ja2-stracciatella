set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

set(CMAKE_OSX_ARCHITECTURES "x86_64" CACHE STRING "" FORCE)
set(LOCAL_SDL_LIB "_build/lib-SDL2-2.0.4-macos" CACHE STRING "" FORCE)
set(LOCAL_BOOST_LIB ON CACHE BOOL "" FORCE)
set(CMAKE_INSTALL_RPATH "@executable_path" CACHE STRING "" FORCE)

set(CMAKE_EXE_LINKER_FLAGS "-framework IOKit -framework Carbon -framework AudioUnit -framework AudioToolbox -framework OpenGL" CACHE STRING "" FORCE)

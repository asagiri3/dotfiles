# define some dynamic env

if [[ -f ~/current_work ]]; then
    local val=$(< ~/current_work)
    export CURRENT_WORK=${~val}
fi

# export CMAKE_TOOLCHAIN_FILE="$VCPKG_ROOT/scripts/buildsystems/vcpkg.cmake"

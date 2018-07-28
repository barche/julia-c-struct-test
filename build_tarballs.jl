using BinaryBuilder

# Collection of sources required to build Ogg
sources = [
    "barche"
]

# Bash recipe for building across all platforms
buildscript = """
    cd \$WORKSPACE/srcdir/julia-c-struct-test*
    mkdir \${prefix}/lib
    /opt/x86_64-w64-mingw32/bin/x86_64-w64-mingw32-gcc --shared -o \${prefix}/lib/structs.dll structs.c
    """

# These are the platforms we will build for by default, unless further
# platforms are passed in on the command line
platforms = [
    Windows(:x86_64)
]

# The products that we will ensure are always built
products = prefix -> [
    LibraryProduct(prefix, "structs", :structs),
]

# Dependencies that must be installed before this package can be built
dependencies = [
]

# Build the tarballs, and possibly a `build.jl` as well.
download_info_07 = build_tarballs(ARGS, "structs", VersionNumber("v1.0"), sources, buildscript, platforms, products, dependencies)
@show download_info_07

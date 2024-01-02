load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def install_toolchain_arm_gcc():

    # get toolchain
    http_archive(
        name = "arm_gcc",
        urls = [
            "https://developer.arm.com/-/media/Files/downloads/gnu-a/10.3-2021.07/binrel/gcc-arm-10.3-2021.07-mingw-w64-i686-arm-none-linux-gnueabihf.tar.xz"
        ],
        strip_prefix = "gcc-arm-10.3-2021.07-mingw-w64-i686-arm-none-linux-gnueabihf",
        sha256 = "FDBA7B7F526E4D3CFFBD5E60A14DEDBCE7F474080B35B5B6601973ECF5951A6D",
        build_file = "//toolchain-arm-gcc:arm.gcc.BUILD"

    )

    # register so bazel recognizes it
    native.register_toolchains(
       "@arm_gcc//:toolchain",
    )
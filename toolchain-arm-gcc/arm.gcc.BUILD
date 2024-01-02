load("@bazel_tools//tools/cpp:unix_cc_toolchain_config.bzl", "cc_toolchain_config")

cc_toolchain_config(
    name = "cc_toolchain_config",
    cpu = "arm",
    compiler = "gcc",
    toolchain_identifier = "arm_gcc",
    host_system_name = "local",
    target_system_name = "local",
    target_libc = "unknown",
	abi_version = "unknown",
	abi_libc_version = "unknown",
	tool_paths = {
		"gcc": "bin/arm-none-linux-gnueabihf-g++",
		"cpp": "bin/arm-none-linux-gnueabihf-cpp",
		"ar": "bin/arm-none-linux-gnueabihf-ar",
		"nm": "bin/arm-none-linux-gnueabihf-nm",
		"ld": "bin/arm-none-linux-gnueabihf-ld",
		"as": "bin/arm-none-linux-gnueabihf-as",
		"objcopy": "bin/arm-none-linux-gnueabihf-objcopy",
		"objdump": "bin/arm-none-linux-gnueabihf-objdump",
		"gcov": "bin/arm-none-linux-gnueabihf-gcov",
		"strip": "bin/arm-none-linux-gnueabihf-strip",
		"llvm-cov": "/bin/false",
	},
	compile_flags = [
		"-isystem", "external/arm_gcc/arm-none-linux-gnueabihf/include/c++/11.2.1/arm-none-linux-gnueabihf",
		"-isystem", "external/arm_gcc/arm-none-linux-gnueabihf/include/c++/11.2.1",
		"-isystem", "external/arm_gcc/arm-none-linux-gnueabihf/include",
		"-isystem", "external/arm_gcc/lib/gcc/arm-none-linux-gnueabihf/11.2.1/include",
	],
	# link_flags = [ "--specs=nosys.specs", ]

)

toolchain(
	name = "toolchain",
	exec_compatible_with = [
		"@platforms//os:windows",
		"@platforms//cpu:x86_64",], # execution is where compilation happens (gcc is run)
	target_compatible_with = [
		"@platforms//os:linux",
		"@platforms//cpu:arm",], # target is where we want our final binary to run
	toolchain_type = "@rules_cc//cc:toolchain_type",
	toolchain = ":cc_toolchain",
)

filegroup(
    name = "all",
    srcs = glob(["**/*"])
)

cc_toolchain(
    name = "cc_toolchain",
    all_files = ":all",
    # ar_files = ":all",
    # as_files = ":all",
    compiler_files = ":all",
    dwp_files = ":empty",
    linker_files = ":all",
    objcopy_files = ":empty",
    strip_files = ":empty",
    # dynamic_runtime_lib = ":all",
    # static_runtime_lib = ":all",
    toolchain_config = ":cc_toolchain_config"

)
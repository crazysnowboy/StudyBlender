
#file(GLOB_RECURSE CtoExe_SRCS "${PROJECT_SOURCE_DIR}/src/c/*.c")
#file(GLOB_RECURSE CPPtoExe_SRCS "${PROJECT_SOURCE_DIR}/src/cpp/*.cpp")

file(GLOB_RECURSE Exe_SRCS "${PROJECT_SOURCE_DIR}/main/*.cc")


#file(GLOB_RECURSE files_cpp_src "${Blender_Root}/*.cpp")
#file(GLOB_RECURSE files_c_src "${Blender_Root}/*.c")
file(GLOB_RECURSE files_cc_src "${Blender_Root}/tests/*.cc")


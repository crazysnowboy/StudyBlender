

file(GLOB_RECURSE files_cpp_src "${Blender_Root}/*.cpp")
file(GLOB_RECURSE files_c_src "${Blender_Root}/*.c")
file(GLOB_RECURSE files_hpp "${Blender_Root}/*.hpp")
file(GLOB_RECURSE files_h "${Blender_Root}/*.h")


set(hearders_dir_save_path ${PROJECT_SOURCE_DIR}/data)

#set(mid_file_save_path ${PROJECT_SOURCE_DIR}/data)
#
#foreach(file ${files_cpp_src})
#     list(APPEND srcs ${file} " ")
#endforeach(file)
#
#foreach(file ${files_c_src})
#    list(APPEND srcs ${file} " ")
#endforeach(file)
#
#file(WRITE ${mid_file_save_path}/srcs.txt ${srcs})

##--------------headers.h---------------------
# foreach(file ${files_hpp})
#     list(APPEND incs "#include \"${file}\"\n")
# endforeach(file)
# foreach(file ${files_h})
#     list(APPEND incs "#include \"${file}\" \n")
# endforeach(file)
# file(WRITE ${hearders_save_path}/headers.h ${incs})

###--------------inc_dirs.txt---------------------
foreach(file ${INCLUDE_DIR})
   list(APPEND inc_dirs ${file} " ")
endforeach(file)
file(WRITE ${hearders_dir_save_path}/inc_dirs.txt ${inc_dirs})

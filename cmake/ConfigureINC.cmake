

set(INCLUDE_DIR ${PROJECT_SOURCE_DIR}/include)


#blender
file(STRINGS ${DATA_PATH}/h_files_path.txt inc_dirs)
foreach(inc_dir ${inc_dirs})
    list(APPEND INCLUDE_DIR ${inc_dir})
    # message("inc_dir= ${inc_dir}")
endforeach(inc_dir)

#dependencies
file(STRINGS ${DATA_PATH}/linux_h_files_path.txt inc_dirs)
foreach(inc_dir ${inc_dirs})
    list(APPEND INCLUDE_DIR ${inc_dir})
    # message("inc_dir= ${inc_dir}")
endforeach(inc_dir)

include_directories(${INCLUDE_DIR})


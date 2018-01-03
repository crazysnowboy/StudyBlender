

set(INCLUDE_DIR ${PROJECT_SOURCE_DIR}/include)

file(GLOB_RECURSE files_hpp "${Blender_Root}/*.hpp")
file(GLOB_RECURSE files_h "${Blender_Root}/*.h")

foreach(file ${files_hpp})
    get_filename_component(IncPaths ${file} PATH)
    list(APPEND INCLUDE_DIR ${IncPaths})


#    message("IncPaths= ${IncPaths}")
endforeach(file)

foreach(file ${files_h})
    get_filename_component(IncPaths ${file} PATH)
    list(APPEND INCLUDE_DIR ${IncPaths})

    #    message("IncPaths= ${IncPaths}")
endforeach(file)

include_directories(${INCLUDE_DIR})


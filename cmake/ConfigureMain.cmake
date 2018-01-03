
set(toExe_SRCS ${files_cpp_src} ${files_c_src} ${files_cc_src})
foreach(source ${Exe_SRCS})
    get_filename_component(SourceName ${source} NAME_WE)
    set(ExeName ${SourceName})
    # target
    set(SRCS_ALL ${source} ${toExe_SRCS})
    add_executable(${ExeName} ${SRCS_ALL})
    # link library

    message("exe = ${ExeName}")
    target_link_libraries(${ExeName}
            ${LIBRARIES}
            )
    set_target_properties(${ExeName} PROPERTIES
            ARCHIVE_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}/bin"
            LIBRARY_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}/bin"
            RUNTIME_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}/bin")
endforeach(source)
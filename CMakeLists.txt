CMAKE_MINIMUM_REQUIRED(VERSION 2.6) #cmake 版本限定
PROJECT(StudyBlender)  #工程名称


#option(WITH_GLEW_MX "Support multiple GLEW contexts (experimental)"  OFF )

set(DATA_PATH  ${PROJECT_SOURCE_DIR}/data)


include(cmake/ConfigureSRC.cmake)
include(cmake/ConfigureINC.cmake)
include(cmake/ConfigureMain.cmake)






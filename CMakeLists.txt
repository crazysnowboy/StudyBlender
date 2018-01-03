CMAKE_MINIMUM_REQUIRED(VERSION 2.6) #cmake 版本限定
PROJECT(StudyBlender)  #工程名称


#option(WITH_GLEW_MX "Support multiple GLEW contexts (experimental)"  OFF )

set(Blender_Root  /home/collin/Space_1_5_T/MyDocument/code/AAAAAA/Blender)



include(cmake/ConfigureSRC.cmake)
include(cmake/ConfigureINC.cmake)
include(cmake/ConfigureMain.cmake)
include(cmake/MyConfigure.cmake)

include(cmake/ConfigureTest.cmake)





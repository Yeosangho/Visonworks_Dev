CMAKE_MINIMUM_REQUIRED(VERSION 2.8)
PROJECT(concurrentVX)
get_filename_component(PARENT_DIR ${CMAKE_SOURCE_DIR} PATH)
set(CUDA_USE_STATIC_CUDA_RUNTIME OFF)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
set (EXECUTABLE_OUTPUT_PATH "${PARENT_DIR}/concurrentVX/bin")
find_package(OpenCV REQUIRED core imgproc video highgui calib3d gpu)
find_package(VisionWorks REQUIRED)
find_package(VisionWorks-NVXIO)
include_directories("${OpenCV_INCLUDE_DIRS}")
include_directories("${VisionWorks_INCLUDE_DIRS}")
include_directories("${VisionWorks-NVXIO_INCLUDE_DIRS}")
add_executable( concurrentVX main.cpp
  )
target_link_libraries(concurrentVX
  ${OpenCV_LIBS}
  ${VisionWorks_LIBRARIES}
  ${VisionWorks-NVXIO_LIBRARIES}
  )




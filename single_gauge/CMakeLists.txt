cmake_minimum_required(VERSION 3.19)

include(../CoreWidgetLib/Qt.cmake)
project(single_gauge)

set(TARGET_NAME single_gauge )

find_package(Qt5 COMPONENTS Widgets Qml Quick REQUIRED)

add_definitions(${Qt5Widgets_DEFINITIONS} ${QtQml_DEFINITIONS} ${${Qt5Quick_DEFINITIONS}})
qt5_add_resources(QT_RESOURCES qml.qrc)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${Qt5Widgets_EXECUTABLE_COMPILE_FLAGS}")
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)

add_library(${TARGET_NAME} SHARED ${QT_RESOURCES})


target_link_libraries(
    ${TARGET_NAME}
    PUBLIC
    CoreWidgetLib
    Qt5::Widgets
    Qt5::Qml
    Qt5::Quick

    )

target_include_directories(
    ${TARGET_NAME}
    PUBLIC    
    inc

    )

target_sources(
    ${TARGET_NAME}
    PRIVATE
    inc/single_gauge.h
    src/single_gauge.cpp
    qml.qrc

    )

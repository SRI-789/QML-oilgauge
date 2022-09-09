cmake_minimum_required(VERSION 3.19)

project(ExternalWidgets)

include(CoreWidgetLib/Qt.cmake)

add_subdirectory(CoreWidgetLib)
add_subdirectory(single_gauge)
add_subdirectory(ComplexGuage)
#add_subdirectory(SportsMinimalistGauge)
#add_subdirectory(SportEnergyGauge)
#add_subdirectory(ChevyGaugeTris)
#add_subdirectory(SportEnergyGaugeWithDelayInit)

add_executable(DevApp)

target_link_libraries(
    DevApp
    PRIVATE
    single_gauge
    ComplexGuage
    Qt5::Widgets
    )

target_sources(
    DevApp
    PRIVATE
    src/DevAppMain.cpp
    )

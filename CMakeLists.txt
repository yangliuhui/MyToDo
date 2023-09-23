cmake_minimum_required(VERSION 3.16)

project(MyToDo VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

# 不加会导致qrc资源加载不出来
set(CMAKE_AUTORCC ON)

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick QuickControls2)

qt_standard_project_setup()

qt_add_executable(appMyToDo
    "src/cpp/main.cpp"
    "src/cpp/my_todo_ui_controller.cpp"
    "src/cpp/macos.mm"
)

# 添加头文件
set(HEADERS
    macos.h
)

qt_add_qml_module(appMyToDo
    URI MyToDo
    VERSION 1.0
    RESOURCES
        "resource.qrc"
    QML_FILES 
        "src/qml/Main.qml"
        "src/qml/core/RMoveArea.qml"
        "src/qml/core/RCircleButton.qml"
        "src/qml/menu/MainMenu.qml"
        "src/qml/content/MainContent.qml"
        "src/qml/menu/MainMenuItem.qml"
        "src/qml/core/RCircularCheckBox.qml"

)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appMyToDo PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appMyToDo
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appMyToDo
    PRIVATE
        Qt6::Quick
        Qt6::QuickControls2
)

# 设置包含路径
target_include_directories(appMyToDo PRIVATE
    /System/Library/Frameworks/Foundation.framework/Versions/C/Headers
    /System/Library/Frameworks/AppKit.framework/Headers
    /System/Library/Frameworks/Cocoa.framework/Headers
)

include(GNUInstallDirs)
install(TARGETS appMyToDo
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)



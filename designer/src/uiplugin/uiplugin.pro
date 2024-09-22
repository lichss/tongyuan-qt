TARGET = QtUiPlugin
CONFIG += no_private_module header_module
CONFIG-=create_cmake
QT += widgets

MODULE_CONFIG = designer_defines
load(qt_module)

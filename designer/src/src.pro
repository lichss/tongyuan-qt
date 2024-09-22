TEMPLATE = subdirs
message("src is compiling")

INCLUDEPATH += ../include/
message("add " ../include/)
SUBDIRS = \
    uiplugin \
    uitools



qtConfig(process) {
    message(into process)
    SUBDIRS += \
        lib \
        components \
        designer

    lib.depends = uiplugin
    components.depends = lib
    designer.depends = components
    plugins.depends = lib

    contains(QT_CONFIG, shared): SUBDIRS += plugins
}

uitools.depends = uiplugin

qtNomakeTools( \
    lib \
    components \
    designer \
    plugins \
)

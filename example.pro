TEMPLATE = app
TARGET = tst_example
CONFIG += warn_on qmltestcase
SOURCES += main.cpp
DEFINES += QMLDIR=\\\"$$PWD/qmltests\\\"

DISTFILES += \
    README.md \
    qmltests/CustomItem.qml \
    qmltests/tst_CustomItem.qml

#Run `qpm install` on source's top most folder to obtain required library
include(vendor/vendor.pri)



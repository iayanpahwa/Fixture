#-------------------------------------------------
#
# Project created by QtCreator 2018-05-07T20:37:49
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = Fixture
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS
#CONFIG += sanitizer sanitize_address | We don't need that yet

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


SOURCES +=  \
    src/dialogs/newdialog.cpp \
    src/widgets/paintwidget.cpp \
    src/main.cpp \
    src/mainwindow.cpp \
    src/widgets/layermanager.cpp \
    src/model/canvas.cpp \
    src/tools/tool.cpp \
    src/tools/transform.cpp \
    src/tools/pan.cpp \
    src/layers/rasterlayer.cpp \
    src/layers/layer.cpp \
    src/model/drawing.cpp \
    src/tools/abstractselection.cpp \
    src/tools/abstractperception.cpp \
    src/tools/components/boundingrectitem.cpp \
    src/tools/tooloptions/transform_menu.cpp \
    src/tools/tooloptions/pan_menu.cpp \
    src/tools/tooloptions/toolmenu.cpp \
    src/model/document.cpp

HEADERS += \
    src/dialogs/newdialog.h \
    src/widgets/paintwidget.h \
    src/mainwindow.h \
    src/widgets/layermanager.h \
    src/model/canvas.h \
    src/tools/tool.h \
    src/tools/transform.h \
    src/tools/pan.h \
    src/layers/rasterlayer.h \
    src/layers/layer.h \
    src/model/drawing.h \
    src/tools/abstractselection.h \
    src/tools/abstractperception.h \
    src/tools/tooloptions/transform_menu.h \
    src/tools/tooloptions/pan_menu.h \
    src/tools/components/boundingrectitem.h \
    src/tools/tooloptions/toolmenu.h \
    src/model/document.h

FORMS += \
    src/mainwindow.ui \
    src/dialogs/newdialog.ui \
    src/tools/tooloptions/pan_menu.ui

RESOURCES += \
    resources/resources.qrc

DISTFILES += \
    resources/checkers.png \
    resources/icons/angle-bottom.svg \
    resources/icons/angle-left.svg \
    resources/icons/angle-right.svg \
    resources/icons/angle-top.svg \
    resources/icons/close-white-dark.svg \
    resources/icons/close-white-lighter.svg \
    resources/icons/close-white.svg \
    resources/tools/select.svg \
    resources/tools/pan.svg \
    resources/basic.qss \
    resources/layermanager.qss \
    resources/paintwidget.qss \
    uncrustify.cfg

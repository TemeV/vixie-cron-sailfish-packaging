QT       -= gui, core

TARGET = crontab
CONFIG   += console
CONFIG   -= app_bundle

TEMPLATE = app

SOURCES += \
    ../misc.c \
    ../crontab.c \
    ../env.c \
    ../entry.c \
    ../compat.c

INCLUDEPATH += ../

unix:!symbian:!maemo5:!android {
    target.path = /opt/cron/bin
    INSTALLS += target
}

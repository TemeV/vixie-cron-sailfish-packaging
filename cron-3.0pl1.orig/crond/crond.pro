QT       -= gui, core

TARGET = cron
CONFIG   += console
CONFIG   -= app_bundle

TEMPLATE = app

SOURCES += \
    ../do_command.c \
    ../user.c \
    ../misc.c \
    ../popen.c \
    ../job.c \
    ../database.c \
    ../env.c \
    ../entry.c \
    ../cron.c

INCLUDEPATH += ../

unix:!symbian:!maemo5:!android {
    target.path = /opt/cron/bin
    INSTALLS += target startup
}

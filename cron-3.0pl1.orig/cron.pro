#-------------------------------------------------
#
# Project created by QtCreator 2011-08-20T11:24:45
#
#-------------------------------------------------
TEMPLATE = subdirs

SUBDIRS = crond crontab

OTHER_FILES += \
    qtc_packaging/debian_harmattan/rules \
    qtc_packaging/debian_harmattan/README \
    qtc_packaging/debian_harmattan/copyright \
    qtc_packaging/debian_harmattan/control \
    qtc_packaging/debian_harmattan/compat \
    qtc_packaging/debian_harmattan/changelog \
    cron.conf

unix:!symbian:!maemo5 {
    include(deployment.pri)
    qtcAddDeployment()
    startup.files = cron.conf
    startup.path = /etc/init/apps/
    # Have to add README by hand!?
    docs.files += qtc_packaging/debian_harmattan/README
    docs.path = /usr/share/doc/cron/
    INSTALLS += target startup docs
}

TARGET = qt.otus.hw006

CONFIG += \
    auroraapp

PKGCONFIG += \

SOURCES += \
    src/main.cpp \

HEADERS += \

DISTFILES += \
    qml/pages/AccountPage.qml \
    qml/pages/SignInPage.qml \
    qml/pages/SignUpPage.qml \
    rpm/qt.otus.hw006.spec \

AURORAAPP_ICONS = 86x86 108x108 128x128 172x172

CONFIG += auroraapp_i18n

TRANSLATIONS += \
    translations/qt.otus.hw006.ts \
    translations/qt.otus.hw006-ru.ts \

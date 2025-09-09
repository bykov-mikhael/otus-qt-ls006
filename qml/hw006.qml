import QtQuick 2.0
import Sailfish.Silica 1.0

ApplicationWindow {
    objectName: "applicationWindow"
    initialPage: Qt.resolvedUrl("pages/MainPage.qml")

    property string currentPageName: qsTr("")
    property string currentLogin: qsTr("no login")
    property string currentPhoneNumber: qsTr("+7 xxx xxx xx xx")

    cover: Qt.resolvedUrl("cover/DefaultCoverPage.qml")
    allowedOrientations: defaultAllowedOrientations
}

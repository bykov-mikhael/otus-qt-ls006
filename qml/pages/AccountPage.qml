import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: "AccountPage"
    allowedOrientations: Orientation.All

    id: page

    PageHeader {
        objectName: "pageHeader"
        title: currentPageName
    }

    Column {
        anchors.centerIn: parent
        spacing: Theme.paddingLarge

        LinkedLabel {
            id: llCurrentLogin
            anchors.horizontalCenter: parent.horizontalCenter
            plainText: "Пользователь: " + currentLogin
        }

        LinkedLabel {
            id: llCurrentPhoneNumber
            anchors.horizontalCenter: parent.horizontalCenter
            plainText: "Номер телефона: " + currentPhoneNumber
        }
    }
}

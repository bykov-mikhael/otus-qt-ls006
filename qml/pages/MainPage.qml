import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: "mainPage"
    allowedOrientations: Orientation.All

    ListView {

        header: PageHeader {
            title: qsTr("Main Page")
        }

        anchors.fill: parent
        delegate: ListItem {
            Label {
                anchors.verticalCenter: parent.verticalCenter
                x: Theme.horizontalPageMargin
                color: highlighted ? Theme.highlightColor : Theme.primaryColor
                text: model.name
            }
            onClicked: {
                pageStack.push(Qt.resolvedUrl(model.page + ".qml"))
                currentPageName = model.name
            }
        }

        model: ListModel {
            ListElement {
                name: qsTr("Sign up")
                page: "SignUpPage"
                icon: "image://theme/icon-m-user"
            }

            ListElement {
                name: qsTr("Sign in")
                page: "SignInPage"
                icon: "image://theme/icon-m-login"
            }

            ListElement {
                name: qsTr("Account")
                page: "AccountPage"
                icon: "image://theme/icon-m-account"
            }
        }
        VerticalScrollDecorator {}
    }
}

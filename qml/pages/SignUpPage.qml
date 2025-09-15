import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: "SignUpPage"
    allowedOrientations: Orientation.All

    PageHeader {
        objectName: "pageHeader"
//        title: currentPageName
    }

    Column {
        anchors.centerIn: parent
        width: parent.width

        TextField {
            id: tfLogin
            width: parent.width
            placeholderText: qsTr("Введите новый логин")
            label: qsTr("логин")
            inputMethodHints: Qt.ImhLowercaseOnly
            validator: RegExpValidator {
                regExp: /^[a-z]+$/
            }
            EnterKey.enabled: !errorHighlight
            EnterKey.iconSource: "image://theme/icon-m-enter-next"
            EnterKey.onClicked: textArea.focus = true
        }

        TextField {
            id: tfPhoneNumber
            width: parent.width
            placeholderText: qsTr("Введите новый номер телефона")
            label: qsTr("номер телефона")
            inputMethodHints: Qt.ImhFormattedNumbersOnly
            validator: RegExpValidator {
                regExp: /^(\+7|8)[0-9]{10}$/
            }
            EnterKey.enabled: !errorHighlight
            EnterKey.iconSource: "image://theme/icon-m-enter-next"
            EnterKey.onClicked: textArea.focus = true
        }

        TextSwitch {
            id: tsAgree
            width: page.width
            text: checked ? qsTr("Согласен(а)") : qsTr("Не согласен(а)")
            description: qsTr("на обработку персональных данных")
        }

        Button {
            anchors.horizontalCenter: parent.horizontalCenter
            enabled: tfLogin.acceptableInput && tfPhoneNumber.acceptableInput
                     && tsAgree.checked
            text: qsTr("Добавить")
            onClicked: {
                pageStack.push(Qt.resolvedUrl("AccountPage.qml"), {
                                   "_PhoneNumber": tfPhoneNumber.text,
                                   "_Login": tfLogin.text
                               })
            }
        }

        Button {
            anchors.horizontalCenter: parent.horizontalCenter
            enabled: pageStack.depth > 1
            text: qsTr("Вернуться")
            onClicked: {
                onClicked: pageStack.pop()

            }
        }
    }
}

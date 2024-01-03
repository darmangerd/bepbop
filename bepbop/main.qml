import QtQuick 2.15
import QtQuick.Window 2.12
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15

Window {
    width: 800
    height: 500
    color: "#ffffff"
    visible: true

    ColumnLayout {
        width: 339
        height: 372
        antialiasing: true
        spacing: 1
        anchors.centerIn: parent

        Image {
            Layout.maximumWidth: 120
            Layout.maximumHeight: 120
            id: image
            source: "images/logo.png"
            antialiasing: true
            anchors.bottomMargin: 20
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        }

        BBTextbox {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            bbPlaceholder: "Your nickname"
        }

        BBTextbox {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            bbPlaceholder: "The server address"
        }

        BBButton {
            Layout.minimumHeight: 50
            Layout.minimumWidth: 100
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            bbText: "Join us"
        }
    }
}

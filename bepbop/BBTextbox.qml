import QtQuick 2.15

Rectangle {
    property string bbPlaceholder: "Your text..."

    width: 300
    height: 50
    color: "#f0f0f0"
    radius: 10

    TextEdit {
        leftPadding: 20
        rightPadding: 20
        id: textEdit
        anchors.fill: parent
        anchors.margins: 5
        verticalAlignment: TextInput.AlignVCenter
        clip: true
        font.pixelSize: 14
        font.bold: true
        font.family: "Montserrat"
        selectedTextColor: "#ffffff"
        selectionColor: "#B4BAFF"

        Text {
            leftPadding: 20
            rightPadding: 20
            font.pixelSize: 16
            font.bold: true
            font.family: "Montserrat"
            width: parent.width - 20
            height: parent.height
            verticalAlignment: TextInput.AlignVCenter
            text: bbPlaceholder
            color: "#aaa"
            visible: !textEdit.text
        }
    }
}


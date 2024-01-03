import QtQuick 2.15
import QtQuick.Controls 2.15

Button {
    property string bbText: "Button"

    id: button
    width: 100
    height: 50

    MouseArea {
        cursorShape: "PointingHandCursor"
        id: mouseArea
        anchors.fill: parent
        onPressed: mouse.accepted = false
    }

    Text {
        font.bold: true
        font.family: "Montserrat"
        text: bbText
        anchors.fill: parent
        verticalAlignment: TextInput.AlignVCenter
        horizontalAlignment: TextInput.AlignHCenter
        color: "#ffffff"
        font.pixelSize: 17
    }

    background: Rectangle {
        anchors.fill: parent
        color: {
            if (button.down) {
                return "#A8AFFF"
            }
            if (button.hovered) {
                return "#707CFF"
            }
            return "#5C6AFF"
        }
        radius: 10
    }
}

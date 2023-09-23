import QtQuick
import QtQuick.Controls

Rectangle {
    width: 30
    height: 30

    property bool checked: false

    MouseArea {
        anchors.fill: parent
        onClicked: {
            checked = !checked
        }

        Rectangle {
            //width: parent.width * 0.8
            //height: parent.height * 0.8
            anchors.fill: parent
            color: checked ? "#6b7680" : "white"
            radius: width / 2
            border.color: "#6b7680"
            border.width: 2


            Text {
                anchors.centerIn: parent
                text: checked ? "✔" : ""
                font.bold: true
                color: "#ffffff"
            }
        }
    }
}

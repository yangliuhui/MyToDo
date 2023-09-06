import QtQuick
import QtQuick.Window
import QtQuick.Controls
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("MyToDo")

    Text {
        id: txt
        text: qsTr("MyToDo")
        font.pixelSize: 20
        anchors.centerIn: parent
    }

}

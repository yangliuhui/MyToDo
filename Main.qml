import QtQuick
import QtQuick.Window
import QtQuick.Controls
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("MyToDo")

    Row {
        anchors.centerIn: parent
        Text {
            id: txt
            text: qsTr("MyToDo")
            font.pixelSize: 20
        }

        Button {
            id: btn
            onClicked: {
                txt.text = qsTr("Clicked!")
            }
        }
    }

}

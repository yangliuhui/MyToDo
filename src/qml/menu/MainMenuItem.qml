import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
Rectangle {
    id: mainMenuItem
    color: "#ccc9d0"

    Image {
        id: itemIcon
        source: "qrc:/resource/menuItem_Normal.png"
        fillMode: Image.PreserveAspectFit
        height: parent.height - 6
        anchors.left: parent.left
        anchors.leftMargin: 15
        anchors.verticalCenter: parent.verticalCenter
    }

    Text {
        id: itemTitle
        text: qsTr("任务")
        anchors.left: itemIcon.right
        anchors.leftMargin: 5
        height: parent.height

        verticalAlignment: Text.AlignVCenter
        //horizontalAlignment: Text.AlignHCenter
    }

    Text {
        id: itemSubTotal
        text: qsTr("3")
        height: parent.height
        anchors.right: parent.right
        anchors.rightMargin: 15

        verticalAlignment: Text.AlignVCenter
        //horizontalAlignment: Text.AlignHCenter
    }
}

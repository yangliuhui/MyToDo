import QtQuick 2.15
import "../core"

Item {
    Item {
        id: right_titleBar
        height: 40
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right

        RMoveArea {
            control: root
            anchors.fill: parent
        }
    }
}

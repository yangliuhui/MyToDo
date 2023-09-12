import QtQuick
import QtQuick.Window
import QtQuick.Controls
import "core"

Window {
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    flags: Qt.FramelessWindowHint
    color: "transparent"

    SplitView {
        anchors.fill: parent
        orientation: Qt.Horizontal
        Rectangle {
            id: menuItem
            color: "red"
            implicitWidth: 200
            SplitView.maximumWidth: 400
            SplitView.minimumWidth: 120

            Rectangle {
                id: left_titleBar
                height: 40
                color: "transparent"
                anchors.top: parent.top
                anchors.left: parent.left
                anchors.right: parent.right

                RMoveArea {
                    control: root
                    anchors.fill: parent
                }
            }
        }

        Rectangle {
            id: contentItem
            color: "green"
            SplitView.minimumWidth: 50
            SplitView.fillWidth: true

            Rectangle {
                id: right_titleBar
                height: 40
                color: "transparent"
                anchors.top: parent.top
                anchors.left: parent.left
                anchors.right: parent.right

                RMoveArea {
                    control: root
                    anchors.fill: parent
                }
            }
        }
    }
}

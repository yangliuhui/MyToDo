import QtQuick
import QtQuick.Window
import QtQuick.Controls
import "core"
import "menu"
import "content"
import MyToDoUiController 1.0

Window {
    id: root
    width: 640
    height: 480
    visible: true
    flags: Qt.FramelessWindowHint
    color: "transparent"

    MyToDoUiController {
        id: myToDoUiController
    }

    Rectangle {
        anchors.fill: parent
        color: "#e0dee3"
        radius: 10
        SplitView {
            id: splitView
            anchors.fill: parent
            orientation: Qt.Horizontal
            handle: Rectangle {
                id: handleDelegate
                implicitWidth: 2
                implicitHeight: 2
                color: "#ffffff"

                containmentMask: Item {
                    x: (handleDelegate.width - width) / 2
                    width: 64
                    height: splitView.height
                }
            }
            MainMenu {
                id: menuItem
                visible: true
                implicitWidth: 200
                SplitView.maximumWidth: 400
                SplitView.minimumWidth: 120
                onBtnCloseClicked: {
                    myToDoUiController.close()
                    root.close()
                }

                onBtnMinClicked: {
                    root.showMinimized()
                }

                onBtnMaxClicked: {
                    if (root.visibility === Window.Maximized) {
                        root.showNormal()
                    } else {
                        root.showMaximized()
                    }
                }
            }

            MainContent {
                id: contentItem
                SplitView.minimumWidth: 50
                SplitView.fillWidth: true
            }
        }
    }
}

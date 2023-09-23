import QtQuick
import QtQuick.Window
import QtQuick.Controls
import "menu"
import "content"
import MyToDoUiController 1.0

Window {
    id: root
    width: 800
    height: 600
    visible: true
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
                    width: 10
                    height: splitView.height
                }
            }
            MainMenu {
                id: menuItem
                visible: true
                implicitWidth: 200
                SplitView.maximumWidth: 400
                SplitView.minimumWidth: 120
            }

            MainContent {
                id: contentItem
                SplitView.minimumWidth: 50
                SplitView.fillWidth: true
            }
        }
    }
}

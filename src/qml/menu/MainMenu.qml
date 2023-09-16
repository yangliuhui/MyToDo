import QtQuick
import QtQuick.Controls
import "../core"

Item {
    id: menuItem
    signal btnCloseClicked()
    signal btnMinClicked()
    signal btnMaxClicked()

    Column {
        anchors.fill: parent
        Item {
            id: left_titleBar
            height: 40
            width: parent.width
            Row {
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 10
                spacing: 10


                RCircleButton {
                    id: btn_close
                    width: 16
                    height: 16
                    radius: 8
                    onButtonClick: {
                        menuItem.btnCloseClicked()
                    }
                }

                RCircleButton {
                    id: btn_min
                    width: 16
                    height: 16
                    radius: 8
                    onButtonClick: {
                        menuItem.btnMinClicked()
                    }
                }

                RCircleButton {
                    id: btn_max
                    width: 16
                    height: 16
                    radius: 8
                    onButtonClick: {
                        menuItem.btnMaxClicked()
                    }
                }
            }

            RMoveArea {
                control: root
                anchors.fill: parent
                propagateComposedEvents: true
            }
        }

        Item {
            id: left_menu
            height: parent.height - left_titleBar.height
            width: parent.width
        }


    }

}

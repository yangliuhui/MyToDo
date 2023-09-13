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


    Rectangle {
        anchors.fill: parent
        color: "#e0dee3"
        radius: 10
        SplitView {
            anchors.fill: parent
            orientation: Qt.Horizontal
            Item {
                id: menuItem
                visible: true
                implicitWidth: 200
                SplitView.maximumWidth: 400
                SplitView.minimumWidth: 120
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
                                    console.log("clicked btn_close")
                                    root.close()
                                }
                            }

                            RCircleButton {
                                id: btn_min
                                width: 16
                                height: 16
                                radius: 8
                                onButtonClick: {
                                    console.log("clicked btn_min")
                                }
                            }

                            RCircleButton {
                                id: btn_max
                                width: 16
                                height: 16
                                radius: 8
                                onButtonClick: {
                                    console.log("clicked btn_max")
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

            Item {
                id: contentItem
                SplitView.minimumWidth: 50
                SplitView.fillWidth: true

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
        }
    }
}

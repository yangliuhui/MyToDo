import QtQuick 2.15
import QtQuick.Controls
Item {
    id: contentItem
    Image {
        id: backgourndImg
        source: "qrc:/resource/Fern-Mac_Normal@2x.png"
        fillMode: Image.PreserveAspectCrop
        anchors.fill: parent
    }

    Item {
        id: contentTitle

        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.topMargin: 30
        anchors.leftMargin: 15
        anchors.rightMargin: 15

        Text {
            id: contentTitleText
            text: qsTr("任务")
            color: "#ffffff"
            font {
               pixelSize: 23
               bold: true
            }
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.left: parent.left
        }
        Rectangle {
            color: "#222726"
            width: 38
            height:24
            anchors.right: parent.right
            radius: 2
            Text {
                id: contentSetting
                text: qsTr("···")
                font {
                    pixelSize: 15
                }

                color: "#ffffff"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                anchors.fill: parent

            }
        }




    }
    Rectangle {
        id: addTask
        height: 38
        radius: 3
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 8
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.leftMargin: 10
        anchors.rightMargin: 10
        color: "#222726"

        Image {
            id: addTaskIcon
            source: "qrc:/resource/addTask.png"

            anchors.top: parent.top
            anchors.topMargin: 5
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 5
            anchors.left: parent.left
            anchors.leftMargin: 10

            fillMode: Image.PreserveAspectFit
        }

        TextField {
            id: addTestIText
            anchors.left: addTaskIcon.right
            anchors.leftMargin: 10
            anchors.right: parent.right
            anchors.rightMargin: 10
            height: parent.height
            width: 50
            placeholderText: qsTr("添加任务")
            placeholderTextColor: addTestIText.color
            color:"#ffffff"
            background: Rectangle {
                color: addTask.color
            }

            verticalAlignment: Text.AlignVCenter
        }
    }
}

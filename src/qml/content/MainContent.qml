import QtQuick 2.15

Item {
    id: contentItem

    Rectangle {
        id: addTask
        height: 30
        radius: 3
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 8
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.leftMargin: 10
        anchors.rightMargin: 10
        color: "#443b3e"

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

        TextInput {
            id: addTestIText
            anchors.left: addTaskIcon.right
            anchors.leftMargin: 10
            anchors.right: parent.right
            anchors.rightMargin: 10
            inputMask: qsTr("添加任务")
            color:"#ffffff"
            height: parent.height

            verticalAlignment: Text.AlignVCenter
            //horizontalAlignment: Text.AlignHCenter

        }
    }
}

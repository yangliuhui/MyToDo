import QtQuick
import QtQuick.Controls
import "../core"

Item {
    id: menuItem
    Column {
        anchors.fill: parent
        anchors.topMargin: 50

        MainMenuItem {
            id: taskItem
            height: 25
            width: parent.width
        }


    }
}

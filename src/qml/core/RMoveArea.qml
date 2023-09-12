import QtQuick

MouseArea {
    id: mouseArea
    property real lastX: 0
    property real lastY: 0
    property var control: parent

    onPressed: {
        lastX = mouseX
        lastY = mouseY
    }

    onPositionChanged: {
        if (pressed && control) {
            control.x = control.x + mouseX - lastX
            control.y = control.y + mouseY - lastY
        }
    }
}

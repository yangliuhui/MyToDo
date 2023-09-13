import QtQuick

Rectangle {
//    property string normalPath              //按钮正常和鼠标离开按钮区后的图片路径
//    property string enterPath               //鼠标进入按钮区域时的图片路径
//    property string pressPath               //鼠标按下时的图片路径
//    property string releasedPath            //鼠标释放后的图片路径

    signal buttonClick()                    //鼠标点击时发送此信号

//    Image {
//        id: background
//        anchors.fill: parent
//        source: normalPath
//    }

    MouseArea {                             //处理鼠标事件
        anchors.fill: parent
        hoverEnabled: true                  //处理没有按下时的鼠标事件
        onClicked: buttonClick()            //点击按钮时发送buttonClick信号
//        onEntered: background.source = enterPath              //鼠标进入按钮区
//        onPressed: background.source = pressPath              //鼠标按下
//        onExited: background.source = normalPath               //鼠标离开按钮区
//        onReleased: background.source = releasedPath             //鼠标释放
    }
}

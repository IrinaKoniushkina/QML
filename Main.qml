import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 480
    height: 640
    title: "Фигура из прямоугольников"

    Rectangle {
        id: base
        width: 200
        height: 180
        color: "lightblue"
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Rectangle {
        id: door
        width: 40
        height: 60
        color: "darkred"
        anchors.bottom: base.bottom
        anchors.horizontalCenter: base.horizontalCenter
    }

    Rectangle {
        width: 30
        height: 40
        color: "white"
        anchors.topMargin: 45
        anchors.top: base.top
        anchors.horizontalCenter: base.horizontalCenter

    }

    Rect {
        anchors.bottom: base.bottom
        anchors.left: base.left
        anchors.leftMargin: 25
        anchors.bottomMargin: 60
    }

    Rect {
        anchors.bottom: base.bottom
        anchors.right: base.right
        anchors.rightMargin: 55
        anchors.bottomMargin: 60
    }

    Rect {
        anchors.bottom: base.bottom
        anchors.right: base.right
        anchors.rightMargin: 55
        anchors.bottomMargin: 60
    }

    Rect {
        anchors.top: base.top
        anchors.left: base.left
        anchors.leftMargin: 25
        anchors.topMargin: 44
    }

    Rect {
        anchors.top: base.top
        anchors.right: base.right
        anchors.rightMargin: 55
        anchors.topMargin: 45
    }

}

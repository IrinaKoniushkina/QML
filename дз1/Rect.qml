import QtQuick
import Felgo

Item {
    property alias comColor: rect1.color

    Rectangle{
        id: rect1
        width: 30
        height: 40
        color: "white"
    }
}

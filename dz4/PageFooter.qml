import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Rectangle {
    id: root
    height: 60
    color: "white"
    border.color: "darkgray"

    signal newMessage(string msg)

    TextField {
        id: edtText
        selectByMouse: true
        anchors.fill:root
        placeholderText: "Write a message..."
        font.pointSize: 10;color: "black"
    }
    Button {
        id: btnAddItem
        height:root.height
        anchors.right:parent.right
        text: "Send"
        onClicked: {
            newMessage(edtText.text);
            edtText.clear();
        }
    }
}

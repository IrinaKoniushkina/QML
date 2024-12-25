import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Window {
    width: 360
    height: 640
    visible: true
    title: qsTr("Messenger")

    property int defMargin: 8

    ListModel {
        id: my_model
        ListElement { name: "Welcome to the messenger!"; time: "10:00" }
        ListElement { name: "Hello!"; time: "10:01" }
        ListElement { name: "How are you?"; time: "10:02" }
    }

    Page {
        id: page
        anchors.fill: parent
        ListView {
            id: messageList
            anchors.fill: parent
            model: my_model
            spacing: 5


            delegate: Item {
                width: messageList.width
                height: 60

                Rectangle {
                    width: parent.width - 16
                    height: 50
                    color: "white"
                    radius: 10
                    border.color: "lightgray"
                    anchors.horizontalCenter: parent.horizontalCenter


                    Column {
                        anchors.fill: parent

                        Text {
                            text: model.name
                            font.pointSize: 14
                            anchors.top: parent.top
                            anchors.left: parent.left
                            anchors.right: parent.right
                            anchors.margins: 8
                        }

                        Text {
                            text: model.time
                            font.pointSize: 10
                            color: "gray"
                            horizontalAlignment: Text.AlignRight
                            anchors.right: parent.right
                            anchors.bottom: parent.bottom
                            anchors.margins: 8
                        }
                    }
                }
            }
        }

        footer: PageFooter {
            onNewMessage: {
                var newMsg = {};
                newMsg.name = msg;
                newMsg.time = Qt.formatTime(new Date(), "hh:mm");
                my_model.append(newMsg);
            }
        }
    }
}

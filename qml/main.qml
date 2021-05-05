import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import "widgets"

Window {
    width: 640
    height: 480
    visible: true
    color: "#00000000"
    title: qsTr("Hello World")

    Rectangle {
        id: containerRect
        color: "#00000000"
        anchors.fill: parent

        Rectangle {
            id: mainRect
            color: "#2b2b2b"
            anchors.fill: parent

            Rectangle {
                id: topRect
                width: 200
                height: 53
                color: "#1a1a1a"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.rightMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0

                SlideButton {
                    id: button
                    width: sideRect.width
                    height: parent.height
                }
            }

            Rectangle {
                id: sideRect
                width: 61
                color: "#1a1a1a"
                anchors.left: parent.left
                anchors.top: topRect.bottom
                anchors.bottom: parent.bottom
                anchors.topMargin: 0
                anchors.bottomMargin: 0
                anchors.leftMargin: 0

                Button {
                    id: button1
                    width: sideRect.width
                    height: 50
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.leftMargin: 0
                    anchors.topMargin: 0
                    onClicked: button2.isActiveMenu
                }

                Button {
                    id: button2
                    width: sideRect.width
                    height: 50
                    text: qsTr("Button")
                    anchors.left: parent.left
                    anchors.top: button1.bottom
                    anchors.topMargin: 0
                    anchors.leftMargin: 0
                }

                Button {
                    id: button3
                    y: 377
                    width: sideRect.width
                    height: 50
                    text: qsTr("Button")
                    anchors.left: parent.left
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 0
                    anchors.bottomMargin: 0
                }
            }

            Rectangle {
                id: contentRect
                color: "#00000000"
                anchors.left: sideRect.right
                anchors.right: parent.right
                anchors.top: topRect.bottom
                anchors.bottom: parent.bottom
                anchors.topMargin: 0
                anchors.leftMargin: 0
                anchors.bottomMargin: 0
                anchors.rightMargin: 0

                StackView {
                    id: stackView
                    anchors.fill: parent
                    clip: true
                }
            }
        }
    }
}



/*##^##
Designer {
    D{i:0;formeditorZoom:0.75}D{i:3}D{i:7}D{i:8}D{i:5}D{i:10}D{i:9}D{i:2}D{i:1}
}
##^##*/

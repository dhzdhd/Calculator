import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15


Button {
    id: slideButton

    property color colorDefault: "#1a1a1a"
    property color colorPressed: "#00a1f1"
    property color colorHovered: "#23272e"

    property color dynamicColor: if (slideButton.down) {
                                    slideButton.down ? colorPressed : colorDefault
                                } else {
                                    slideButton.hovered ? colorHovered : colorDefault
                                }

    background: Rectangle {
        id: bg
        color: dynamicColor

        Image {
            id: image
            source: "../../svg/slide.svg"
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            height: 30
            width: 30
            fillMode: Image.PreserveAspectFit
        }

        ColorOverlay {
            anchors.fill: image
            source: image
            color: "#ffffff"
            antialiasing: false
        }
    }
}


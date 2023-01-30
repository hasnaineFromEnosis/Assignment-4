import QtQuick 2.0

Rectangle {
    id: root
    color: "transparent"

    ListView {
        anchors.fill: parent
        model: listViewLoader.myModel
        spacing: 20
        contentX: (350 / 2) - root.width / 2

        delegate: Rectangle {
            id: topRect
            width: 350
            height: 150
            color: "#8395a7"
            radius: 20

            Rectangle {
                anchors.fill: parent
                anchors.margins: 5
                color: "transparent"

                CustomImage {
                    id: thumnailImage
                    width: 150
                    height: parent.height
                    imgsrc: url
                    bgcolor: topRect.color
                }

                Rectangle {
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.left: thumnailImage.right
                    anchors.right: parent.right
                    anchors.margins: 20
                    clip: true
                    color: "transparent"

                    Text {
                        id: thumbnailText
                        width: 140
                        wrapMode: Text.Wrap
                        anchors.centerIn: parent

                        text: name
                    }
                }
            }
        }
    }
}

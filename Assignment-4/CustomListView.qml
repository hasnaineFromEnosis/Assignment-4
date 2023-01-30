import QtQuick 2.0

Rectangle {
    id: root
    width: 200
    height: 200
    color: "transparent"


    ListView {
        anchors.fill: parent
        model: listViewLoader.myModel
        spacing: 20

        delegate: Rectangle {
            id: topRect
            width: 350
            height: 150
            color: "#8395a7"
            radius: 20

            Rectangle {
                anchors.fill: parent
                anchors.margins: 5
                radius: 20
                clip: true
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

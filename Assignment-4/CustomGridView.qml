import QtQuick 2.0
import QtQuick.Controls


Rectangle {
    color: "transparent"
    id: root

    GridView {
        anchors.centerIn: parent
        anchors.fill: parent
        model: listViewLoader.myModel
        cellWidth: 150
        cellHeight: 200

        delegate: Rectangle {
            width: 150
            height: 200
            color: "transparent"

            Rectangle {
                anchors.fill: parent
                anchors.margins: 5
                radius: 10
                clip: true
                color: "#8395a7"

                CustomImage {
                    id: thumnailImage
                    width: parent.width
                    height: 135
                    imgsrc: url
                    bgcolor: "#8395a7"
                }

                Rectangle {
                    anchors.top: thumnailImage.bottom
                    anchors.bottom: parent.bottom
                    anchors.left: parent.left
                    anchors.right: parent.right
                    width: 135
                    clip: true
                    color: "transparent"

                    Text {
                        id: thumbnailText
                        width: 130
                        wrapMode: Text.Wrap
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter

                        text: name
                    }
                }
            }
        }
    }
}

import QtQuick 2.0
import QtQuick.Controls

GridView {


    model: GiphyModel { id: mainModel }
    delegate: Rectangle {
        width: 150
        height: 200
        color: "lightblue"

        Rectangle {
            anchors.fill: parent
            anchors.margins: 5
            radius: 10

            Image {
                id: thumnailImage
                width: parent.width
                height: 150
                source: url
            }

            Rectangle {
                anchors.top: thumnailImage.bottom
                anchors.bottom: parent.bottom
                anchors.left: parent.left
                anchors.right: parent.right

                Text {
                    id: thumbnailText
                    anchors.centerIn: parent

                    text: name
                }
            }


        }
    }
}

import QtQuick 2.0
import QtQuick.Controls


Rectangle {
    width: 600
    height: 600
    color: "transparent"
    id: root

    Component.onCompleted: {
        console.log("Custom Grid View Component completed")
    }

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
                    height: 150
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

//    GridView {
//        Component.onCompleted: {
//            console.log("Custom Grid View Component completed 2nd", gridViewLoader.mymodel.count)
//        }

//        anchors.fill: parent
//        model: gridViewLoader.myModel
//        delegate: Rectangle {
//            width: 150
//            height: 200
//            color: "lightblue"

//            Rectangle {
//                anchors.fill: parent
//                anchors.margins: 5
//                radius: 10

//                Image {
//                    id: thumnailImage
//                    width: parent.width
//                    height: 150
//                    source: url
//                }

//                Rectangle {
//                    anchors.top: thumnailImage.bottom
//                    anchors.bottom: parent.bottom
//                    anchors.left: parent.left
//                    anchors.right: parent.right

//                    Text {
//                        id: thumbnailText
//                        anchors.centerIn: parent

//                        text: name
//                    }
//                }


//            }
//        }
//    }
}

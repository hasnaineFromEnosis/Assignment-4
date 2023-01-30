import QtQuick 2.0
import QtQuick.Controls
import QtQuick.Window 2.15


Window {
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("Trending Gif")
    property GiphyModel mainModel: GiphyModel

    Rectangle {
        id: mainRectangle
        anchors.fill: parent

        color: "#576574"

        Rectangle {
            id: topRectangle
            width: parent.width
            height: 50
            color: "#222f3e"

            Switch {
                id: switchButton
                anchors.centerIn: parent

                onClicked: {
                    console.log("Clicked & state: ", position)

                    if(checked) {

                    }
                    else {

                    }

                }
            }

            Text {
                id: switchButtonText
                color: "#c8d6e5"
                text: switchButton.checked ?  "Currently in Grid View" : "Currently in List View"
                anchors.left: switchButton.right
                y: switchButton.y + 5
            }

        }

        Rectangle {
            id: bottomRectangle
            width: parent.width
            anchors.top: topRectangle.bottom
            anchors.bottom: mainRectangle.bottom
            anchors.left: mainRectangle.left
            anchors.right: mainRectangle.right
            anchors.margins: 30

            clip: true
            color: "transparent"

                FetchData {
                    onFetched: (model) => {
                        root.mainModel = model;
                        console.log("Model loaded")
                        listViewLoader.active = true
                    }
                }

                Loader {
                    id: gridViewLoader
                    source: "CustomGridView.qml"
                    anchors.fill: parent
                    active: false

                    property ListModel myModel: root.mainModel
                }

                Loader {
                    id: listViewLoader
                    source: "CustomListView.qml"
                    anchors.fill: parent
                    active: false

                    property ListModel myModel: root.mainModel
                }
        }
    }


}

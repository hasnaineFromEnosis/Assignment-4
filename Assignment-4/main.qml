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

        Rectangle {
            id: topRectangle
            width: parent.width
            height: 50
            color: "green"

        }

        Rectangle {
            id: bottomRectangle
            width: parent.width
            anchors.top: topRectangle.bottom
            anchors.bottom: mainRectangle.bottom
            anchors.left: mainRectangle.left
            anchors.right: mainRectangle.right

            color: "red"
        }
    }

//    FetchData {
//        onFetched: (model) => {
//            root.mainModel = model;
//            console.log("Model loaded")
//            listViewLoader.active = true
//        }
//    }

//    Loader {
//        id: gridViewLoader
//        source: "CustomGridView.qml"
//        anchors.fill: parent
//        active: false

//        property ListModel myModel: root.mainModel
//    }

//    Loader {
//        id: listViewLoader
//        source: "CustomListView.qml"
//        anchors.fill: parent
//        active: false

//        property ListModel myModel: root.mainModel
//    }
}

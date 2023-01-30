import QtQuick 2.0
import QtQuick.Controls
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Trending Gif")

    FetchData {
        onFetched: (model) => {
            console.log(model.count)
        }
    }


    Loader {
        id: gridViewLoader
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: analogButton.top
        source: "CustomGridView.qml"
        active: false

        onLoaded: {
            gridViewbinder.target = gridViewLoader.item;
        }
    }

    Binding {
        id: gridViewbinder
    }
}

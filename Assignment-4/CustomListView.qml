import QtQuick 2.0

Rectangle {
    id: root
    width: 200
    height: 200
    color: "yellow"

    ListView {
        anchors.fill: parent
        model: listViewLoader.myModel
        delegate: Text {
            text: name
        }
    }
}

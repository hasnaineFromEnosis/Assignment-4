import QtQuick 2.0

Item {
    id: root
    property string imgsrc: "value"
    property string bgcolor: "value"
    Image{
        id:img
        source: imgsrc
        anchors.fill: parent
        anchors.margins: 10
    }
    Rectangle { // rounded corners for img
        anchors.fill: root
        color: "transparent"
        border.color: root.bgcolor // color of background
        border.width: 10
        radius: 20
        clip: true
    }
}

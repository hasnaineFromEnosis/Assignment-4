import QtQuick 2.0

Item {
    id: root
    property string imgsrc: "value"
    property string bgcolor: "value"
    Image{
        id:img
        source: imgsrc
        anchors.fill: parent
    }
    Rectangle { // rounded corners for img
        anchors.fill: img
        color: "transparent"
        border.color: root.bgcolor // color of background
        border.width: 4
        radius: 20
        clip: true
    }
}

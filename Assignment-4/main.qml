import QtQuick 2.0
import QtQuick.Controls
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        width: 250
        height: 250
        color: "red"

        Image {
            id: img1
            anchors.fill: parent
            source: "https://media2.giphy.com/media/TkK2EkahP1aFM0mrim/giphy-downsized_s.gif?cid=029c8cdcz7050xqk778ms775xgg03tft5f5lgr751zfd0q2t&rid=giphy-downsized_s.gif&ct=g"
        }
    }

}

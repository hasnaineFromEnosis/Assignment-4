import QtQuick 2.0
import QtQuick.Controls
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    Rectangle {
        width: 400
        height: 400
        property string apiUrl: "https://api.giphy.com/v1/gifs/trending?api_key=TcDy1smE4B7HeCXW7xJuGSfevKMrvpzI&limit=2&rating=g"


        Component.onCompleted: {
            var request = new XMLHttpRequest()
            request.open("GET", apiUrl)
            request.onreadystatechange = function() {
                if (request.readyState === XMLHttpRequest.DONE) {
    //                console.log("API response:", request.responseText)
                    console.log("Test: ", request.responseText)
                    var obj = JSON.parse(request)
                    console.log("Name: ", obj.data[0].id)
                }
            }
            request.send()
        }
    }
}

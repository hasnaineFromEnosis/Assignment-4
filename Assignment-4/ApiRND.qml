import QtQuick 2.0
import QtQuick.Controls

Rectangle {
    width: 400
    height: 400
    property string apiUrl: "https://api.giphy.com/v1/gifs/trending?api_key=TcDy1smE4B7HeCXW7xJuGSfevKMrvpzI&limit=2&rating=g"

    Component.onCompleted: getData1()

    function getData1() {
        var request = new XMLHttpRequest()
        request.open("GET", apiUrl)
        request.onreadystatechange = function() {
            if (request.readyState === XMLHttpRequest.DONE) {
                console.log("API response:", request.responseText)
                console.log("-----------------------------")
                var response = JSON.parse(request.responseText).data
                console.log("Response: ", response)

                response.forEach(function(gif) {
                    console.log(gif.images.downsized_still.url)
                    console.log(gif.title)
                })

            } else {
                console.log("Found Nothing")
            }
        }

        request.send()
    }
}

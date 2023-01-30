import QtQuick 2.0
import QtQuick.Controls

Rectangle {
    id: root
    width: 400
    height: 400
    property string apiUrl: "https://api.giphy.com/v1/gifs/trending?api_key=TcDy1smE4B7HeCXW7xJuGSfevKMrvpzI&limit=2&rating=g"
    signal fetched(model: GiphyModel)

    Component.onCompleted: getData1()

    ListView {
        model: GiphyModel {id: mainModel}
    }

    function getData1() {
        var request = new XMLHttpRequest()
        request.open("GET", apiUrl)
        request.onreadystatechange = function() {
            if (request.readyState === XMLHttpRequest.DONE) {
                var response = JSON.parse(request.responseText).data

                response.forEach(function(gif) {
                    console.log(gif.title)
                    mainModel.append({"url":"gif.images.downsized_still.url", "name":"gif.title"})

                })

                root.fetched(mainModel)

            } else {
                console.log("Found Nothing")
            }
        }

        request.send()
    }

    onFetched: {
        console.log("Fetch Done")
        console.log(mainModel.count)
    }
}

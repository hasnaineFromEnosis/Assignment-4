import QtQuick 2.0

//Rectangle {
//    id: root
//    property string imgsrc: "value"
//    property string bgcolor: "value"
//    color: "transparent"

//    Image {
//        id: image

//        source: "https://media3.giphy.com/media/woE2JEHMGpWMhP2m2b/giphy.gif?cid=029c8cdctfvdj33eoddijhfchwwjw5qb5xrtak5p2rpo1g2j&rid=giphy.gif&ct=g"

//        property bool rounded: true
//        property bool adapt: true

//        layer.enabled: rounded
//        layer.effect: ShaderEffect {
//            property real adjustX: image.adapt ? Math.max(width / height, 1) : 1
//            property real adjustY: image.adapt ? Math.max(1 / (width / height), 1) : 1

//            fragmentShader: "
//            #ifdef GL_ES
//                precision lowp float;
//            #endif // GL_ES
//            varying highp vec2 qt_TexCoord0;
//            uniform highp float qt_Opacity;
//            uniform lowp sampler2D source;
//            uniform lowp float adjustX;
//            uniform lowp float adjustY;

//            void main(void) {
//                lowp float x, y;
//                x = (qt_TexCoord0.x - 0.5) * adjustX;
//                y = (qt_TexCoord0.y - 0.5) * adjustY;
//                float delta = adjustX != 1.0 ? fwidth(y) / 2.0 : fwidth(x) / 2.0;
//                gl_FragColor = texture2D(source, qt_TexCoord0).rgba
//                    * step(x * x + y * y, 0.25)
//                    * smoothstep((x * x + y * y) , 0.25 + delta, 0.25)
//                    * qt_Opacity;
//            }"
//        }
//    }
//}

/*
In this example, the ShaderEffect creates a custom fragment shader that rounds the corners of an image. The radius and feather properties control the size of the rounded corners and the smoothness of the transition between the rounded corners and the rectangular parts of the image.

The source property is set to an Image element that loads the image to be rounded. The size property determines the size of the image, which is used by the shader code to calculate the location of the rounded corners.

This code uses the uniform sampler2D type to sample the source image, and the varying vec2 type to interpolate the texture coordinates of the fragment shader between the vertices of the rectangle that represents the image.

The round_corner function calculates the opacity of each pixel in the image based on its distance from the center of the rounded corner. The function uses the smoothstep function to create a smooth transition between fully opaque and fully transparent pixels.
*/




//Rectangle {
//    id: root
//    property string imgsrc: "value"
//    property string bgcolor: "value"
//    property int cornerRadius: 20
//    clip: true
//    BorderImage {
//        anchors.fill: parent
//        border {
//            left: root.cornerRadius;
//            top: root.cornerRadius;
//            right: root.cornerRadius;
//            bottom: root.cornerRadius
//        }
//        horizontalTileMode: BorderImage.Stretch
//        verticalTileMode: BorderImage.Stretch
//        source: root.imgsrc
//    }
//}

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

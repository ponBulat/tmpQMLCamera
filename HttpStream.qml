import QtQuick
import QtQuick.Controls

import QtMultimedia

Video {
    id: video
    width : 640
    height : 480
    source: "http://localhost:8080/"

    Column {
        Button {
            text: "Play"
            onClicked: video.play()
        }
        Button {
            text: "Stop"
            onClicked: video.stop()
        }
    }
}

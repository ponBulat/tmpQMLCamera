import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

import QtMultimedia

Rectangle {
    width: 360
    height: 240

    Column {
        Button {
            text: "start"
            onClicked: myCamera.start()
        }

        Button {
            text: "stop"
            onClicked: myCamera.stop()
        }
    }

    CaptureSession {
        camera: Camera {
            id: myCamera
            cameraDevice: devices.defaultVideoInput
        }
        videoOutput: videoOutput
    }

    MediaDevices {
        id: devices
    }

    VideoOutput {
        id: videoOutput
        anchors.fill: parent
    }

    function start() {
        myCamera.start()
    }

    function stop() {
        myCamera.stop()
    }
}

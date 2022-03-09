import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

import QtMultimedia

Rectangle {
    width: 640
    height: 480

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

import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtMultimedia

Rectangle {
    width: 800
    height: 600

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
}

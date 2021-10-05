import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Controls.Material

import QtMultimedia

Window {
    width: 1000
    height: 800
    visible: true
    title: qsTr("Hello World")

    Button {
        id: btn
        checkable: true;
        onClicked: {
            if( checked ) {
                myCamera.start();
            } else {
                myCamera.stop();
            }
        }
    }

    Rectangle {
        y: btn.height

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


}

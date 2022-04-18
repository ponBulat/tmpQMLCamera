import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

import QtMultimedia

Rectangle {
    id: root
    width: 800
    height: 800

    Row {
        Column {
            Button {
                text: "start"
                onClicked: camera.start()
            }

            Button {
                text: "stop"
                onClicked: camera.stop()
            }

            Button {
                text: "tap"
                onClicked: {
                    console.log( 'tap' )

//                    console.log( JSON.stringify( camera.cameraFormat ) )

    //                camera.cameraFormat.resolution = '640x480'
//                    camera.cameraFormat.resolution = {"width":320,"height":240}
//                    console.log( JSON.stringify( camera.cameraFormat ) )
    //                mediaRecorder.quality = 0
                }
            }
//            Button {
//                text: "tap"
//                onClicked: {
//    //                camera.cameraFormat.resolution = '640x480'
//    //                console.log( mediaRecorder.quality )
//    //                mediaRecorder.quality = 4
//                }
//            }
        }

        CaptureSession {
            id: captureSession
            camera: Camera {
                id: camera
                cameraDevice: devices.defaultVideoInput
            }
            videoOutput: videoOutput
            recorder: MediaRecorder {
                id: mediaRecorder
            }
        }

        MediaDevices {
            id: devices
        }

        VideoOutput {
            id: videoOutput            
            transform:  [
                Matrix4x4 {
                  matrix: Qt.matrix4x4(-1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)
                },
                Translate {
                  x: annotationHLine.width
                }
              ]
        }

        Component.onCompleted: {

//            const resolutions = new Set()

//            for( const videoFormat of camera.cameraDevice.videoFormats ) {

//                const resolution = `${ videoFormat.resolution.width }x${ videoFormat.resolution.height } ${ videoFormat.minFrameRate }`

//                console.log( resolution )
//                resolutions.add( resolution )

//                if( videoFormat.resolution.width === 240 ) {
//                    console.log( JSON.stringify( videoFormat ) )
//                    camera.cameraFormat = videoFormat
//                    break
//                }
//            }



//            resolutions.forEach((value, valueAgain, set) => {
//              console.log(value);
//            });



//            console.log( String( '240x240 30 Hz' ).split(' ')[0].split( 'x' ) )

//            camera.cameraFormat.resolution = {
//                    "width": 240,
//                    "height": 240
//                }

//            console.log( JSON.stringify( camera.cameraFormat.resolution ) )


//            camera.cameraFormat.pixelFormat = 17
//            camera.cameraFormat.minFrameRate = 30
//            camera.cameraFormat.maxFrameRate = 30


//        camera.cameraFormat. = cameraFormat
//            "resolution": {
//                "width": 240,
//                "height": 240
//            },
//            "pixelFormat": 17,
//            "minFrameRate": 30,
//            "maxFrameRate": 30
//        }


//            for( const videoInput of devices.videoInputs ) {
//                if( videoInput.description.toLowerCase().includes( 'usb' ) ) {
//                    console.log( JSON.stringify(  videoInput ))
//                    console.log( "========" )
//                }
//            }
        }
    }
}

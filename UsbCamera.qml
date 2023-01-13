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
            Row {
                Button {
                    text: "start"
                    onClicked: camera.start()
                }
                Button {
                    text: "stop"
                    onClicked: { camera.stop(); console.log( "stop" )}
                }
                Button {
                    text: "tap"
                    onClicked: {

                        console.log( "zoomFactor", camera.zoomFactor )
                        console.log( "minimumZoomFactor", camera.minimumZoomFactor )
                        console.log( "maximumZoomFactor", camera.maximumZoomFactor )

    //                    console.log( 'tap' )

                        console.log( JSON.stringify( camera.cameraDevice.videoFormats ) )

        //                camera.cameraFormat.resolution = '640x480'
    //                    camera.cameraFormat.resolution = {"width":320,"height":240}
    //                    console.log( JSON.stringify( camera.cameraFormat ) )
        //                mediaRecorder.quality = 0
                    }
                }
            }

            ComboBox {
                id: inResolutionComboBox
                model: getResolutions()
            }
        }

        CaptureSession {
            id: captureSession
            camera: camera
            videoOutput: videoOutput
//            recorder: MediaRecorder {
//                id: mediaRecorder
//            }
        }

        MediaDevices {
            id: devices
        }

        VideoOutput {
            id: videoOutput            
//            transform:  [
//                Matrix4x4 {
//                  matrix: Qt.matrix4x4(-1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)
//                },
//                Translate {
//                  x: annotationHLine.width
//                }
//              ]
        }

        Camera {
                id: camera
                cameraDevice: devices.defaultVideoInput
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

//    MouseArea {
//        anchors.fill: parent
//        onPressed: {

//            console.log( "onPressed" )
//        }
//    }



    function getResolutions( ) {

        const resolutions = new Set()

        for( const videoFormat of devices.defaultVideoInput.videoFormats ) {

            let hz = ''

            if( videoFormat.maxFrameRate % 1 )
                hz = videoFormat.maxFrameRate.toFixed(1) //  например 7.500001907348633
            else
                hz = videoFormat.maxFrameRate

            hz += ' Hz'

            const resolution = `${ videoFormat.resolution.width }x${ videoFormat.resolution.height } ${ hz }`

            resolutions.add( resolution )
        }

        return Array.from( resolutions ).sort()
    }
}

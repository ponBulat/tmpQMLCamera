import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Controls.Material

ApplicationWindow {
    width: 1000
    height: 600
    visible: true
    title: qsTr("Camera demo")

    TabBar {
        id: bar
        width: parent.width

        TabButton { text: "UsbCamera" }

        TabButton { text: "HttpStream" }
    }

    StackLayout {
        width: parent.width
        y: bar.height
        currentIndex: bar.currentIndex

        UsbCamera {
            id: usbCamera
        }

        HttpStream {
            id: httpStream
        }
    }
}

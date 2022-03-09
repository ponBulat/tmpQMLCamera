import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

StackLayout {

    UsbCamera {
        id: usbCamera
    }

    HttpStream {
        id: httpStream
    }
}

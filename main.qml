import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Controls.Material

import QtMultimedia

import "./Body" as Body

ApplicationWindow {
    width: 1000
    height: 800
    title: qsTr("Camera demo")

    header: CameraToolBar {

    }

    Body.Body {

    }

}

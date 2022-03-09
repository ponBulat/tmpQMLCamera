import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

ToolBar {
    Row {
        anchors.fill: parent

        ToolButton {
            text: "Start USB Camera"
            checkable: true;
            onClicked: startUsbCamera( checked )
        }
        ToolButton {
            text: "Start HTTP Stream"
            checkable: true;
            onClicked: startUsbCamera( checked )
        }
    }

    signal startUsbCamera(  bool isStart )
    signal startHttpStream( bool isStart )
}

import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    visible: true
    width: 900
    height: 640
    title: "MD3 Reference"
    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 24
        spacing: 16
        Label { text: "Classic Material Design 3"; font.pixelSize: 28 }
        Button { text: "主要操作" }
        TextField { placeholderText: "显示名称"; text: "Material User" }
    }
}

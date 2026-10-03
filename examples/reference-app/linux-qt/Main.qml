import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    id: root
    width: 820
    height: 700
    visible: true
    title: "MD3 Reference"

    ScrollView {
        anchors.fill: parent
        ColumnLayout {
            width: Math.min(root.width - 48, 900)
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 16

            Label { text: "Classic Material Design 3"; color: "#6750A4" }
            Label { text: "跨平台参考应用"; font.pixelSize: 32 }
            Button { text: "主要操作"; objectName: "primary-action" }
            GroupBox {
                objectName: "reference-overview"
                title: "概览"
                Layout.fillWidth: true
                RowLayout { Label { text: "Token" } Label { text: "Adaptive" } Label { text: "State" } }
            }
            GroupBox {
                objectName: "reference-list"
                title: "列表"
                Layout.fillWidth: true
                ColumnLayout { Label { text: "项目 A · 辅助信息" } Label { text: "项目 B · 辅助信息" } }
            }
            GroupBox {
                objectName: "reference-form"
                title: "表单"
                Layout.fillWidth: true
                ColumnLayout {
                    TextField { placeholderText: "显示名称"; text: "Material User"; objectName: "display-name" }
                    Switch { text: "启用通知"; checked: true; objectName: "notifications" }
                    Button { text: "保存"; objectName: "save-settings" }
                }
            }
            GroupBox {
                objectName: "reference-settings"
                title: "设置"
                Layout.fillWidth: true
                Label { text: "主题跟随系统；窗口变化时内容保持可读和可操作。"; wrapMode: Text.WordWrap }
            }
        }
    }
}

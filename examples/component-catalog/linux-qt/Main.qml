import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    id: root
    width: 1100
    height: 900
    visible: true
    title: "MD3 Component Catalog"

    ScrollView {
        anchors.fill: parent
        ColumnLayout {
            width: Math.min(root.width - 48, 1080)
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 14

            Label { text: "Classic Material Design 3"; color: "#6750A4" }
            Label { text: "31 组件目录"; font.pixelSize: 32 }

            GroupBox { Layout.fillWidth: true; title: "按钮 · component-buttons"; RowLayout { Button { text: "Filled" } Button { text: "Outlined"; flat: true } } }
            GroupBox { Layout.fillWidth: true; title: "浮动操作按钮 · component-floating-action-button"; Button { text: "+" } }
            GroupBox { Layout.fillWidth: true; title: "图标按钮 · component-icon-buttons"; RowLayout { RoundButton { text: "★" } RoundButton { text: "⋮" } } }
            GroupBox { Layout.fillWidth: true; title: "分段按钮 · component-segmented-buttons"; RowLayout { Button { text: "日"; checkable: true; checked: true } Button { text: "周"; checkable: true } Button { text: "月"; checkable: true } } }
            GroupBox { Layout.fillWidth: true; title: "徽标 · component-badges"; RowLayout { Label { text: "●"; color: "#b3261e" } Label { text: "12"; color: "white"; padding: 6; background: Rectangle { color: "#b3261e"; radius: 12 } } } }
            GroupBox { Layout.fillWidth: true; title: "进度指示器 · component-progress-indicators"; ColumnLayout { ProgressBar { value: .65 } BusyIndicator { running: true } } }
            GroupBox { Layout.fillWidth: true; title: "Snackbar · component-snackbars"; Label { text: "设置已保存"; padding: 12; color: "white"; background: Rectangle { color: "#322f35"; radius: 4 } } }
            GroupBox { Layout.fillWidth: true; title: "Tooltip · component-tooltips"; Button { text: "悬停"; ToolTip.visible: hovered; ToolTip.text: "说明" } }
            GroupBox { Layout.fillWidth: true; title: "Bottom sheet · component-bottom-sheets"; Frame { Label { text: "底部面板" } } }
            GroupBox { Layout.fillWidth: true; title: "Cards · component-cards"; Frame { Label { text: "卡片内容" } } }
            GroupBox { Layout.fillWidth: true; title: "Carousel · component-carousel"; RowLayout { Repeater { model: 3; Frame { Label { text: "Item " + (index + 1) } } } } }
            GroupBox { Layout.fillWidth: true; title: "Dialogs · component-dialogs"; Button { text: "打开对话框"; onClicked: dialog.open() } }
            GroupBox { Layout.fillWidth: true; title: "Divider · component-divider"; Rectangle { Layout.fillWidth: true; height: 1; color: "#79747e" } }
            GroupBox { Layout.fillWidth: true; title: "Lists · component-lists"; ColumnLayout { Label { text: "项目 A" } Label { text: "项目 B" } } }
            GroupBox { Layout.fillWidth: true; title: "Side sheet · component-side-sheets"; Frame { Label { text: "辅助信息" } } }
            GroupBox { Layout.fillWidth: true; title: "Bottom app bar · component-bottom-app-bar"; RowLayout { ToolButton { text: "⌂" } ToolButton { text: "☆" } } }
            GroupBox { Layout.fillWidth: true; title: "Top app bar · component-top-app-bar"; ToolBar { RowLayout { Label { text: "标题" } Item { Layout.fillWidth: true } ToolButton { text: "⋮" } } } }
            GroupBox { Layout.fillWidth: true; title: "Navigation bar · component-navigation-bar"; RowLayout { Button { text: "首页"; flat: true } Button { text: "收藏"; flat: true } } }
            GroupBox { Layout.fillWidth: true; title: "Navigation drawer · component-navigation-drawer"; ColumnLayout { Label { text: "首页" } Label { text: "设置" } } }
            GroupBox { Layout.fillWidth: true; title: "Navigation rail · component-navigation-rail"; ColumnLayout { ToolButton { text: "⌂" } ToolButton { text: "☆" } } }
            GroupBox { Layout.fillWidth: true; title: "Search · component-search"; TextField { placeholderText: "搜索" } }
            GroupBox { Layout.fillWidth: true; title: "Tabs · component-tabs"; TabBar { TabButton { text: "概览" } TabButton { text: "详情" } } }
            GroupBox { Layout.fillWidth: true; title: "Checkbox · component-checkbox"; CheckBox { text: "复选项"; checked: true } }
            GroupBox { Layout.fillWidth: true; title: "Chips · component-chips"; RowLayout { Button { text: "过滤"; checkable: true } Button { text: "标签"; flat: true } } }
            GroupBox { Layout.fillWidth: true; title: "Date picker · component-date-pickers"; Label { text: "2026-10-03" } }
            GroupBox { Layout.fillWidth: true; title: "Menus · component-menus"; Button { text: "菜单"; onClicked: menu.open(); Menu { id: menu; MenuItem { text: "编辑" } MenuItem { text: "删除" } } } }
            GroupBox { Layout.fillWidth: true; title: "Radio button · component-radio-button"; RadioButton { text: "单选项"; checked: true } }
            GroupBox { Layout.fillWidth: true; title: "Sliders · component-sliders"; Slider { value: .45 } }
            GroupBox { Layout.fillWidth: true; title: "Switch · component-switch"; Switch { text: "通知"; checked: true } }
            GroupBox { Layout.fillWidth: true; title: "Text fields · component-text-fields"; TextField { placeholderText: "显示名称" } }
            GroupBox { Layout.fillWidth: true; title: "Time picker · component-time-pickers"; Label { text: "12:30" } }
        }
    }

    Component.onCompleted: { if (Qt.application.arguments.indexOf("--smoke") >= 0) Qt.callLater(Qt.quit) }

    Dialog {
        id: dialog
        title: "确认操作"
        standardButtons: Dialog.Ok | Dialog.Cancel
        Label { text: "对话框内容" }
    }
}

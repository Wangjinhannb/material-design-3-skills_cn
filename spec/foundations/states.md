# 交互状态

来源类别：`official-md3` + `platform-adaptation`。

组件设计和实现至少考虑：default、hovered、focused、pressed、dragged、selected/activated、disabled、error；是否适用取决于组件语义和输入设备。

- Desktop/Web 必须 处理键盘 focus 和 pointer hover，不能只实现 touch pressed。
- Disabled 状态不应只降低整个组件 opacity；内容、容器、边框和状态层应按组件规则处理。
- 桌面平台必须显示可辨认的 focus ring/focus indicator；键盘焦点不可隐藏。
- Selected 和 keyboard focus 是两个不同状态，不得 混为同一视觉或语义状态。

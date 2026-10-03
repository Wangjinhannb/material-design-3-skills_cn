# 布局

来源类别：`official-md3` + `platform-adaptation`。

- Layout 必须 由内容层级、窗口尺寸和输入方式共同决定，不能只按设备型号分支。
- 紧凑窗口的单列移动布局不能直接横向拉伸到桌面。
- Navigation bar、rail、drawer 之间 应 根据可用窗口和信息架构选择。
- 文本列宽、内容密度和可读性在 expanded 窗口仍需受控。
- 平台系统区域（safe area、system bar、window chrome、IME）由平台适配层负责。

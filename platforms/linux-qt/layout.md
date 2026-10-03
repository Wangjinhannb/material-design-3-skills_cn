# 布局

使用窗口可用空间、输入方式、系统 inset/safe area 与内容层级做自适应。

- compact：优先单窗格与紧凑导航；
- medium：评估 rail、双窗格或更宽内容；
- expanded：评估 drawer/rail + list-detail/supporting pane。

跨平台窗口语义保持一致；断点实现使用目标平台窗口 API 和系统区域。

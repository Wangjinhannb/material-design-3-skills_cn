# 自适应布局

来源类别：`official-md3` + `platform-adaptation`。

自适应设计以**窗口尺寸和输入方式**为主要输入。实现 应 支持 compact、medium、expanded 的基础思路，并允许目标平台使用自己的窗口分类 API。

典型转换：

- compact：单窗格、底部导航；
- medium：navigation rail、可选双窗格；
- expanded：drawer/rail + 双窗格或 supporting pane。

跨平台规范只定义窗口语义。各平台记录实际断点、单位和窗口 API。

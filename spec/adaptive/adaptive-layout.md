# Adaptive Layout

来源类别：`official-md3` + `platform-adaptation`。

自适应设计以**窗口**而不是品牌设备名称为主要输入。实现 SHOULD 支持 compact、medium、expanded 的基础思路，并允许目标平台使用自己的窗口分类 API。

典型转换：

- compact：单窗格、底部导航；
- medium：navigation rail、可选双窗格；
- expanded：drawer/rail + 双窗格或 supporting pane。

具体断点不得在跨平台规范层伪装成所有平台唯一物理宽度；平台实现应记录它采用的单位和 API。

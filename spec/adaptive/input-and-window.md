# Input and Window Adaptation

跨平台 M3 必须同时考虑 touch、mouse、trackpad、keyboard、pen 与辅助技术。

- Hover 只在存在 hover-capable pointer 时启用。
- 键盘可操作性不能依赖快捷键作为唯一入口。
- 桌面窗口 resize 后组件必须重新布局，而不是只缩放画布。
- 高 DPI / display scale 不应导致 token 被当作物理像素硬编码。
- 可折叠设备应根据 hinge/posture 信息决定是否拆分窗格；不能假定所有大屏都是连续矩形。

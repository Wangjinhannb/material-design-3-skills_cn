# 架构

GTK 4 提供 Linux UI 与 `GtkAccessible`。libadwaita 采用 Adwaita/GNOME 视觉体系；本仓库单独应用 M3 视觉层。

平台代码 必须 从 generated token 或等价主题入口消费设计值，不得 重新定义一套独立颜色/排版真相。

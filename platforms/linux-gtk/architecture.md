# Architecture

GTK 4 提供原生 Linux UI 与 `GtkAccessible`。libadwaita 属于 Adwaita/GNOME 设计体系，不是 Material 3。

平台代码 MUST 从 generated token 或等价主题入口消费设计值，MUST NOT 重新定义一套独立颜色/排版真相。

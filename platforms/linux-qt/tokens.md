# Tokens

本平台从 `tokens/generated/linux-qt/` 或等价生成文件消费 canonical token。

单位映射：`Qt/QML logical pixels`。

结合 devicePixelRatio 和 Qt 布局，不能硬编码物理像素。

平台代码 MUST NOT 重新维护一套与 `tokens/source/` 无关的颜色、shape 或 state 常量。

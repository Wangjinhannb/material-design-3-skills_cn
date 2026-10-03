# Tokens

本平台从 `tokens/generated/android/` 或等价生成文件消费 canonical token。

单位映射：`dp/sp`。

尺寸/shape/elevation 映射 dp，文字映射 sp；颜色使用 ColorScheme/Color。

平台代码 MUST NOT 重新维护一套与 `tokens/source/` 无关的颜色、shape 或 state 常量。

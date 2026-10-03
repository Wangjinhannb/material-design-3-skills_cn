# Tokens

本平台从 `tokens/generated/windows/` 或等价生成文件消费 canonical token。

单位映射：`effective pixels / XAML resources`。

遵守 Windows display scaling；资源通过 ResourceDictionary 注入。

平台代码 MUST NOT 重新维护一套与 `tokens/source/` 无关的颜色、shape 或 state 常量。

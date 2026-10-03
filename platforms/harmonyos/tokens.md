# Tokens

本平台从 `tokens/generated/harmonyos/` 或等价生成文件消费 canonical token。

单位映射：`vp/fp 等平台逻辑单位`。

具体单位必须按当前 ArkUI API 验证，不能把 CSS px 原样当物理像素。

平台代码 MUST NOT 重新维护一套与 `tokens/source/` 无关的颜色、shape 或 state 常量。

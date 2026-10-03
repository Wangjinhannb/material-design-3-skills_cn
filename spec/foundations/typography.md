# 排版

来源类别：`official-md3`。

Classic M3 使用 15 个基础 type roles：Display、Headline、Title、Body、Label 各 Large/Medium/Small。数值记录在 `tokens/source/typography.tokens.json`。

- 组件 必须 绑定 type role，不应为每个页面随意创造字号。
- 文本缩放后布局 必须 仍可完成任务；不得用固定高度截断用户放大的文本。
- 字体家族可以品牌化，但 role 的层级、用途、字重与行高关系 应 保持清晰。
- CJK 本地化 可 因字体度量调整字体家族和字重，但不得通过压缩行高牺牲可读性。

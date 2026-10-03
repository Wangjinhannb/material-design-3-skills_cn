# Color

来源类别：`official-md3` + `repo-convention`

## 核心原则

- UI MUST 使用语义 color role，而不是把品牌十六进制值散落在组件代码中。
- 前景内容 MUST 使用与容器成对的 `on-*` role；例如 `primary` 上的文本/图标使用 `onPrimary`。
- Surface 层级 SHOULD 优先通过 surface container roles 与 tonal hierarchy 表达，而不是只增加阴影。
- `error`/`onError` 与 `errorContainer`/`onErrorContainer` 用于错误语义；错误状态不能只靠红色表达。
- Light 与 Dark theme MUST 各自经过可读性与状态审查，不能只做颜色反转。

## Classic M3 role groups

Primary、Secondary、Tertiary、Error、Background/Surface、Outline、Inverse、Fixed roles 与 Surface Container roles 统一登记在 `tokens/source/color-*.tokens.json`。

`tokens/source/` 中的紫色主题是 **参考主题**，不是“所有 Material 3 应用必须使用的官方固定配色”。产品 SHOULD 通过 seed/品牌色生成或提供自己的 role values，但 role 语义保持不变。

## 动态颜色

动态颜色 MAY 在平台支持时使用。启用时必须保证：

1. role 语义不变；
2. light/dark 都可读；
3. 关键品牌识别和状态语义不会因用户配色失效；
4. 不支持动态颜色的平台仍有确定性 fallback。

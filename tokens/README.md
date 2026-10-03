# Design Tokens

## Source

- `color-light.tokens.json` / `color-dark.tokens.json`：DTCG 2025.10 颜色结构。
- `typography.tokens.json`、`shape.tokens.json`、`elevation.tokens.json`、`state.tokens.json`、`motion.tokens.json`：仓库明确标记的 `repo-md3-token-v1`。

这样做是为了避免在尚未完整实现 DTCG composite/resolver 时错误宣称“全量 DTCG 合规”。

参考紫色主题只用于测试生成器和示例；产品可替换 role value，但不得改变 role 语义。

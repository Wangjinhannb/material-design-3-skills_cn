# 最终审计

## 仓库检查

- Classic M3 baseline 与 Expressive-only 范围分离。
- `official-md3`、`platform-adaptation`、`repo-convention` 来源层级明确。
- token 由 canonical source 生成。
- 31 个组件具有 metadata、规范页和七个平台 Catalog 标识。
- 七个平台具有 Reference App 与 Component Catalog 工程入口。
- Skill 包含平台路由、四种工作模式和静态 audit。
- CI 覆盖仓库校验及可用平台构建。
- Markdown、路径和 Skill frontmatter 符合仓库规则。

## 平台限制

HarmonyOS 运行时验证依赖 DevEco Studio/HarmonyOS SDK。Windows hosted runner 主要用于构建验证，GUI visual/accessibility 需要可交互 Windows runner。

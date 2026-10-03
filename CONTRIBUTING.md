# 贡献指南

## 修改规范

1. 先确认来源存在于 `metadata/sources.yaml`；没有则先补来源。
2. 判断规则属于 `official-md3`、`platform-adaptation` 还是 `repo-convention`。
3. 修改 canonical spec/metadata。
4. 如果影响生成内容，运行相应 generator。
5. 运行 `make check`。

## 增加组件

组件必须先进入 `metadata/components.yaml`，包含 purpose、variants、states、accessibility、adaptive、official URL。然后运行组件文档与 support matrix generator。

## 增加平台

必须提供平台事实来源、token 映射、核心组件策略、无障碍、输入、导航、窗口/布局、测试、限制和兼容性记录。没有真实构建验证时不能标记 stable。

## 修改 Token

禁止只改 `tokens/generated/`。必须修改 `tokens/source/`，运行 generator，并提交 source 与 generated diff。

## 修改 Skill

`SKILL.md` 只放路由和高优先级工作流，详细规则放 `skill/references/`。修改后必须运行 Skill validator 和 `tests/skill/eval-cases.yaml` 的静态结构检查。

## 编码与路径

所有路径使用纯英文 ASCII。普通 Markdown 使用 UTF-8 with BOM；`SKILL.md` 是唯一兼容性例外，使用 UTF-8 without BOM。

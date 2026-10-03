# Dependency Policy

依赖的默认策略是“能不用就不用，必须用则可追踪”。

- 生成器和 validator SHOULD 优先 Python 标准库；当前只额外依赖 PyYAML。
- 平台示例的 UI 依赖必须来自目标平台官方 SDK 或经过说明的成熟库。
- 不引入仅为了“更像 Material”的第三方主题包作为 canonical 依赖。
- 依赖版本必须记录在平台兼容性文件或 lockfile 中；升 major 版本要重新跑 conformance audit。
- 已停止维护的依赖不得作为 stable 平台的关键路径，除非有替代/迁移计划。

# Roadmap

## v0.1.x - 工程基线

- 固定 Classic M3 baseline、来源、组件清单和 token schema。
- 完善全部平台的设计映射与反幻觉约束。
- 保持所有生成文件可通过 CI 重建。

## v0.2.x - 可运行参考实现

- 完成 Web Reference App 的交互与可访问性测试。
- 在具备 Android SDK 的环境建立 Compose Material 3 Reference App 构建验证。
- 在 DevEco Studio、Xcode、Windows App SDK、GTK4、Qt6 对应环境逐一完成真实编译记录。

## v0.3.x - 组件目录与视觉回归

- 为全部 31 个 Classic M3 组件建立跨平台 Component Catalog。
- 建立 screenshot/golden testing，并区分语义一致性与平台渲染差异。

## v1.0.0 - 稳定版

只有当 support matrix 中标记为 stable 的平台具备真实构建、测试、无障碍验证和已记录兼容性版本后才发布 1.0.0。

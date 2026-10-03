---
name: material-design-3-cross-platform-zh-cn
description: 为 Web、Android、HarmonyOS、iOS、Windows、Linux GTK 和 Linux Qt 创建、审查、重构或解释严格 Classic Material Design 3 界面。用户要求 Material Design 3、M3、Material You 界面，或需要检查现有 UI 是否符合 M3、跨平台 token、组件、状态、自适应与无障碍规范时使用。必须区分 Classic M3 与 Material 3 Expressive，识别目标平台与框架，按需加载对应 reference，并禁止把平台默认视觉系统误称为官方 Material 3。
---

# Material Design 3 Cross-Platform 中文 Skill

## 核心边界

1. 只执行 Classic Material Design 3 baseline。
2. 不主动引入 Material 2、Material 1 或 Material 3 Expressive-only 规则。
3. 当前 API 文档包含 Expressive 时，只能使用已确认属于 Classic baseline 的能力。
4. 不把 SwiftUI、ArkUI、WinUI、GTK/libadwaita、Qt Material Style 的默认外观称为官方 M3。
5. 不虚构 API、版本、组件或运行结果。版本敏感 API 必须查当前第一方文档。

开始前读取 `references/source-policy.md`。

## 工作模式

判断用户任务属于：

- **Build**：创建新界面或组件；
- **Audit**：检查现有界面/项目；
- **Refactor**：把现有 UI 改成 Classic M3；
- **Explain**：解释 M3 规则或平台实现。

## 平台路由

先确定目标平台和技术栈：

- Web / HTML / CSS / JavaScript → `references/platform-web.md`
- Android / Kotlin / Compose → `references/platform-android.md`
- HarmonyOS / ArkTS / ArkUI → `references/platform-harmonyos.md`
- iOS / iPadOS / SwiftUI → `references/platform-ios.md`
- Windows / WinUI 3 / XAML → `references/platform-windows.md`
- Linux / GTK → `references/platform-linux-gtk.md`
- Linux / Qt / QML → `references/platform-linux-qt.md`

如果用户没有指定平台但输出代码必须依赖平台，先从项目文件判断；仍无法判断时才询问。

## 必须加载的核心 reference

所有 Build/Audit/Refactor 任务至少加载：

- `references/core.md`
- `references/components.md`
- `references/accessibility.md`
- 对应平台 reference

涉及主题/视觉 token 时再加载：

- `references/color.md`
- `references/typography-shape.md`
- `references/motion-states.md`

涉及大屏、多设备或窗口变化时加载：

- `references/adaptive.md`

Audit/Refactor 额外加载：

- `references/audit.md`

## Build workflow

1. 识别页面目的、目标平台、主要窗口范围和输入方式。
2. 选择 M3 组件而不是先写任意容器。
3. 绑定 color/type/shape/state token。
4. 定义 default + 适用的 hover/focus/pressed/selected/disabled/error 状态。
5. 处理 compact/medium/expanded 或目标平台等价窗口变化。
6. 处理 keyboard/screen-reader/text scaling/reduced motion/RTL。
7. 使用对应平台原生 API 实现；没有 M3 官方组件时明确这是 adaptation。
8. 完成后按 `references/audit.md` 自检。

## Audit workflow

逐项检查：

1. baseline：是否混入 M2 或 Expressive-only；
2. color：是否用 role，on-color 是否配对；
3. typography；
4. shape；
5. elevation/tonal hierarchy；
6. component choice/variants；
7. state coverage；
8. navigation/adaptive layout；
9. accessibility/input；
10. 平台 API 与平台行为；
11. 是否存在硬编码、虚构 API、过时 API或未经验证的“官方支持”声明。

输出 finding 时说明：文件/位置、规则类别、问题、影响、建议修复、是否必须修复。

## Refactor workflow

先保留业务逻辑和信息架构，建立 token/theme，再替换组件和状态。不要通过全局改圆角、换紫色、加阴影来伪装成 Material 3。

## Explain workflow

区分：

- 已确认官方 M3 规则；
- 平台映射；
- 仓库工程约定；
- 当前无法验证的内容。

## 输出质量

- 代码必须可读、按平台习惯组织。
- 用户已有项目时优先最小侵入改造。
- 不声称“已编译/已运行”除非实际执行。
- 不把近似效果写成官方精确值。
- 不一次加载所有平台 reference。

## 可选静态审计

当可访问项目文件系统时，可以运行：

```bash
python scripts/static_audit.py <project-path>
```

该脚本只发现少数高价值静态风险，不能替代完整 M3 audit。

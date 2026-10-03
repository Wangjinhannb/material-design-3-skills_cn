# Material Design 3 Cross-Platform 中文版

> 一个面向 AI 与开发者的 **Classic Material Design 3** 跨平台工程：规范、Design Tokens、平台映射、组件目录、AI Skill、参考实现、自动校验与维护流程统一在同一仓库中。

当前版本：`0.1.0`  
规范基线：`classic-md3-2024-zh-cn`  
兼容性资料检查日期：`2026-10-03`

## 项目定位

本仓库解决的不是“做出看起来像 Material 的界面”，而是让人和 AI 都能回答并验证：

- 当前规则是否属于 **Classic Material Design 3**；
- 某个设计决定来自官方 MD3、平台适配，还是仓库自己的工程约定；
- 同一套颜色、排版、形状、状态和组件如何映射到 Web、Android、HarmonyOS、iOS、Windows、GTK 与 Qt；
- AI 生成或重构后的界面是否违反 M3、无障碍或平台系统行为；
- 规范、token、平台代码和文档是否发生漂移。

## 严格范围

本仓库 **MUST** 使用 Classic Material Design 3，**MUST NOT** 把 Material 2、Material 1 或 Material 3 Expressive-only 规则混入核心 baseline。

当前 Android `androidx.compose.material3` 已经包含 Material 3 Expressive 能力，因此“来自 material3 包”不等于“自动属于本仓库 baseline”。所有新 API 都要经过边界审查。

## 仓库结构

- `metadata/`：来源、baseline、组件、平台、兼容性和支持矩阵；这是重要事实层。
- `spec/`：面向人和生成器的规范层，按 foundations、components、adaptive、accessibility 组织。
- `tokens/`：机器可读 Design Tokens 与跨平台生成结果。
- `skill/`：可直接交给支持 Skills 的 AI 使用的中文 Skill。
- `platforms/`：Web、Android、HarmonyOS、iOS、Windows、GTK、Qt 的实现映射。
- `examples/`：统一 Reference App 与组件目录示例。
- `tools/`：token 生成、组件文档生成、来源检查、仓库验证、Skill 打包。
- `tests/`：元数据、token、Skill eval 与示例静态测试。
- `docs/`：架构、维护、翻译同步、发布和 ADR。

## 单一事实源

仓库不允许在多个 Markdown 文件中手工维护同一组事实：

1. `metadata/` 保存来源、baseline、组件和平台事实；
2. `tokens/source/` 保存机器可读设计 token；
3. `spec/` 保存规范解释；
4. 可生成内容由 `tools/` 生成；
5. `skill/references/` 只保留 AI 执行所需的压缩规则，不复制完整人类文档。

运行：

```bash
python tools/token_generator/generate.py
python tools/component_generator/generate_component_docs.py
python tools/support_matrix/generate.py
python tools/validators/validate_repo.py
python -m unittest discover -s tests -p 'test_*.py'
```

或使用：

```bash
make check
```

## 平台状态

本仓库严格区分“框架是否官方支持 M3”和“本仓库是否已经验证实现”。例如：

- Android Compose Material 3：存在官方 M3 实现，但当前包也包含 Expressive API，必须做 baseline 过滤。
- Web：`@material/web` 处于 maintenance mode，本仓库默认采用语义 HTML/CSS/JS + token 的自定义实现策略。
- HarmonyOS：ArkUI 是平台 UI 框架，不是 Material 3。
- iOS：SwiftUI 是平台 UI 框架，不是 Material 3。
- Windows：WinUI 3 默认面向 Fluent，不是 Material 3。
- GTK/libadwaita：Adwaita 不是 Material 3。
- Qt Quick Controls Material Style：基于 Material Design Guidelines，但不能直接视为完整符合本仓库的 Classic M3 baseline。

真实支持状态以 `metadata/support-matrix.yaml` 为准。

## 中文版与英文版

这是中文独立部署版本。路径、token 名、组件 ID、代码标识符和 schema key 保持英文 ASCII；解释性内容使用简体中文。未来英文版应复用同一组 machine-readable IDs 和 token 语义，避免两个仓库逐渐变成不同设计系统。

详见 `docs/translation-sync.md`。

## 编码规则

- 所有文件名、目录名和 ZIP 内部路径：纯英文 ASCII。
- 普通 `.md`：UTF-8 with BOM。
- `SKILL.md`：UTF-8 without BOM，这是为了保证 YAML frontmatter 从文件第一个字节开始，兼容 Skill validator。

## 法律与归属

本项目是社区工程，**不是 Google 官方 Material Design 项目**，也不代表 Google、Huawei、Apple、Microsoft、GNOME、Qt 或 W3C。

仓库只转述和引用必要规范，不复制大段官方文档，也不打包 Material Symbols 字体文件。来源与许可说明见 `metadata/sources.yaml` 和 `NOTICE.md`。

## 当前验证边界

当前执行环境可以验证 Python/JavaScript、仓库结构、token 生成与 Web 静态示例；没有 Android SDK、DevEco Studio、Xcode、Windows App SDK、GTK4/Qt6 开发包，因此对应平台只标记为文档/静态实现状态，不伪造“已编译通过”。

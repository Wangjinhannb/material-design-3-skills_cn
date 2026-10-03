# Material Design 3 Cross-Platform 中文版

跨平台 Classic Material Design 3 工程，包含规范、Design Tokens、组件目录、平台适配、AI Skill、参考应用和自动验证。

当前版本：`0.2.0`  
规范基线：`classic-md3-2024-zh-cn`  
兼容性资料检查日期：`2026-10-03`

## 范围

仓库采用 Classic Material Design 3。核心 baseline 排除 Material Design 1、Material Design 2 和 Material 3 Expressive-only 规则。

平台系统行为继续使用各自原生机制，包括 safe area、返回手势、文本输入、窗口管理、辅助功能和系统导航。

## 目录

- `metadata/`：规范来源、baseline、组件清单、平台和支持状态。
- `spec/`：Classic M3 规范。
- `tokens/`：Design Tokens 源文件、schema 和平台生成结果。
- `skill/`：可直接分发的中文 AI Skill。
- `platforms/`：Web、Android、HarmonyOS、iOS、Windows、GTK、Qt 的实现说明。
- `examples/reference-app/`：七个平台的统一参考应用。
- `examples/component-catalog/`：31 个组件的跨平台目录应用。
- `tests/`：元数据、token、Skill、Catalog 覆盖和文案规则测试。
- `tools/`：生成器、校验器和 Skill 打包工具。
- `.github/workflows/`：仓库校验和平台构建。

## 数据流

`metadata/`、`tokens/source/` 和 `spec/` 保存 canonical data。生成器负责平台 token、组件规范页和支持矩阵。`skill/references/` 保存 AI 执行所需的精简规则。

```bash
python tools/token_generator/generate.py
python tools/component_generator/generate_component_docs.py
python tools/support_matrix/generate.py
python tools/validators/validate_repo.py
python tools/validators/check_writing_style.py
python -m unittest discover -s tests -p 'test_*.py'
```

也可以运行：

```bash
make check
```

## 平台

| 平台 | 主技术栈 | M3 实现方式 |
|---|---|---|
| Web | HTML / CSS / JavaScript | 自定义 M3 组件与 token |
| Android | Kotlin / Jetpack Compose | Compose Material 3 + 必要的自定义组件 |
| HarmonyOS | ArkTS / ArkUI | ArkUI primitives + M3 token/组件层 |
| iOS | Swift / SwiftUI | SwiftUI primitives + M3 token/组件层 |
| Windows | C# / WinUI 3 | ResourceDictionary、Style、ControlTemplate |
| Linux GTK | GTK 4 | GTK widgets + CSS/token 映射 |
| Linux Qt | Qt 6 / QML | Qt Quick Controls + M3 token/组件层 |

具体实现和验证状态见 `PROJECT_STATUS.md` 与 `metadata/support-matrix.yaml`。

## 参考应用与组件目录

`examples/reference-app/` 在各平台使用相同的信息结构：概览、列表、表单和设置。

`examples/component-catalog/` 覆盖 `metadata/components.yaml` 登记的 31 个 Classic M3 组件。每个平台源代码使用稳定的 `component-<id>` 标识，自动测试会检查组件覆盖。

## CI

- `validate.yml`：schema、token、生成结果、Skill、文案和单元测试。
- `web.yml`：Web Catalog 功能、axe accessibility、Playwright visual regression。
- `android.yml`：Android Catalog assemble、lint、测试。
- `ios.yml`：XcodeGen + iOS build/test/accessibility audit。
- `windows.yml`：WinUI 3 restore/build。
- `linux-ui.yml`：GTK 4 与 Qt 6 build、headless smoke 和截图。
- `harmonyos.yml`：HarmonyOS 工程结构和 ArkTS 静态检查。
- `source-freshness.yml`：来源链接定期检查。

## 编码

文件名、目录名和 ZIP 内路径使用英文 ASCII。普通 Markdown 使用 UTF-8 BOM。`SKILL.md` 使用 UTF-8 无 BOM，以保证 YAML frontmatter 从第一个字节开始。

## 许可与归属

本仓库为社区项目，与 Google、Huawei、Apple、Microsoft、GNOME、Qt 或 W3C 无隶属关系。规范引用、第三方依赖和许可说明见 `metadata/sources.yaml`、`NOTICE.md` 和 `docs/guides/licensing.md`。

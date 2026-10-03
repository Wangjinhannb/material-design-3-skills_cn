# 项目状态

状态以仓库代码和 GitHub Actions 结果为准。

| 区域 | 状态 | 说明 |
|---|---|---|
| Baseline / provenance | complete | 来源、范围和版本策略已建立 |
| Core spec | complete-v0.2 | color、type、shape、elevation、motion、state、layout、iconography |
| Component specification | complete-v0.2 | 31 个 Classic M3 组件 |
| Design tokens | complete-v0.2 | light/dark、typography、shape、elevation、state、motion |
| Token generators | complete-v0.2 | Web、Android、HarmonyOS、iOS、Windows、GTK、Qt |
| AI Skill | complete-v0.2 | Build、Audit、Refactor、Explain |
| Reference App | implemented | 七个平台均提供工程入口和对应页面 |
| Component Catalog | implemented | 七个平台均覆盖 31 个组件 ID |
| Web | ci-configured | build、axe accessibility、Playwright visual regression |
| Android | ci-configured | assemble、lint、unit test |
| iOS | ci-configured | Xcode build/test、UI accessibility audit |
| Windows | ci-configured | WinUI 3 restore/build |
| GTK | ci-configured | build、headless smoke、screenshot artifact |
| Qt | ci-configured | build、headless smoke、screenshot artifact |
| HarmonyOS | static-verified | 工程结构和 ArkTS 静态校验；运行时验证需 DevEco Studio/HarmonyOS SDK |

组件级实现状态见 `metadata/support-matrix.yaml`。

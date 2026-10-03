# 资料核对

检查日期：2026-10-03。

## 关键结论

1. 当前 Android `androidx.compose.material3` 已进入同时承载 Classic M3 与 Material 3 Expressive 能力的阶段，因此包名不能作为 baseline 归属证据；本仓库采用历史冻结的 Classic M3 语义，并单独跟踪当前实现兼容性。
2. Compose Material 3 release notes 在检查日显示稳定版 1.4.0（2026-09-23）；Compose Material 3 Adaptive 稳定版 1.3.0（2026-09-09）。这些版本只用于实现兼容性记录，不改变 Classic baseline。
3. Material Web 官方仓库仍明确标注 maintenance mode，因此 Web 适配不能假设其会继续补齐全部组件。
4. DTCG Design Tokens Format / Color / Resolver 2025.10 是稳定 Community Group Final Report，规范状态为 Community Group Report。本仓库对 color token 采用 DTCG 2025.10 结构；其他 token 使用 `repo-md3-token-v1`。
5. ArkUI、SwiftUI、WinUI 3、GTK/libadwaita、Qt Quick Controls 都是目标平台实现技术或视觉系统的一部分，不应被描述为 Google 官方完整 Material 3 实现。
6. Qt 官方 Material Style 明确说明其基于 Google Material Design Guidelines，但这不足以证明它逐项符合本仓库冻结的 Classic M3 baseline，因此状态为 partial + audit required。

完整 URL、日期和使用说明见 `metadata/sources.yaml`。

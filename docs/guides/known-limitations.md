# 已知限制

v0.2.0 当前限制：

1. HarmonyOS 的 GitHub-hosted runner 不提供 DevEco Studio/HarmonyOS SDK；仓库只执行工程结构与 ArkTS 静态校验，运行时验证需要 DevEco Studio 或自托管 runner。
2. Windows hosted runner 可执行 restore/build；GUI screenshot、Narrator 和 High Contrast 自动化需要可交互 Windows runner。
3. Web 已配置 Playwright + axe 和 visual regression；首次视觉基线由专用 workflow 生成并提交。
4. Android、iOS、GTK、Qt 的平台 workflow 负责构建或运行检查；具体结果以对应 GitHub Actions run 为准。
5. DTCG 2025.10 目前只用于颜色 token；其他 token 使用 `repo-md3-token-v1`。
6. 自动无障碍检查不能覆盖真实 screen reader、键盘、触控和用户测试。

# Known Limitations

v0.1.0 的主要限制：

1. 当前执行环境没有 Android SDK、DevEco Studio、Xcode、Windows App SDK、GTK4/Qt6 开发包，因此这些平台尚未形成真实编译记录。
2. Web Reference App 是架构验证示例，不是 31 组件完整 catalog。
3. DTCG 2025.10 目前只对颜色使用规范结构；其他 token 使用显式仓库格式，避免虚假全量 DTCG 声明。
4. Classic M3 是历史冻结 baseline，而当前 Google/Android 文档已经出现 Expressive；每次更新都需要边界审查。
5. 自动化无障碍测试不能替代真实 screen reader、键盘和用户测试。

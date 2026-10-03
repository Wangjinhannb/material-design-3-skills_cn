# 颜色

优先使用 primary/onPrimary、container/onContainer、surface/onSurface、outline、inverse、error 等语义角色。

约束：
- 将品牌 hex 直接写进每个组件；
- 在 primary 容器上随便使用 onSurface；
- 用颜色作为错误/选中的唯一信息；
- 简单反转 light theme 得到 dark theme。

参考 token 在仓库 `tokens/source/color-*.tokens.json`。

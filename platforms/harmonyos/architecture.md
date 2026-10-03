# Architecture

ArkUI 提供声明式 UI 基础设施，Material 3 由本仓库在 ArkUI 之上实现。不得虚构 ArkUI API。

平台代码 MUST 从 generated token 或等价主题入口消费设计值，MUST NOT 重新定义一套独立颜色/排版真相。

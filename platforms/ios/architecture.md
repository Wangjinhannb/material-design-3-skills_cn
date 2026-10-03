# Architecture

SwiftUI 不是 Material 3 framework。本仓库通过 SwiftUI primitives/custom views 实现 M3 视觉和组件语义，同时保留 iOS/iPadOS 系统行为。

平台代码 MUST 从 generated token 或等价主题入口消费设计值，MUST NOT 重新定义一套独立颜色/排版真相。

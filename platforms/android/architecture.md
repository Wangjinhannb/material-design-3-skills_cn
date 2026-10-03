# 架构

Android 是 Classic M3 的主要官方实现参考平台。优先 `androidx.compose.material3`，但当前包同时包含 Expressive API，因此必须经过 baseline 过滤。

平台代码 必须 从 generated token 或等价主题入口消费设计值，不得 重新定义一套独立颜色/排版真相。

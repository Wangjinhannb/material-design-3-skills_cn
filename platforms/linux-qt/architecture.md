# Architecture

Qt Quick Controls 提供 Material Style，但官方文档只说明其基于 Google Material Design Guidelines；本仓库不假定它完整符合 Classic M3 baseline。

平台代码 MUST 从 generated token 或等价主题入口消费设计值，MUST NOT 重新定义一套独立颜色/排版真相。

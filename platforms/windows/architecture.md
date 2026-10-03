# 架构

WinUI 3 是 Windows 推荐原生 UI 框架，默认使用 Fluent。Material 3 通过 XAML resources、styles、templates 和 custom controls 映射。

平台代码 必须 从 generated token 或等价主题入口消费设计值，不得 重新定义一套独立颜色/排版真相。

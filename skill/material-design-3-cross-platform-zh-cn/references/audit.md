# 检查

按严重度输出：
- blocker：M2/Expressive 混入、关键不可操作、虚构 API、状态/语义完全错误；
- major：token 绕过、组件选择错误、focus/disabled/error 缺失、平台行为冲突；
- minor：一致性、冗余、可维护性问题。

每条 finding 必须给证据位置和具体修复，不只说“更像 Material”。

# 中英文版本同步

本中文版未来与英文版分开部署，但两者不应演化成两个设计系统。

## 必须相同

- component IDs；
- token IDs 与数值；
- schema keys；
- platform IDs；
- status enum；
- source IDs 和 URL；
- baseline ID 的语义。

## 可以本地化

- README、规范解释、Skill 指令、组件中文名、错误提示和示例文本。

## 推荐发布流程

1. 先比较 machine-readable 文件的语义 diff；
2. 再检查文档翻译；
3. 两个版本各自运行 validator；
4. release notes 标明 sibling version。

代码、ID、URL 和 YAML key 在中英文版本中保持不变。

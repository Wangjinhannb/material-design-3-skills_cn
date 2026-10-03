# 版本策略

仓库采用 Semantic Versioning。

- PATCH：不改变 baseline 语义的文档修正、生成器修复、示例修复。
- MINOR：新增兼容平台、组件实现、测试能力或非破坏性 token 输出。
- MAJOR：baseline、canonical token schema、组件 ID、平台适配契约发生破坏性变化。

每个 release 必须 记录 `metadata/md3-baseline.yaml`、`metadata/compatibility.yaml`、Skill 版本和已验证平台。

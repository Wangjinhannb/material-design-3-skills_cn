# Security Policy

本仓库主要是设计系统、生成器和示例工程，但仍把供应链视为安全边界。

- 工具 SHOULD 使用最少第三方依赖。
- CI 依赖 SHOULD 固定 major 版本并由 Dependabot 监控。
- 示例不得包含真实密钥、token 或生产服务地址。
- Source freshness 工具只访问 `metadata/sources.yaml` 中的公开 URL。
- 发现依赖漏洞或恶意链接时，请通过私有安全报告渠道提交，不要在公开 issue 中放置敏感细节。

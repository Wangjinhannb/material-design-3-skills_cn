# Final Audit

发布前必须回答：

- 是否混入 Material 2？
- 是否混入 Expressive-only 规则？
- 是否把 adaptation/repo convention 写成官方规则？
- 是否存在未经来源支持的 token/组件？
- 是否存在硬编码导致 token 漂移？
- support matrix 是否高估了真实实现状态？
- 是否有 API 未在目标 SDK 验证却声称可运行？
- 是否覆盖 focus/hover/pressed/disabled/error？
- 是否处理 keyboard/screen reader/text scaling/reduced motion/high contrast/RTL？
- 是否有非 ASCII 路径？
- 普通 Markdown 是否带 BOM，SKILL.md 是否无 BOM？
- generated 文件能否重建且无 diff？
- 第三方资产/依赖的许可是否记录？

任何一项无法确认时，状态必须降级并写入 limitation，而不是猜测为通过。

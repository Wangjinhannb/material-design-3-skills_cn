# Validation Report

执行环境：Linux container，2026-10-03。

## 已执行并通过

- `python tools/token_generator/generate.py`
- `python tools/component_generator/generate_component_docs.py`
- `python tools/support_matrix/generate.py`
- `python tools/source_checker/check_sources.py`
- `python tools/validators/validate_repo.py`
- `python tools/validators/validate_skill_evals.py`
- `python tools/validators/check_generated_determinism.py`
- `python -m unittest discover -s tests -p 'test_*.py'`
- `node --check examples/reference-app/web/app.js`
- OpenAI Skill `quick_validate.py`
- OpenAI Skill `package_skill.py`

## Validator 覆盖

- 全路径 ASCII；
- 普通 Markdown UTF-8 BOM；
- `SKILL.md` 无 BOM 且 YAML frontmatter 从 byte 0 开始；
- YAML/JSON 可解析；
- 必需文件存在；
- 组件 ID 唯一且不少于 31；
- 平台引用的 source ID 有效；
- support matrix 与 component catalog 一致；
- DTCG color subset 结构有效；
- Android 示例不存在 Material 2 Compose import；
- generated files 存在；
- generators 重复执行结果确定；
- Skill eval case 覆盖主要工作模式与平台。

## 没有伪造为通过的项目

当前容器没有 Android SDK、DevEco Studio、Xcode/macOS、Windows App SDK、GTK4 dev package、Qt6 dev package，所以对应平台示例未进行真实编译。仓库状态保持 `documented`，没有提升为 stable。

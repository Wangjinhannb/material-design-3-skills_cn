# 校验报告

本地仓库校验命令：

```bash
python tools/token_generator/generate.py
python tools/component_generator/generate_component_docs.py
python tools/support_matrix/generate.py
python tools/source_checker/check_sources.py
python tools/validators/validate_repo.py
python tools/validators/check_writing_style.py
python tools/validators/validate_skill_evals.py
python tools/validators/check_generated_determinism.py
python -m unittest discover -s tests -p 'test_*.py'
```

平台构建结果由 GitHub Actions 记录。HarmonyOS 运行时验证需 DevEco Studio 或配置 HarmonyOS SDK 的自托管 runner。

# 组件目录

Catalog 覆盖 `metadata/components.yaml` 中的 31 个组件。

目录：

- `web/`
- `android/`
- `harmonyos/`
- `ios/`
- `windows/`
- `linux-gtk/`
- `linux-qt/`

每个平台源文件包含 `component-<id>` 稳定标识。`tests/test_catalog_coverage.py` 检查 31 个 ID 是否全部出现。

视觉和交互实现以对应平台目录、`spec/components/` 和 generated tokens 为准。

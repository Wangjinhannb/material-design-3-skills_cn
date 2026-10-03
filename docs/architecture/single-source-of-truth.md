# Single Source of Truth

以下信息只有一个 canonical owner：

| 信息 | Canonical owner |
|---|---|
| 来源和日期 | `metadata/sources.yaml` |
| Classic/Expressive 边界 | `metadata/md3-baseline.yaml` |
| 组件 ID/variant/state | `metadata/components.yaml` |
| 平台能力和验证状态 | `metadata/platforms.yaml`, `metadata/support-matrix.yaml` |
| 颜色/排版/形状等 token | `tokens/source/` |
| 设计规则解释 | `spec/` |

任何生成文件如果与 source 不一致，应重新生成而不是手工修补。

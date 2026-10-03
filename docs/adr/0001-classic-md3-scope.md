# ADR 0001：冻结 Classic Material Design 3 范围

## 决策

本仓库冻结 Classic M3 语义基线，并把 Expressive-only 能力排除在核心规范外。当前平台库可以继续升级，但新 API 必须经过 baseline 分类。

## 影响

兼容性和设计语义版本分离：实现可以跟随新 SDK，设计不能被 SDK 新增能力静默改变。

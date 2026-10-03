# 图标按钮 (`icon-buttons`)

来源类别：`official-md3`（设计语义）+ `platform-adaptation`（平台实现）。

## 用途

以紧凑图标承载常用操作。

## 变体

- `standard`
- `filled`
- `filled-tonal`
- `outlined`
- `toggle`

## 状态

- `default`
- `hovered`
- `focused`
- `pressed`
- `disabled`

## Token 组

`color`, `typography`, `shape`, `state`

## 交互

实现必须保持视觉状态、输入行为和语义状态一致。目标平台缺少直接对应控件时，使用平台 primitive 组合，并保留组件用途和交互语义。

## 无障碍

图标按钮必须有可访问名称，并维持足够交互目标。

## 自适应

根据窗口和输入方式调整布局，并保持可操作性与可读性。

## 平台实现

平台实现必须对照 `platforms/<platform>/components.md` 与 `metadata/support-matrix.yaml`。同名原生控件仍需核对 M3 视觉、状态和语义。

## 常见问题

- 不使用任意硬编码颜色替代 color roles。
- 不省略 focus/disabled/error 等适用状态。
- 不把平台默认外观直接声明为 Material 3 合规。
- 不引入 Expressive-only variant。

## 官方来源

- https://m3.material.io/components/icon-buttons/overview

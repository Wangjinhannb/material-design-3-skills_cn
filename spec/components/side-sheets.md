# 侧边 Sheet (`side-sheets`)

来源类别：`official-md3`（设计语义）+ `platform-adaptation`（平台实现）。

## Purpose

在较宽窗口中从侧边提供补充内容。

## Variants

- `standard`
- `modal`

## States

- `default`
- `hovered`
- `focused`
- `pressed`
- `disabled`

## Token groups

`color`, `typography`, `shape`, `state`

## Interaction

实现 MUST 让视觉状态、输入行为和语义状态一致。目标平台没有直接对应控件时，使用平台 primitive 组合，但不得改变组件 purpose。

## Accessibility

模态版本需要焦点约束与关闭机制。

## Adaptive behavior

主要用于具备足够宽度的界面；紧凑窗口优先替代布局。

## Platform considerations

平台实现 MUST 查看 `platforms/<platform>/components.md` 与 `metadata/support-matrix.yaml`，不要因为存在同名原生控件就假定其视觉和状态自动符合 M3。

## Anti-patterns

- 不使用任意硬编码颜色替代 color roles。
- 不省略 focus/disabled/error 等适用状态。
- 不把平台默认外观直接声明为 Material 3 合规。
- 不引入 Expressive-only variant。

## Official source

- https://m3.material.io/components/side-sheets/overview

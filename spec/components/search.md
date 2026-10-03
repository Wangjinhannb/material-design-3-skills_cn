# 搜索 (`search`)

来源类别：`official-md3`（设计语义）+ `platform-adaptation`（平台实现）。

## Purpose

启动、输入和呈现搜索。

## Variants

- `bar`
- `view`

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

输入必须有名称；结果更新应适当通知辅助技术。

## Adaptive behavior

遵循窗口和输入方式进行布局调整；没有专用自适应规则时也不得破坏可操作性与可读性。

## Platform considerations

平台实现 MUST 查看 `platforms/<platform>/components.md` 与 `metadata/support-matrix.yaml`，不要因为存在同名原生控件就假定其视觉和状态自动符合 M3。

## Anti-patterns

- 不使用任意硬编码颜色替代 color roles。
- 不省略 focus/disabled/error 等适用状态。
- 不把平台默认外观直接声明为 Material 3 合规。
- 不引入 Expressive-only variant。

## Official source

- https://m3.material.io/components/search/overview

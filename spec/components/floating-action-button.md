# 浮动操作按钮 (`floating-action-button`)

来源类别：`official-md3`（设计语义）+ `platform-adaptation`（平台实现）。

## Purpose

突出当前界面的高优先级操作。

## Variants

- `small`
- `regular`
- `large`
- `extended`

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

图标型 FAB 必须具有可访问名称。

## Adaptive behavior

不要把 FAB 当作所有页面的必需元素；大屏可根据信息架构调整位置。

## Platform considerations

平台实现 MUST 查看 `platforms/<platform>/components.md` 与 `metadata/support-matrix.yaml`，不要因为存在同名原生控件就假定其视觉和状态自动符合 M3。

## Anti-patterns

- 不使用任意硬编码颜色替代 color roles。
- 不省略 focus/disabled/error 等适用状态。
- 不把平台默认外观直接声明为 Material 3 合规。
- 不引入 Expressive-only variant。

## Official source

- https://m3.material.io/components/floating-action-button/overview

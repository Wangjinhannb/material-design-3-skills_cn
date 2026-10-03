# 菜单 (`menus`)

来源类别：`official-md3`（设计语义）+ `platform-adaptation`（平台实现）。

## Purpose

展示临时操作或选项集合。

## Variants

- `dropdown`
- `contextual`

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

使用平台菜单语义并正确管理方向键、Escape 与焦点返回。

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

- https://m3.material.io/components/menus/overview

# Shape

来源类别：`official-md3`。

Classic M3 使用离散 shape scale，而不是在每个组件中随意指定圆角。核心 scale：none、extraSmall、small、medium、large、extraLarge、full。

- 组件 MUST 使用语义 shape token 或组件 token。
- `full` 表示胶囊/完全圆角语义，不是要求所有平台写死同一个巨大像素值。
- 自定义品牌形状 MAY 调整 scale，但必须保持不同组件层级之间的一致性。

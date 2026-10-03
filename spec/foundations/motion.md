# 动效

来源类别：`official-md3`。

Motion 表达状态变化和空间关系。

- 动画 应 采用 `tokens/source/motion.tokens.json` 中的 duration/easing 语义。
- 切换 reduced-motion 后 必须 降低或移除非必要位移、缩放和持续运动。
- 复杂 emphasized motion 若平台没有等价曲线，不得把近似曲线声称为官方精确实现；应标记 adaptation。
- 列表、导航和 dialog 的动画不得阻断输入或改变语义焦点顺序。

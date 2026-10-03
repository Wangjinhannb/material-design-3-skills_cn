# Platform Adaptation Policy

视觉语言统一不等于系统行为统一。

MUST 统一：

- Material color role 语义；
- type role 层级；
- shape/elevation/state 语义；
- Material component purpose 与状态；
- 品牌和内容结构。

MUST 尊重平台：

- safe area / system bars；
- 返回和系统导航；
- 文本输入、IME 和系统 picker 行为；
- 窗口管理；
- accessibility API；
- 平台输入约定。

当“严格复制 Android 行为”和“目标平台基本可用性”冲突时，系统行为优先；视觉与组件语义仍保持 M3，并把偏差标记为 `platform-adaptation`。

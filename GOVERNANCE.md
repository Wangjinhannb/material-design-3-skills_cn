# 治理

重大规范和架构变更必须先写 ADR，再修改 canonical data。

以下修改必须至少经过一次独立 review：

- 改变 Classic M3 与 Expressive 的边界；
- 改变 token schema 或 component ID；
- 将某平台状态提升为 stable；
- 把第三方或平台行为写成 official-md3；
- 引入新的运行时依赖。

生成文件不得成为规范讨论入口；贡献者应修改 source/metadata/spec，再重生成。

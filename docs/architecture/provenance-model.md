# 来源模型

每条重要规则至少能回到三类 provenance 之一：

1. `official-md3`：Classic Material Design 3 设计语义；
2. `platform-adaptation`：目标平台实现映射；
3. `repo-convention`：仓库生成、测试、编码和维护约定。

组件事实由 `metadata/components.yaml` 绑定官方 URL；平台事实由 `metadata/platforms.yaml` 绑定 source IDs；token source 文件记录 baseline/provenance。

如果规则无法确定来源，必须 标为 `unverified`，不得通过“大家都这么写”进入 normative spec。

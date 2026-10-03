# Skill Evals

`eval-cases.yaml` 是 prompt regression 的结构化基线。当前 CI 只验证 case 结构和 reference 覆盖；真正的模型行为 eval 需要在支持模型调用的受控环境中执行。

禁止把“静态 eval case 存在”写成“模型行为已经全部通过”。

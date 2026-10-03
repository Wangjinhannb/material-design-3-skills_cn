# 架构概览

依赖方向：

```text
metadata + tokens/source
        |        | +--> generators --> tokens/generated / generated docs
        |        +----> spec --> skill/references
                       \--> platform implementation rules
```

`metadata/` 和 `tokens/source/` 不依赖平台生成结果。平台文件可以引用 token ID，但不能反向定义 canonical token。

Skill 属于消费层；事实源位于 spec、metadata 和 token source。AI reference 出现的具体规则必须能回溯到 spec/metadata/source。

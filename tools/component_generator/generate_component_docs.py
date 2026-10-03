#!/usr/bin/env python3
from pathlib import Path
import yaml
ROOT=Path(__file__).resolve().parents[2]
data=yaml.safe_load((ROOT/"metadata/components.yaml").read_text(encoding="utf-8"))
OUT=ROOT/"spec/components"
OUT.mkdir(parents=True,exist_ok=True)
def write_md(p,s): p.write_text("\ufeff"+s.rstrip()+"\n",encoding="utf-8")
for c in data["components"]:
    variants="\n".join(f"- `{x}`" for x in c["variants"])
    states="\n".join(f"- `{x}`" for x in c["states"])
    groups=", ".join(f"`{x}`" for x in c["required_token_groups"])
    text=f"""# {c["name_zh"]} (`{c["id"]}`)\n\n来源类别：`official-md3`（设计语义）+ `platform-adaptation`（平台实现）。\n\n## Purpose\n\n{c["purpose"]}\n\n## Variants\n\n{variants}\n\n## States\n\n{states}\n\n## Token groups\n\n{groups}\n\n## Interaction\n\n实现 MUST 让视觉状态、输入行为和语义状态一致。目标平台没有直接对应控件时，使用平台 primitive 组合，但不得改变组件 purpose。\n\n## Accessibility\n\n{c["accessibility"]}\n\n## Adaptive behavior\n\n{c["adaptive"] or "遵循窗口和输入方式进行布局调整；没有专用自适应规则时也不得破坏可操作性与可读性。"}\n\n## Platform considerations\n\n平台实现 MUST 查看 `platforms/<platform>/components.md` 与 `metadata/support-matrix.yaml`，不要因为存在同名原生控件就假定其视觉和状态自动符合 M3。\n\n## Anti-patterns\n\n- 不使用任意硬编码颜色替代 color roles。\n- 不省略 focus/disabled/error 等适用状态。\n- 不把平台默认外观直接声明为 Material 3 合规。\n- 不引入 Expressive-only variant。\n\n## Official source\n\n- {c["official_url"]}\n"""
    write_md(OUT/f'{c["id"]}.md', text)
print(f'Generated {len(data["components"])} component documents')

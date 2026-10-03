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
    text=f"""# {c["name_zh"]} (`{c["id"]}`)\n\n来源类别：`official-md3`（设计语义）+ `platform-adaptation`（平台实现）。\n\n## 用途\n\n{c["purpose"]}\n\n## 变体\n\n{variants}\n\n## 状态\n\n{states}\n\n## Token 组\n\n{groups}\n\n## 交互\n\n实现必须保持视觉状态、输入行为和语义状态一致。目标平台缺少直接对应控件时，使用平台 primitive 组合，并保留组件用途和交互语义。\n\n## 无障碍\n\n{c["accessibility"]}\n\n## 自适应\n\n{c["adaptive"] or "根据窗口和输入方式调整布局，并保持可操作性与可读性。"}\n\n## 平台实现\n\n平台实现必须对照 `platforms/<platform>/components.md` 与 `metadata/support-matrix.yaml`。同名原生控件仍需核对 M3 视觉、状态和语义。\n\n## 常见问题\n\n- 不使用任意硬编码颜色替代 color roles。\n- 不省略 focus/disabled/error 等适用状态。\n- 不把平台默认外观直接声明为 Material 3 合规。\n- 不引入 Expressive-only variant。\n\n## 官方来源\n\n- {c["official_url"]}\n"""
    write_md(OUT/f'{c["id"]}.md', text)
print(f'Generated {len(data["components"])} component documents')

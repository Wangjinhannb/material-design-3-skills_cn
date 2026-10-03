#!/usr/bin/env python3
from pathlib import Path
import yaml
ROOT=Path(__file__).resolve().parents[2]
comps=yaml.safe_load((ROOT/"metadata/components.yaml").read_text(encoding="utf-8"))["components"]
plats=yaml.safe_load((ROOT/"metadata/platforms.yaml").read_text(encoding="utf-8"))["platforms"]
mat=yaml.safe_load((ROOT/"metadata/support-matrix.yaml").read_text(encoding="utf-8"))["components"]
header="| Component | "+" | ".join(p["id"] for p in plats)+" |\n|---|"+"|".join(["---"]*len(plats))+"|\n"
rows=[]
for c in comps:
    vals=[]
    for p in plats:
        x=mat[c["id"]][p["id"]]
        vals.append(f'{x["framework_relation"]} / {x["repo_status"]}')
    rows.append("| `"+c["id"]+"` | "+" | ".join(vals)+" |")
text="# Support Matrix\n\n本表由 metadata 生成，不要手工修改。格式：`framework_relation / repo_status`。\n\n"+header+"\n".join(rows)+"\n"
(ROOT/"docs/support-matrix.md").write_text("\ufeff"+text,encoding="utf-8")
print("Generated docs/support-matrix.md")

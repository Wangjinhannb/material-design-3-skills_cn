#!/usr/bin/env python3
from pathlib import Path
import re, sys
ROOT=Path(__file__).resolve().parents[2]
PATTERNS={
    "contrast": re.compile(r"不是[^\n。]{0,40}而是"),
    "meta": re.compile(r"(真正的|真正地|本质上|简单来说|说到底|归根结底)"),
    "template": re.compile(r"(综上所述|首先|其次|再次|最后|值得注意的是|需要指出的是|显而易见|其实)"),
    "marketing": re.compile(r"(非常重要|极其重要|全面提升|赋能|闭环|底层逻辑|认知升级|一文讲透|保姆级|直接抄作业)")
}
EXCLUDE={ROOT/"docs/writing-style.md"}
issues=[]
for p in ROOT.rglob("*.md"):
    if ".git" in p.parts or p in EXCLUDE:
        continue
    text=p.read_text(encoding="utf-8-sig")
    for name,rx in PATTERNS.items():
        for m in rx.finditer(text):
            issues.append((p.relative_to(ROOT).as_posix(),text.count("\n",0,m.start())+1,name,m.group(0)))
if issues:
    for path,line,name,value in issues:
        print(f"{path}:{line}: {name}: {value}")
    sys.exit(1)
print("Writing style check passed")

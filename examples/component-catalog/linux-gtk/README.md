# GTK 组件目录

```bash
cmake -S . -B build
cmake --build build
xvfb-run -a ctest --test-dir build --output-on-failure
```

31 个组件在 `main.c` 中使用 `component-<id>` 标识。

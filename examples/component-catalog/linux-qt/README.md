# Qt 组件目录

```bash
cmake -S . -B build
cmake --build build
xvfb-run -a ./build/md3-qt-catalog --smoke
```

31 个组件在 `Main.qml` 中使用 `component-<id>` 标识。

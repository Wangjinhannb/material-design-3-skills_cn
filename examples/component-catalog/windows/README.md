# Windows 组件目录

技术栈：C#、WinUI 3、Windows App SDK `1.8.260921001`。

```powershell
dotnet restore
dotnet build -c Release -p:Platform=x64
```

31 个组件在 `MainWindow.xaml` 中使用 `component-<id>` 标识。

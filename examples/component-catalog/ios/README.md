# iOS 组件目录

工程使用 XcodeGen 生成。

```bash
brew install xcodegen
xcodegen generate
xcodebuild -project MD3Catalog.xcodeproj -scheme MD3Catalog -sdk iphonesimulator build
```

UI tests 调用 iOS 17+ `performAccessibilityAudit()`，并保存 catalog screenshot 到 XCTest 结果。

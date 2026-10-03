# Test Report

## Automated tests

当前 unittest：8 项，全部通过。

覆盖：

- 组件数量和 ID 唯一性；
- 平台 ID 集合；
- Classic baseline 明确排除 Expressive；
- light/dark 关键 color roles；
- token generator 可执行；
- repository validator 可执行；
- Skill eval 平台覆盖；
- Skill eval forbidden rule 非空。

JavaScript：`examples/reference-app/web/app.js` 通过 Node 22 syntax check。

## Still requires target-platform testing

- Android Compose compile/UI/accessibility；
- HarmonyOS DevEco compile/preview/accessibility；
- SwiftUI Xcode/VoiceOver/Dynamic Type；
- WinUI 3 build/Narrator/High Contrast；
- GTK4 build/Orca/GTK Inspector；
- Qt6 QML/CMake/accessibility；
- 全平台 screenshot/golden regression。

这些项目在完成前不得把相应平台标记为 stable。

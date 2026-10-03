import SwiftUI

struct ContentView: View {
    @State private var name = "Material User"
    var body: some View {
        NavigationStack {
            Form {
                Section("Classic Material Design 3") {
                    TextField("显示名称", text: $name)
                    Button("主要操作") { }
                }
            }
            .navigationTitle("MD3 Reference")
        }
    }
}

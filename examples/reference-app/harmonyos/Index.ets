@Entry
@Component
struct Index {
  @State name: string = 'Material User'
  build() {
    Column({ space: 16 }) {
      Text('Classic Material Design 3').fontSize(28).fontWeight(FontWeight.Normal)
      Button('主要操作')
      TextInput({ text: this.name, placeholder: '显示名称' })
        .onChange((value: string) => { this.name = value })
    }.padding(24).width('100%')
  }
}

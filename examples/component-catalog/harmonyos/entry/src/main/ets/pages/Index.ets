@Entry
@Component
struct Index {
  @State selectedSegment: number = 0
  @State checked: boolean = true
  @State sliderValue: number = 42
  @State searchText: string = ''
  @State fieldText: string = '文本'

  @Builder
  Section(id: string, title: string, content: () => void) {
    Column({ space: 12 }) {
      Text(title).fontSize(20).fontWeight(FontWeight.Medium)
      Text(id).fontSize(11).fontColor('#49454F')
      content()
    }
    .alignItems(HorizontalAlign.Start)
    .padding(20)
    .width('100%')
    .backgroundColor('#F7F2FA')
    .borderRadius(20)
  }

  build() {
    Scroll() {
      Column({ space: 14 }) {
        Text('Classic Material Design 3').fontSize(14).fontColor('#6750A4')
        Text('Component Catalog').fontSize(32).fontWeight(FontWeight.Medium).margin({ bottom: 8 })

        this.Section('component-buttons', '按钮', () => { Row({ space: 8 }) { Button('Filled'); Button('Tonal'); Button('Outlined').type(ButtonType.Normal); Button('Text').type(ButtonType.Normal) }.flexWrap(FlexWrap.Wrap) })
        this.Section('component-floating-action-button', '浮动操作按钮', () => { Row({ space: 10 }) { Button('+').width(56).height(56).borderRadius(20); Button('＋ 新建').height(56).borderRadius(20) } })
        this.Section('component-icon-buttons', '图标按钮', () => { Row({ space: 10 }) { Button('☆').width(48).height(48).borderRadius(24); Button('★').width(48).height(48).borderRadius(24); Button('⋯').width(48).height(48).borderRadius(24) } })
        this.Section('component-segmented-buttons', '分段按钮', () => { Row() { Button('列表').onClick(() => this.selectedSegment = 0); Button('网格').onClick(() => this.selectedSegment = 1); Button('紧凑').onClick(() => this.selectedSegment = 2) } })
        this.Section('component-badges', '徽标', () => { Row({ space: 14 }) { Text('●').fontColor('#B3261E'); Text('12').fontSize(11).fontColor(Color.White).padding({ left: 7, right: 7, top: 3, bottom: 3 }).backgroundColor('#B3261E').borderRadius(12) } })
        this.Section('component-progress-indicators', '进度指示器', () => { Row({ space: 18 }) { Progress({ value: 62, total: 100, type: ProgressType.Linear }).width(220); Progress({ value: 62, total: 100, type: ProgressType.Ring }).width(36).height(36) } })
        this.Section('component-snackbars', 'Snackbar', () => { Row({ space: 20 }) { Text('设置已保存').fontColor(Color.White); Button('撤销').type(ButtonType.Normal) }.padding(14).backgroundColor('#322F35').borderRadius(4) })
        this.Section('component-tooltips', '工具提示', () => { Text('帮助信息').fontSize(12).fontColor(Color.White).padding(8).backgroundColor('#322F35').borderRadius(4) })
        this.Section('component-bottom-sheets', '底部 Sheet', () => { Button('打开 Sheet') })
        this.Section('component-cards', '卡片', () => { Row({ space: 10 }) { Column(){Text('Filled')}.width(140).height(90).padding(14).backgroundColor('#E7E0EC').borderRadius(12); Column(){Text('Outlined')}.width(140).height(90).padding(14).border({width:1,color:'#79747E'}).borderRadius(12) } })
        this.Section('component-carousel', '轮播', () => { Row({ space: 10 }) { ForEach([1,2,3,4], (n: number) => { Text(`0${n}`).width(140).height(90).textAlign(TextAlign.Center).backgroundColor('#EADDFF').borderRadius(20) }) }.width('100%') })
        this.Section('component-dialogs', '对话框', () => { Button('打开对话框') })
        this.Section('component-divider', '分隔线', () => { Column({ space: 14 }) { Divider(); Divider().margin({ left: 48 }) }.width('100%') })
        this.Section('component-lists', '列表', () => { List() { ListItem(){Text('单行列表').padding(12)}; ListItem(){Column(){Text('双行列表');Text('辅助文本').fontSize(12)}.alignItems(HorizontalAlign.Start).padding(12)} }.height(120).width('100%') })
        this.Section('component-side-sheets', '侧边 Sheet', () => { Column(){Text('Side sheet').fontWeight(FontWeight.Medium);Text('补充信息区域')}.width(260).padding(20).backgroundColor('#E7E0EC').borderRadius(20) })
        this.Section('component-bottom-app-bar', '底部应用栏', () => { Row({space:10}){Button('菜单').type(ButtonType.Normal);Button('搜索').type(ButtonType.Normal);Blank();Button('+').width(48).height(48).borderRadius(18)}.width('100%') })
        this.Section('component-top-app-bar', '顶部应用栏', () => { Row({space:10}){Button('←').type(ButtonType.Normal);Text('页面标题').layoutWeight(1);Button('⋯').type(ButtonType.Normal)}.width('100%') })
        this.Section('component-navigation-bar', '导航栏', () => { Row(){Button('首页').layoutWeight(1);Button('收藏').layoutWeight(1);Button('设置').layoutWeight(1)}.width('100%') })
        this.Section('component-navigation-drawer', '导航抽屉', () => { Column(){Button('收件箱').width(220);Button('草稿').width(220);Button('归档').width(220)}.alignItems(HorizontalAlign.Start) })
        this.Section('component-navigation-rail', '导航侧栏', () => { Row({space:10}){Button('首页');Button('收藏');Button('设置')} })
        this.Section('component-search', '搜索', () => { TextInput({ text: this.searchText, placeholder: '搜索' }).onChange((v: string) => this.searchText = v).width('100%').borderRadius(28) })
        this.Section('component-tabs', '标签页', () => { Row(){Button('概览').layoutWeight(1);Button('活动').layoutWeight(1);Button('设置').layoutWeight(1)}.width('100%') })
        this.Section('component-checkbox', '复选框', () => { Row({space:14}){Checkbox({name:'a'});Text('未选');Checkbox({name:'b'}).select(true);Text('已选')} })
        this.Section('component-chips', 'Chips', () => { Row({space:8}){Button('Assist').height(32);Button('Filter').height(32);Button('Input ×').height(32);Button('Suggestion').height(32)}.flexWrap(FlexWrap.Wrap) })
        this.Section('component-date-pickers', '日期选择器', () => { Row({space:10}){TextInput({text:'2026-10-03'}).width(180);Button('选择日期')} })
        this.Section('component-menus', '菜单', () => { Button('菜单') })
        this.Section('component-radio-button', '单选按钮', () => { Row({space:12}){Radio({value:'system',group:'theme'}).checked(true);Text('系统');Radio({value:'light',group:'theme'});Text('浅色');Radio({value:'dark',group:'theme'});Text('深色')} })
        this.Section('component-sliders', '滑块', () => { Slider({value:this.sliderValue,min:0,max:100,step:1}).onChange((v:number)=>this.sliderValue=v).width(300) })
        this.Section('component-switch', '开关', () => { Row({space:12}){Toggle({type:ToggleType.Switch,isOn:this.checked}).onChange((v:boolean)=>this.checked=v);Text('通知')} })
        this.Section('component-time-pickers', '时间选择器', () => { TextInput({text:'09:30'}).width(180) })
        this.Section('component-text-fields', '文本字段', () => { Column({space:10}){TextInput({text:this.fieldText,placeholder:'Filled'}).onChange((v:string)=>this.fieldText=v);TextInput({text:this.fieldText,placeholder:'Outlined'}).onChange((v:string)=>this.fieldText=v).border({width:1,color:'#79747E'})}.width('100%') })
      }
      .padding(20)
      .width('100%')
    }
    .width('100%')
    .height('100%')
  }
}

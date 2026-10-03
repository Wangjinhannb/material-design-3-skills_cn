import SwiftUI

private let primary = Color(red: 0.404, green: 0.314, blue: 0.643)
private let primaryContainer = Color(red: 0.918, green: 0.867, blue: 1.0)
private let secondaryContainer = Color(red: 0.910, green: 0.875, blue: 0.941)
private let surfaceContainer = Color(red: 0.949, green: 0.929, blue: 0.953)
private let outline = Color(red: 0.475, green: 0.455, blue: 0.494)

struct CatalogView: View {
    @State private var showDialog = false
    @State private var showSheet = false
    @State private var selectedSegment = 0
    @State private var selectedTab = 0
    @State private var checked = true
    @State private var selectedRadio = 0
    @State private var slider = 0.42
    @State private var search = ""
    @State private var field = "文本"
    @State private var date = Date()

    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 14) {
                    section("component-buttons", "按钮") { HStack { M3Button("Filled", filled: true); M3Button("Tonal", tonal: true); M3Button("Outlined", outlined: true); M3Button("Text") } }
                    section("component-floating-action-button", "浮动操作按钮") { HStack { CircleButton("+").frame(width:40,height:40); CircleButton("+").frame(width:56,height:56); CircleButton("+").frame(width:80,height:80); M3Button("＋ 新建", tonal: true) } }
                    section("component-icon-buttons", "图标按钮") { HStack { CircleButton("☆"); CircleButton("★",filled:true); CircleButton("⋯",tonal:true); CircleButton("✎",outlined:true) } }
                    section("component-segmented-buttons", "分段按钮") { Picker("视图", selection:$selectedSegment) { Text("列表").tag(0);Text("网格").tag(1);Text("紧凑").tag(2) }.pickerStyle(.segmented) }
                    section("component-badges", "徽标") { HStack { Text("消息").overlay(alignment:.topTrailing){Circle().fill(.red).frame(width:8,height:8).offset(x:7,y:-5)}; Text("12").font(.caption2.bold()).padding(.horizontal,7).frame(height:24).background(.red).foregroundStyle(.white).clipShape(Capsule()) } }
                    section("component-progress-indicators", "进度指示器") { VStack(alignment:.leading){ProgressView(value:0.62).tint(primary);ProgressView().tint(primary)} }
                    section("component-snackbars", "Snackbar") { HStack { Text("设置已保存"); Spacer(); Button("撤销"){} }.padding().background(Color.primary.opacity(0.9)).foregroundStyle(Color(.systemBackground)).clipShape(RoundedRectangle(cornerRadius:4)) }
                    section("component-tooltips", "工具提示") { Text("长按或悬停由平台辅助提示处理").font(.callout).padding(10).background(Color.primary.opacity(0.9)).foregroundStyle(Color(.systemBackground)).clipShape(RoundedRectangle(cornerRadius:4)) }
                    section("component-bottom-sheets", "底部 Sheet") { M3Button("打开 Sheet", outlined:true, action:{showSheet=true}) }
                    section("component-cards", "卡片") { HStack { M3Card("Filled");M3Card("Outlined",outlined:true);M3Card("Elevated",elevated:true) } }
                    section("component-carousel", "轮播") { ScrollView(.horizontal){HStack{ForEach(1...4,id:\.self){n in Text(String(format:"%02d",n)).font(.title2).frame(width:150,height:96).background(primaryContainer).clipShape(RoundedRectangle(cornerRadius:20))}}}.scrollIndicators(.hidden) }
                    section("component-dialogs", "对话框") { M3Button("打开对话框",outlined:true,action:{showDialog=true}) }
                    section("component-divider", "分隔线") { VStack{Divider();Divider().padding(.leading,48)} }
                    section("component-lists", "列表") { VStack(spacing:0){ListRow("单行列表");ListRow("双行列表",subtitle:"辅助文本")} }
                    section("component-side-sheets", "侧边 Sheet") { HStack { Spacer(); VStack(alignment:.leading){Text("Side sheet").font(.headline);Text("补充信息区域")}.padding().frame(width:260,alignment:.leading).background(surfaceContainer).clipShape(UnevenRoundedRectangle(topLeadingRadius:28,bottomLeadingRadius:28)) } }
                    section("component-bottom-app-bar", "底部应用栏") { HStack { CircleButton("☰");CircleButton("⌕");Spacer();CircleButton("+",tonal:true) }.padding(8).background(surfaceContainer).clipShape(RoundedRectangle(cornerRadius:18)) }
                    section("component-top-app-bar", "顶部应用栏") { HStack { CircleButton("←");Text("页面标题").font(.headline);Spacer();CircleButton("⋯") }.padding(8).background(surfaceContainer).clipShape(RoundedRectangle(cornerRadius:18)) }
                    section("component-navigation-bar", "导航栏") { HStack { NavItem("⌂","首页",selected:true);NavItem("☆","收藏");NavItem("⚙","设置") }.padding(8).background(surfaceContainer).clipShape(RoundedRectangle(cornerRadius:18)) }
                    section("component-navigation-drawer", "导航抽屉") { VStack(alignment:.leading){DrawerItem("收件箱",selected:true);DrawerItem("草稿");DrawerItem("归档")}.frame(maxWidth:260,alignment:.leading) }
                    section("component-navigation-rail", "导航侧栏") { HStack { NavItem("⌂","首页",selected:true);NavItem("☆","收藏");NavItem("⚙","设置") }.padding(8).background(surfaceContainer).clipShape(RoundedRectangle(cornerRadius:18)) }
                    section("component-search", "搜索") { HStack{Image(systemName:"magnifyingglass");TextField("搜索",text:$search)}.padding(.horizontal,18).frame(height:56).background(surfaceContainer).clipShape(Capsule()) }
                    section("component-tabs", "标签页") { Picker("标签",selection:$selectedTab){Text("概览").tag(0);Text("活动").tag(1);Text("设置").tag(2)}.pickerStyle(.segmented) }
                    section("component-checkbox", "复选框") { Toggle("已选",isOn:$checked).toggleStyle(.checkboxLike) }
                    section("component-chips", "Chips") { HStack { Chip("Assist");Chip("Filter",selected:true);Chip("Input ×");Chip("Suggestion") } }
                    section("component-date-pickers", "日期选择器") { DatePicker("日期",selection:$date,displayedComponents:.date).datePickerStyle(.compact) }
                    section("component-menus", "菜单") { Menu("菜单") { Button("复制"){};Button("移动"){};Button("删除",role:.destructive){} }.buttonStyle(M3OutlineButtonStyle()) }
                    section("component-radio-button", "单选按钮") { HStack { ForEach(Array(["系统","浅色","深色"].enumerated()),id:\.offset){i,label in Button{selectedRadio=i}{HStack{Image(systemName:selectedRadio==i ? "circle.inset.filled":"circle");Text(label)}}.foregroundStyle(primary)} } }
                    section("component-sliders", "滑块") { Slider(value:$slider).tint(primary) }
                    section("component-switch", "开关") { Toggle("通知",isOn:$checked).tint(primary) }
                    section("component-time-pickers", "时间选择器") { DatePicker("时间",selection:$date,displayedComponents:.hourAndMinute).datePickerStyle(.compact) }
                    section("component-text-fields", "文本字段") { VStack { TextField("Filled",text:$field).padding(14).background(surfaceContainer).clipShape(RoundedRectangle(cornerRadius:4));TextField("Outlined",text:$field).padding(14).overlay(RoundedRectangle(cornerRadius:4).stroke(outline)) } }
                }
                .padding(20)
            }
            .navigationTitle("MD3 Component Catalog")
        }
        .alert("确认操作",isPresented:$showDialog){Button("取消",role:.cancel){};Button("确认"){} } message:{Text("Basic Dialog 示例")}
        .sheet(isPresented:$showSheet){VStack(alignment:.leading,spacing:16){Capsule().fill(outline).frame(width:32,height:4).frame(maxWidth:.infinity);Text("底部 Sheet").font(.title2);Text("补充内容和操作");M3Button("完成",filled:true,action:{showSheet=false});Spacer()}.padding(24).presentationDetents([.medium])}
    }

    @ViewBuilder private func section<Content:View>(_ id:String,_ title:String,@ViewBuilder content:()->Content)->some View {
        VStack(alignment:.leading,spacing:14){Text(title).font(.title3.weight(.semibold));Text(id).font(.caption).foregroundStyle(.secondary);content()}
            .padding(20).frame(maxWidth:.infinity,alignment:.leading).background(surfaceContainer.opacity(0.7)).clipShape(RoundedRectangle(cornerRadius:20)).accessibilityIdentifier(id)
    }
}

private struct M3Button: View { let text:String;var filled=false;var tonal=false;var outlined=false;var action:()->Void={};init(_ text:String,filled:Bool=false,tonal:Bool=false,outlined:Bool=false,action:@escaping()->Void={}){self.text=text;self.filled=filled;self.tonal=tonal;self.outlined=outlined;self.action=action} var body: some View { Button(text,action:action).buttonStyle(M3ButtonStyle(filled:filled,tonal:tonal,outlined:outlined)) } }
private struct M3ButtonStyle:ButtonStyle{let filled:Bool;let tonal:Bool;let outlined:Bool;func makeBody(configuration:Configuration)->some View{configuration.label.font(.body.weight(.medium)).padding(.horizontal,20).frame(minHeight:40).background(filled ? primary : tonal ? secondaryContainer : Color.clear).foregroundStyle(filled ? Color.white : primary).clipShape(Capsule()).overlay(Capsule().stroke(outlined ? outline : .clear)).opacity(configuration.isPressed ? 0.84:1)}}
private struct M3OutlineButtonStyle:ButtonStyle{func makeBody(configuration:Configuration)->some View{configuration.label.padding(.horizontal,20).frame(minHeight:40).foregroundStyle(primary).overlay(Capsule().stroke(outline))}}
private struct CircleButton:View{let label:String;var filled=false;var tonal=false;var outlined=false;init(_ label:String,filled:Bool=false,tonal:Bool=false,outlined:Bool=false){self.label=label;self.filled=filled;self.tonal=tonal;self.outlined=outlined}var body:some View{Button(label){}.frame(width:48,height:48).background(filled ? primary : tonal ? secondaryContainer : .clear).foregroundStyle(filled ? .white : primary).clipShape(Circle()).overlay(Circle().stroke(outlined ? outline : .clear))}}
private struct M3Card:View{let title:String;var outlined=false;var elevated=false;init(_ title:String,outlined:Bool=false,elevated:Bool=false){self.title=title;self.outlined=outlined;self.elevated=elevated}var body:some View{VStack(alignment:.leading){Text(title).font(.headline);Text("相关内容")}.padding().frame(width:145,height:100,alignment:.leading).background(outlined ? Color.clear : surfaceContainer).clipShape(RoundedRectangle(cornerRadius:12)).overlay(RoundedRectangle(cornerRadius:12).stroke(outlined ? outline : .clear)).shadow(color:.black.opacity(elevated ? 0.15:0),radius:3,y:1)}}
private struct ListRow:View{let title:String;var subtitle:String?;init(_ title:String,subtitle:String?=nil){self.title=title;self.subtitle=subtitle}var body:some View{HStack{Circle().fill(secondaryContainer).frame(width:40,height:40).overlay(Text(String(title.prefix(1))));VStack(alignment:.leading){Text(title);if let subtitle{Text(subtitle).font(.caption).foregroundStyle(.secondary)}};Spacer()}.padding(.vertical,8)}}
private struct NavItem:View{let icon:String;let title:String;var selected=false;init(_ icon:String,_ title:String,selected:Bool=false){self.icon=icon;self.title=title;self.selected=selected}var body:some View{VStack(spacing:4){Text(icon).padding(.horizontal,14).padding(.vertical,4).background(selected ? secondaryContainer:.clear).clipShape(Capsule());Text(title).font(.caption)}}}
private struct DrawerItem:View{let title:String;var selected=false;init(_ title:String,selected:Bool=false){self.title=title;self.selected=selected}var body:some View{Text(title).padding(.horizontal,16).frame(maxWidth:.infinity,minHeight:48,alignment:.leading).background(selected ? secondaryContainer:.clear).clipShape(Capsule())}}
private struct Chip:View{let title:String;var selected=false;init(_ title:String,selected:Bool=false){self.title=title;self.selected=selected}var body:some View{Text(title).font(.callout).padding(.horizontal,12).frame(height:32).background(selected ? secondaryContainer:.clear).overlay(RoundedRectangle(cornerRadius:8).stroke(selected ? .clear:outline))}}
private struct CheckboxToggleStyle:ToggleStyle{func makeBody(configuration:Configuration)->some View{Button{configuration.isOn.toggle()}{HStack{Image(systemName:configuration.isOn ? "checkmark.square.fill":"square").foregroundStyle(primary);configuration.label}}}}
private extension ToggleStyle where Self == CheckboxToggleStyle { static var checkboxLike:CheckboxToggleStyle{CheckboxToggleStyle()} }

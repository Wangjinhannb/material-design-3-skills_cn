package org.example.md3catalog

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun CatalogApp() {
    var showDialog by remember { mutableStateOf(false) }
    var showSheet by remember { mutableStateOf(false) }
    MaterialTheme {
        Scaffold(topBar = { TopAppBar(title = { Text("MD3 Component Catalog") }) }) { padding ->
            LazyColumn(
                modifier = Modifier.fillMaxSize().padding(padding),
                contentPadding = PaddingValues(20.dp),
                verticalArrangement = Arrangement.spacedBy(14.dp)
            ) {
                item { Section("component-buttons", "按钮") { Button(onClick = {}) { Text("Filled") }; FilledTonalButton(onClick = {}) { Text("Tonal") }; OutlinedButton(onClick = {}) { Text("Outlined") }; TextButton(onClick = {}) { Text("Text") } } }
                item { Section("component-floating-action-button", "浮动操作按钮") { SmallFloatingActionButton(onClick = {}) { Text("+") }; FloatingActionButton(onClick = {}) { Text("+") }; LargeFloatingActionButton(onClick = {}) { Text("+") }; ExtendedFloatingActionButton(onClick = {}, text = { Text("新建") }, icon = { Text("+") }) } }
                item { Section("component-icon-buttons", "图标按钮") { IconButton(onClick = {}) { Text("☆") }; FilledIconButton(onClick = {}) { Text("★") }; FilledTonalIconButton(onClick = {}) { Text("⋯") }; OutlinedIconButton(onClick = {}) { Text("✎") } } }
                item { Section("component-segmented-buttons", "分段按钮") { var index by remember { mutableIntStateOf(0) }; Row { listOf("列表","网格","紧凑").forEachIndexed { i,label -> FilterChip(selected=index==i,onClick={index=i},label={Text(label)},shape=RoundedCornerShape(if(i==0) 20.dp else if(i==2) 20.dp else 0.dp)) } } } }
                item { Section("component-badges", "徽标") { BadgedBox(badge={Badge{Text("12")}}){Text("消息")}; Badge() } }
                item { Section("component-progress-indicators", "进度指示器") { LinearProgressIndicator(progress={0.62f},modifier=Modifier.width(220.dp)); CircularProgressIndicator() } }
                item { Section("component-snackbars", "Snackbar") { Snackbar(action={TextButton(onClick={}){Text("撤销")}}){Text("设置已保存")} } }
                item { Section("component-tooltips", "工具提示") { TooltipBox(positionProvider=TooltipDefaults.rememberPlainTooltipPositionProvider(),tooltip={PlainTooltip{Text("帮助信息")}},state=rememberTooltipState()){OutlinedButton(onClick={}){Text("悬停/长按")}} } }
                item { Section("component-bottom-sheets", "底部 Sheet") { OutlinedButton(onClick={showSheet=true}){Text("打开 Sheet")} } }
                item { Section("component-cards", "卡片") { Card(Modifier.width(150.dp)){Box(Modifier.padding(16.dp)){Text("Filled")}}; OutlinedCard(Modifier.width(150.dp)){Box(Modifier.padding(16.dp)){Text("Outlined")}}; ElevatedCard(Modifier.width(150.dp)){Box(Modifier.padding(16.dp)){Text("Elevated")}} } }
                item { Section("component-carousel", "轮播") { LazyRow(horizontalArrangement=Arrangement.spacedBy(10.dp),modifier=Modifier.widthIn(max=520.dp)){items((1..4).toList()){n->Card(Modifier.size(150.dp,96.dp)){Box(Modifier.fillMaxSize(),contentAlignment=Alignment.Center){Text("0$n")}}}} } }
                item { Section("component-dialogs", "对话框") { OutlinedButton(onClick={showDialog=true}){Text("打开对话框")} } }
                item { Section("component-divider", "分隔线") { Column(Modifier.fillMaxWidth()){HorizontalDivider();Spacer(Modifier.height(16.dp));HorizontalDivider(Modifier.padding(start=48.dp))} } }
                item { Section("component-lists", "列表") { Column(Modifier.fillMaxWidth()){ListItem(headlineContent={Text("单行列表")});ListItem(headlineContent={Text("双行列表")},supportingContent={Text("辅助文本")})} } }
                item { Section("component-side-sheets", "侧边 Sheet") { Surface(Modifier.width(280.dp),shape=RoundedCornerShape(topStart=28.dp,bottomStart=28.dp),tonalElevation=2.dp){Column(Modifier.padding(20.dp)){Text("Side sheet",fontWeight=FontWeight.SemiBold);Text("补充信息区域")}} } }
                item { Section("component-bottom-app-bar", "底部应用栏") { BottomAppBar(actions={TextButton(onClick={}){Text("菜单")};TextButton(onClick={}){Text("搜索")}},floatingActionButton={FloatingActionButton(onClick={}){Text("+")}}) } }
                item { Section("component-top-app-bar", "顶部应用栏") { TopAppBar(title={Text("页面标题")},navigationIcon={TextButton(onClick={}){Text("←")}},actions={TextButton(onClick={}){Text("⋯")}}) } }
                item { Section("component-navigation-bar", "导航栏") { var sel by remember{mutableIntStateOf(0)};NavigationBar{listOf("首页","收藏","设置").forEachIndexed{i,l->NavigationBarItem(selected=sel==i,onClick={sel=i},icon={Text(if(i==0)"⌂" else if(i==1)"☆" else "⚙")},label={Text(l)})}} } }
                item { Section("component-navigation-drawer", "导航抽屉") { Column(Modifier.width(260.dp)){NavigationDrawerItem(label={Text("收件箱")},selected=true,onClick={});NavigationDrawerItem(label={Text("草稿")},selected=false,onClick={});NavigationDrawerItem(label={Text("归档")},selected=false,onClick={})} } }
                item { Section("component-navigation-rail", "导航侧栏") { NavigationRail{NavigationRailItem(selected=true,onClick={},icon={Text("⌂")},label={Text("首页")});NavigationRailItem(selected=false,onClick={},icon={Text("☆")},label={Text("收藏")})} } }
                item { Section("component-search", "搜索") { OutlinedTextField(value="",onValueChange={},placeholder={Text("搜索")},leadingIcon={Text("⌕")},shape=CircleShape,modifier=Modifier.widthIn(max=480.dp)) } }
                item { Section("component-tabs", "标签页") { var tab by remember{mutableIntStateOf(0)};TabRow(selectedTabIndex=tab){listOf("概览","活动","设置").forEachIndexed{i,l->Tab(selected=tab==i,onClick={tab=i},text={Text(l)})}} } }
                item { Section("component-checkbox", "复选框") { var a by remember{mutableStateOf(false)};var b by remember{mutableStateOf(true)};Row(verticalAlignment=Alignment.CenterVertically){Checkbox(a,{a=it});Text("未选")};Row(verticalAlignment=Alignment.CenterVertically){Checkbox(b,{b=it});Text("已选")};TriStateCheckbox(state=androidx.compose.ui.state.ToggleableState.Indeterminate,onClick={}) } }
                item { Section("component-chips", "Chips") { AssistChip(onClick={},label={Text("Assist")});FilterChip(selected=true,onClick={},label={Text("Filter")});InputChip(selected=false,onClick={},label={Text("Input")});SuggestionChip(onClick={},label={Text("Suggestion")}) } }
                item { Section("component-date-pickers", "日期选择器") { val state=rememberDatePickerState();DatePicker(state=state,modifier=Modifier.widthIn(max=420.dp)) } }
                item { Section("component-menus", "菜单") { var open by remember{mutableStateOf(false)};Box{OutlinedButton(onClick={open=true}){Text("菜单")};DropdownMenu(expanded=open,onDismissRequest={open=false}){DropdownMenuItem(text={Text("复制")},onClick={open=false});DropdownMenuItem(text={Text("移动")},onClick={open=false});DropdownMenuItem(text={Text("删除")},onClick={open=false})}} } }
                item { Section("component-radio-button", "单选按钮") { var sel by remember{mutableIntStateOf(0)};Row{listOf("系统","浅色","深色").forEachIndexed{i,l->Row(verticalAlignment=Alignment.CenterVertically){RadioButton(selected=sel==i,onClick={sel=i});Text(l)}}} } }
                item { Section("component-sliders", "滑块") { var v by remember{mutableFloatStateOf(.42f)};Slider(value=v,onValueChange={v=it});var r by remember{mutableStateOf(0.25f..0.75f)};RangeSlider(value=r,onValueChange={r=it}) } }
                item { Section("component-switch", "开关") { var on by remember{mutableStateOf(true)};Switch(checked=on,onCheckedChange={on=it});Text(if(on)"通知已开启" else "通知已关闭") } }
                item { Section("component-time-pickers", "时间选择器") { TimePicker(state=rememberTimePickerState(initialHour=9,initialMinute=30),modifier=Modifier.widthIn(max=360.dp)) } }
                item { Section("component-text-fields", "文本字段") { OutlinedTextField(value="文本",onValueChange={},label={Text("Outlined")});TextField(value="文本",onValueChange={},label={Text("Filled")}) } }
            }
        }
        if (showDialog) AlertDialog(onDismissRequest={showDialog=false},title={Text("确认操作")},text={Text("Basic Dialog 示例")},confirmButton={TextButton(onClick={showDialog=false}){Text("确认")}},dismissButton={TextButton(onClick={showDialog=false}){Text("取消")}})
        if (showSheet) ModalBottomSheet(onDismissRequest={showSheet=false}) { Column(Modifier.fillMaxWidth().padding(24.dp),verticalArrangement=Arrangement.spacedBy(16.dp)){Text("底部 Sheet",style=MaterialTheme.typography.titleLarge);Text("补充内容和操作");Button(onClick={showSheet=false}){Text("完成")};Spacer(Modifier.height(24.dp))} }
    }
}

@Composable
private fun Section(id:String,title:String,content:@Composable ()->Unit){
    ElevatedCard(modifier=Modifier.fillMaxWidth().semantics{contentDescription=id}){
        Column(Modifier.fillMaxWidth().padding(20.dp),verticalArrangement=Arrangement.spacedBy(14.dp)){
            Text(title,style=MaterialTheme.typography.titleLarge)
            Text(id,style=MaterialTheme.typography.labelSmall,color=MaterialTheme.colorScheme.onSurfaceVariant)
            content()
        }
    }
}

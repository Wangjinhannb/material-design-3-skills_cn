package org.example.md3reference
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.unit.dp
class MainActivity:ComponentActivity(){override fun onCreate(savedInstanceState:Bundle?){super.onCreate(savedInstanceState);setContent{ReferenceApp()}}}
@Composable fun ReferenceApp(){var name by remember{mutableStateOf("Material User")};var notifications by remember{mutableStateOf(true)};var saved by remember{mutableStateOf(false)};MaterialTheme{Scaffold(topBar={TopAppBar(title={Text("MD3 Reference")})}){p->LazyColumn(Modifier.fillMaxSize().padding(p),contentPadding=PaddingValues(20.dp),verticalArrangement=Arrangement.spacedBy(16.dp)){item{Text("Classic Material Design 3",style=MaterialTheme.typography.headlineMedium);Text("跨平台参考应用",style=MaterialTheme.typography.titleLarge);Button(onClick={}){Text("主要操作")}};item{Text("概览",Modifier.testTag("reference-overview"),style=MaterialTheme.typography.titleLarge);Row(horizontalArrangement=Arrangement.spacedBy(10.dp)){Card(Modifier.weight(1f)){Text("Token",Modifier.padding(16.dp))};Card(Modifier.weight(1f)){Text("Adaptive",Modifier.padding(16.dp))};Card(Modifier.weight(1f)){Text("State",Modifier.padding(16.dp))}}};item{Text("列表",Modifier.testTag("reference-list"),style=MaterialTheme.typography.titleLarge);ListItem(headlineContent={Text("项目 A")},supportingContent={Text("辅助信息")});ListItem(headlineContent={Text("项目 B")},supportingContent={Text("辅助信息")})};item{Text("表单",Modifier.testTag("reference-form"),style=MaterialTheme.typography.titleLarge);OutlinedTextField(value=name,onValueChange={name=it},label={Text("显示名称")});Row{Switch(checked=notifications,onCheckedChange={notifications=it});Text("启用通知",Modifier.padding(10.dp))};Button(onClick={saved=true}){Text("保存")};if(saved)Text("设置已保存",color=MaterialTheme.colorScheme.primary)};item{Text("设置",Modifier.testTag("reference-settings"),style=MaterialTheme.typography.titleLarge);Text("主题跟随系统；窗口变化时内容保持可读和可操作。")}}}}}

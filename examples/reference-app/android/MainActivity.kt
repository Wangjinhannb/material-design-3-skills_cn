package org.example.md3reference

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.layout.*
import androidx.compose.material3.*
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent { ReferenceApp() }
    }
}

@Composable
fun ReferenceApp() {
    MaterialTheme {
        Scaffold(topBar = { TopAppBar(title = { Text("MD3 Reference") }) }) { padding ->
            Column(Modifier.padding(padding).padding(24.dp), verticalArrangement = Arrangement.spacedBy(16.dp)) {
                Text("Classic Material Design 3", style = MaterialTheme.typography.headlineMedium)
                Button(onClick = {}) { Text("主要操作") }
                OutlinedTextField(value = "Material User", onValueChange = {}, label = { Text("显示名称") })
            }
        }
    }
}

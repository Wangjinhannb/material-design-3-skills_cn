using Microsoft.UI.Xaml;
using Microsoft.UI.Xaml.Controls;
namespace MD3Catalog;
public sealed partial class MainWindow : Window {
    public MainWindow(){InitializeComponent();}
    private async void ShowDialog(object sender, RoutedEventArgs e){var d=new ContentDialog{Title="确认操作",Content="Basic Dialog 示例",PrimaryButtonText="确认",CloseButtonText="取消",XamlRoot=Content.XamlRoot};await d.ShowAsync();}
    private async void ShowSheet(object sender, RoutedEventArgs e){var d=new ContentDialog{Title="底部 Sheet",Content="补充内容和操作",PrimaryButtonText="完成",XamlRoot=Content.XamlRoot};await d.ShowAsync();}
}

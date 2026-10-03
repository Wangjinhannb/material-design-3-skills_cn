#include <gtk/gtk.h>

static gboolean quit_app(gpointer data) {
  g_application_quit(G_APPLICATION(data));
  return G_SOURCE_REMOVE;
}
#include <string.h>

typedef struct { GtkWidget *window; gboolean smoke; } AppState;
static GtkWidget* row(void){ GtkWidget *b=gtk_box_new(GTK_ORIENTATION_HORIZONTAL,10); gtk_widget_set_hexpand(b,TRUE); return b; }
static GtkWidget* section(GtkWidget *parent,const char *id,const char *title){
  GtkWidget *frame=gtk_frame_new(NULL),*box=gtk_box_new(GTK_ORIENTATION_VERTICAL,10),*head=gtk_box_new(GTK_ORIENTATION_HORIZONTAL,8);
  GtkWidget *t=gtk_label_new(title),*code=gtk_label_new(id);
  gtk_widget_add_css_class(t,"title-3"); gtk_widget_set_halign(t,GTK_ALIGN_START); gtk_widget_set_halign(code,GTK_ALIGN_END); gtk_widget_set_hexpand(t,TRUE);
  gtk_box_append(GTK_BOX(head),t); gtk_box_append(GTK_BOX(head),code); gtk_box_append(GTK_BOX(box),head); gtk_frame_set_child(GTK_FRAME(frame),box); gtk_box_append(GTK_BOX(parent),frame); return box;
}
static void add_button(GtkWidget *r,const char *s){gtk_box_append(GTK_BOX(r),gtk_button_new_with_label(s));}
static void activate(GtkApplication *app,gpointer data){
  gboolean smoke=GPOINTER_TO_INT(data); GtkWidget *win=gtk_application_window_new(app); gtk_window_set_title(GTK_WINDOW(win),"MD3 Component Catalog"); gtk_window_set_default_size(GTK_WINDOW(win),980,820);
  GtkWidget *scroll=gtk_scrolled_window_new(),*root=gtk_box_new(GTK_ORIENTATION_VERTICAL,14); gtk_widget_set_margin_start(root,24);gtk_widget_set_margin_end(root,24);gtk_widget_set_margin_top(root,24);gtk_widget_set_margin_bottom(root,24);
  gtk_scrolled_window_set_child(GTK_SCROLLED_WINDOW(scroll),root); gtk_window_set_child(GTK_WINDOW(win),scroll);
  GtkWidget *s,*r,*w;
  s=section(root,"component-buttons","按钮"); r=row();add_button(r,"Filled");add_button(r,"Tonal");add_button(r,"Outlined");add_button(r,"Text");gtk_box_append(GTK_BOX(s),r);
  s=section(root,"component-floating-action-button","浮动操作按钮");r=row();add_button(r,"+");add_button(r,"＋ 新建");gtk_box_append(GTK_BOX(s),r);
  s=section(root,"component-icon-buttons","图标按钮");r=row();add_button(r,"☆");add_button(r,"★");add_button(r,"⋯");gtk_box_append(GTK_BOX(s),r);
  s=section(root,"component-segmented-buttons","分段按钮");r=row();w=gtk_toggle_button_new_with_label("列表");gtk_toggle_button_set_active(GTK_TOGGLE_BUTTON(w),TRUE);gtk_box_append(GTK_BOX(r),w);gtk_box_append(GTK_BOX(r),gtk_toggle_button_new_with_label("网格"));gtk_box_append(GTK_BOX(s),r);
  s=section(root,"component-badges","徽标");r=row();w=gtk_label_new("12");gtk_widget_add_css_class(w,"badge");gtk_box_append(GTK_BOX(r),w);gtk_box_append(GTK_BOX(s),r);
  s=section(root,"component-progress-indicators","进度指示器");r=row();w=gtk_progress_bar_new();gtk_progress_bar_set_fraction(GTK_PROGRESS_BAR(w),.62);gtk_widget_set_size_request(w,220,-1);gtk_box_append(GTK_BOX(r),w);w=gtk_spinner_new();gtk_spinner_start(GTK_SPINNER(w));gtk_box_append(GTK_BOX(r),w);gtk_box_append(GTK_BOX(s),r);
  s=section(root,"component-snackbars","Snackbar");r=row();w=gtk_label_new("设置已保存   撤销");gtk_widget_add_css_class(w,"snackbar");gtk_box_append(GTK_BOX(r),w);gtk_box_append(GTK_BOX(s),r);
  s=section(root,"component-tooltips","工具提示");r=row();w=gtk_button_new_with_label("帮助");gtk_widget_set_tooltip_text(w,"帮助信息");gtk_box_append(GTK_BOX(r),w);gtk_box_append(GTK_BOX(s),r);
  s=section(root,"component-bottom-sheets","底部 Sheet");r=row();add_button(r,"打开 Sheet");gtk_box_append(GTK_BOX(s),r);
  s=section(root,"component-cards","卡片");r=row();add_button(r,"Filled card");add_button(r,"Outlined card");add_button(r,"Elevated card");gtk_box_append(GTK_BOX(s),r);
  s=section(root,"component-carousel","轮播");r=row();for(int i=1;i<=4;i++){char x[8];g_snprintf(x,sizeof x,"%02d",i);add_button(r,x);}gtk_box_append(GTK_BOX(s),r);
  s=section(root,"component-dialogs","对话框");r=row();add_button(r,"打开对话框");gtk_box_append(GTK_BOX(s),r);
  s=section(root,"component-divider","分隔线");gtk_box_append(GTK_BOX(s),gtk_separator_new(GTK_ORIENTATION_HORIZONTAL));
  s=section(root,"component-lists","列表");w=gtk_list_box_new();gtk_list_box_append(GTK_LIST_BOX(w),gtk_label_new("单行列表"));gtk_list_box_append(GTK_LIST_BOX(w),gtk_label_new("双行列表 · 辅助文本"));gtk_box_append(GTK_BOX(s),w);
  s=section(root,"component-side-sheets","侧边 Sheet");gtk_box_append(GTK_BOX(s),gtk_label_new("Side sheet · 补充信息区域"));
  s=section(root,"component-bottom-app-bar","底部应用栏");r=row();add_button(r,"菜单");add_button(r,"搜索");add_button(r,"+");gtk_box_append(GTK_BOX(s),r);
  s=section(root,"component-top-app-bar","顶部应用栏");r=row();add_button(r,"←");gtk_box_append(GTK_BOX(r),gtk_label_new("页面标题"));add_button(r,"⋯");gtk_box_append(GTK_BOX(s),r);
  s=section(root,"component-navigation-bar","导航栏");r=row();add_button(r,"首页");add_button(r,"收藏");add_button(r,"设置");gtk_box_append(GTK_BOX(s),r);
  s=section(root,"component-navigation-drawer","导航抽屉");r=row();add_button(r,"收件箱");add_button(r,"草稿");add_button(r,"归档");gtk_box_append(GTK_BOX(s),r);
  s=section(root,"component-navigation-rail","导航侧栏");r=row();add_button(r,"首页");add_button(r,"收藏");add_button(r,"设置");gtk_box_append(GTK_BOX(s),r);
  s=section(root,"component-search","搜索");w=gtk_search_entry_new();gtk_entry_set_placeholder_text(GTK_ENTRY(w),"搜索");gtk_box_append(GTK_BOX(s),w);
  s=section(root,"component-tabs","标签页");r=row();add_button(r,"概览");add_button(r,"活动");add_button(r,"设置");gtk_box_append(GTK_BOX(s),r);
  s=section(root,"component-checkbox","复选框");r=row();gtk_box_append(GTK_BOX(r),gtk_check_button_new_with_label("未选"));w=gtk_check_button_new_with_label("已选");gtk_check_button_set_active(GTK_CHECK_BUTTON(w),TRUE);gtk_box_append(GTK_BOX(r),w);gtk_box_append(GTK_BOX(s),r);
  s=section(root,"component-chips","Chips");r=row();add_button(r,"Assist");add_button(r,"Filter");add_button(r,"Input ×");add_button(r,"Suggestion");gtk_box_append(GTK_BOX(s),r);
  s=section(root,"component-date-pickers","日期选择器");r=row();gtk_box_append(GTK_BOX(r),gtk_entry_new());add_button(r,"选择日期");gtk_box_append(GTK_BOX(s),r);
  s=section(root,"component-menus","菜单");r=row();w=gtk_menu_button_new();gtk_menu_button_set_label(GTK_MENU_BUTTON(w),"菜单");gtk_box_append(GTK_BOX(r),w);gtk_box_append(GTK_BOX(s),r);
  s=section(root,"component-radio-button","单选按钮");r=row();GtkWidget *a=gtk_check_button_new_with_label("系统"),*b=gtk_check_button_new_with_label("浅色"),*c=gtk_check_button_new_with_label("深色");gtk_check_button_set_group(GTK_CHECK_BUTTON(b),GTK_CHECK_BUTTON(a));gtk_check_button_set_group(GTK_CHECK_BUTTON(c),GTK_CHECK_BUTTON(a));gtk_check_button_set_active(GTK_CHECK_BUTTON(a),TRUE);gtk_box_append(GTK_BOX(r),a);gtk_box_append(GTK_BOX(r),b);gtk_box_append(GTK_BOX(r),c);gtk_box_append(GTK_BOX(s),r);
  s=section(root,"component-sliders","滑块");r=row();w=gtk_scale_new_with_range(GTK_ORIENTATION_HORIZONTAL,0,100,1);gtk_range_set_value(GTK_RANGE(w),42);gtk_widget_set_size_request(w,240,-1);gtk_box_append(GTK_BOX(r),w);gtk_box_append(GTK_BOX(s),r);
  s=section(root,"component-switch","开关");r=row();w=gtk_switch_new();gtk_switch_set_active(GTK_SWITCH(w),TRUE);gtk_box_append(GTK_BOX(r),w);gtk_box_append(GTK_BOX(r),gtk_label_new("通知"));gtk_box_append(GTK_BOX(s),r);
  s=section(root,"component-time-pickers","时间选择器");r=row();w=gtk_entry_new();gtk_editable_set_text(GTK_EDITABLE(w),"09:30");gtk_box_append(GTK_BOX(r),w);gtk_box_append(GTK_BOX(s),r);
  s=section(root,"component-text-fields","文本字段");r=row();w=gtk_entry_new();gtk_entry_set_placeholder_text(GTK_ENTRY(w),"Filled");gtk_box_append(GTK_BOX(r),w);w=gtk_entry_new();gtk_entry_set_placeholder_text(GTK_ENTRY(w),"Outlined");gtk_box_append(GTK_BOX(r),w);gtk_box_append(GTK_BOX(s),r);
  GtkCssProvider *css=gtk_css_provider_new();gtk_css_provider_load_from_data(css,"frame{padding:18px;border-radius:20px;background:#f3edf7;} .badge{background:#b3261e;color:white;padding:3px 8px;border-radius:12px;} .snackbar{background:#322f35;color:white;padding:12px;border-radius:4px;}",-1);gtk_style_context_add_provider_for_display(gdk_display_get_default(),GTK_STYLE_PROVIDER(css),GTK_STYLE_PROVIDER_PRIORITY_APPLICATION);g_object_unref(css);
  gtk_window_present(GTK_WINDOW(win)); if(smoke) g_timeout_add(700, quit_app, app);
}
int main(int argc,char **argv){gboolean smoke=argc>1 && strcmp(argv[1],"--smoke")==0;GtkApplication *app=gtk_application_new("org.example.md3gtk",G_APPLICATION_DEFAULT_FLAGS);g_signal_connect(app,"activate",G_CALLBACK(activate),GINT_TO_POINTER(smoke));int status=g_application_run(G_APPLICATION(app),smoke?1:argc,smoke?argv:argv);g_object_unref(app);return status;}

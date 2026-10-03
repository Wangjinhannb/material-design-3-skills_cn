#include <gtk/gtk.h>

static void activate(GtkApplication *app, gpointer data) {
  GtkWidget *window = gtk_application_window_new(app);
  gtk_window_set_title(GTK_WINDOW(window), "MD3 Reference");
  GtkWidget *box = gtk_box_new(GTK_ORIENTATION_VERTICAL, 16);
  gtk_widget_set_margin_top(box, 24); gtk_widget_set_margin_bottom(box, 24);
  gtk_widget_set_margin_start(box, 24); gtk_widget_set_margin_end(box, 24);
  gtk_box_append(GTK_BOX(box), gtk_label_new("Classic Material Design 3"));
  gtk_box_append(GTK_BOX(box), gtk_button_new_with_label("主要操作"));
  gtk_window_set_child(GTK_WINDOW(window), box);
  gtk_window_present(GTK_WINDOW(window));
}
int main(int argc, char **argv) {
  GtkApplication *app = gtk_application_new("org.example.md3reference", G_APPLICATION_DEFAULT_FLAGS);
  g_signal_connect(app, "activate", G_CALLBACK(activate), NULL);
  int status = g_application_run(G_APPLICATION(app), argc, argv);
  g_object_unref(app); return status;
}

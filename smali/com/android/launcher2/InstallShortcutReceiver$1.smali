.class final Lcom/android/launcher2/InstallShortcutReceiver$1;
.super Ljava/lang/Thread;
.source "InstallShortcutReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/InstallShortcutReceiver;->installShortcut(Landroid/content/Context;Landroid/content/Intent;Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/Intent;IZLandroid/content/SharedPreferences;[I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$savedNewApps:Ljava/util/Set;

.field final synthetic val$screen:I

.field final synthetic val$sharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Set;Landroid/content/SharedPreferences;I)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p2, p0, Lcom/android/launcher2/InstallShortcutReceiver$1;->val$savedNewApps:Ljava/util/Set;

    iput-object p3, p0, Lcom/android/launcher2/InstallShortcutReceiver$1;->val$sharedPrefs:Landroid/content/SharedPreferences;

    iput p4, p0, Lcom/android/launcher2/InstallShortcutReceiver$1;->val$screen:I

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 194
    iget-object v1, p0, Lcom/android/launcher2/InstallShortcutReceiver$1;->val$savedNewApps:Ljava/util/Set;

    monitor-enter v1

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/InstallShortcutReceiver$1;->val$sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "apps.new.page"

    iget v3, p0, Lcom/android/launcher2/InstallShortcutReceiver$1;->val$screen:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "apps.new.list"

    iget-object v3, p0, Lcom/android/launcher2/InstallShortcutReceiver$1;->val$savedNewApps:Ljava/util/Set;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 199
    monitor-exit v1

    .line 200
    return-void

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

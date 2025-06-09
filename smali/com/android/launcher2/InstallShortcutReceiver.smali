.class public Lcom/android/launcher2/InstallShortcutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstallShortcutReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/InstallShortcutReceiver$PendingInstallShortcutInfo;
    }
.end annotation


# static fields
.field public static final ACTION_INSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"

.field private static final INSTALL_SHORTCUT_IS_DUPLICATE:I = -0x1

.field private static final INSTALL_SHORTCUT_NO_SPACE:I = -0x2

.field private static final INSTALL_SHORTCUT_SUCCESSFUL:I = 0x0

.field public static final NEW_APPS_LIST_KEY:Ljava/lang/String; = "apps.new.list"

.field public static final NEW_APPS_PAGE_KEY:Ljava/lang/String; = "apps.new.page"

.field public static final NEW_SHORTCUT_BOUNCE_DURATION:I = 0x1c2

.field public static final NEW_SHORTCUT_STAGGER_DELAY:I = 0x4b

.field public static final SHORTCUT_MIMETYPE:Ljava/lang/String; = "com.android.launcher/shortcut"

.field private static mInstallQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/InstallShortcutReceiver$PendingInstallShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mUseInstallQueue:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/InstallShortcutReceiver;->mInstallQueue:Ljava/util/ArrayList;

    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/InstallShortcutReceiver;->mUseInstallQueue:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 59
    return-void
.end method

.method static disableAndFlushInstallQueue(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/InstallShortcutReceiver;->mUseInstallQueue:Z

    .line 110
    invoke-static {p0}, Lcom/android/launcher2/InstallShortcutReceiver;->flushInstallQueue(Landroid/content/Context;)V

    .line 111
    return-void
.end method

.method static enableInstallQueue()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/InstallShortcutReceiver;->mUseInstallQueue:Z

    .line 107
    return-void
.end method

.method private static findEmptyCell(Landroid/content/Context;Ljava/util/ArrayList;[II)Z
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "xy"    # [I
    .param p3, "screen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ItemInfo;",
            ">;[II)Z"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v4

    .line 227
    .local v4, "xCount":I
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v5

    .line 228
    .local v5, "yCount":I
    filled-new-array {v4, v5}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[Z

    .line 230
    .local v6, "occupied":[[Z
    const/4 v10, 0x0

    .line 232
    .local v10, "item":Lcom/android/launcher2/ItemInfo;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v9, v1, :cond_2

    .line 233
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "item":Lcom/android/launcher2/ItemInfo;
    check-cast v10, Lcom/android/launcher2/ItemInfo;

    .line 234
    .restart local v10    # "item":Lcom/android/launcher2/ItemInfo;
    iget-wide v1, v10, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v15, -0x64

    cmp-long v1, v1, v15

    if-nez v1, :cond_1

    .line 235
    iget v1, v10, Lcom/android/launcher2/ItemInfo;->screen:I

    move/from16 v0, p3

    if-ne v1, v0, :cond_1

    .line 236
    iget v7, v10, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 237
    .local v7, "cellX":I
    iget v8, v10, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 238
    .local v8, "cellY":I
    iget v11, v10, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 239
    .local v11, "spanX":I
    iget v12, v10, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 240
    .local v12, "spanY":I
    move v13, v7

    .local v13, "x":I
    :goto_1
    if-ltz v13, :cond_1

    add-int v1, v7, v11

    if-ge v13, v1, :cond_1

    if-ge v13, v4, :cond_1

    .line 241
    move v14, v8

    .local v14, "y":I
    :goto_2
    if-ltz v14, :cond_0

    add-int v1, v8, v12

    if-ge v14, v1, :cond_0

    if-ge v14, v5, :cond_0

    .line 242
    aget-object v1, v6, v13

    const/4 v2, 0x1

    aput-boolean v2, v1, v14

    .line 241
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 240
    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 232
    .end local v7    # "cellX":I
    .end local v8    # "cellY":I
    .end local v11    # "spanX":I
    .end local v12    # "spanY":I
    .end local v13    # "x":I
    .end local v14    # "y":I
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 249
    :cond_2
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v1, p2

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/CellLayout;->findVacantCell([IIIII[[Z)Z

    move-result v1

    return v1
.end method

.method static flushInstallQueue(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    sget-object v1, Lcom/android/launcher2/InstallShortcutReceiver;->mInstallQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 114
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher2/InstallShortcutReceiver$PendingInstallShortcutInfo;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/InstallShortcutReceiver$PendingInstallShortcutInfo;

    invoke-static {p0, v1}, Lcom/android/launcher2/InstallShortcutReceiver;->processInstallShortcut(Landroid/content/Context;Lcom/android/launcher2/InstallShortcutReceiver$PendingInstallShortcutInfo;)V

    .line 116
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 118
    :cond_0
    return-void
.end method

.method private static installShortcut(Landroid/content/Context;Landroid/content/Intent;Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/Intent;IZLandroid/content/SharedPreferences;[I)Z
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Landroid/content/Intent;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "screen"    # I
    .param p6, "shortcutExists"    # Z
    .param p7, "sharedPrefs"    # Landroid/content/SharedPreferences;
    .param p8, "result"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ItemInfo;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "IZ",
            "Landroid/content/SharedPreferences;",
            "[I)Z"
        }
    .end annotation

    .prologue
    .line 165
    .local p2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    const/4 v4, 0x2

    new-array v0, v4, [I

    move-object/from16 v19, v0

    .line 166
    .local v19, "tmpCoordinates":[I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    move/from16 v3, p5

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher2/InstallShortcutReceiver;->findEmptyCell(Landroid/content/Context;Ljava/util/ArrayList;[II)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 167
    if-eqz p4, :cond_7

    .line 168
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    .line 169
    const-string v4, "android.intent.action.VIEW"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    :cond_0
    :goto_0
    const-string v4, "duplicate"

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    .line 180
    .local v14, "duplicate":Z
    if-nez v14, :cond_1

    if-nez p6, :cond_4

    .line 183
    :cond_1
    const-string v4, "apps.new.page"

    move-object/from16 v0, p7

    move/from16 v1, p5

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 184
    .local v17, "newAppsScreen":I
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 185
    .local v16, "newApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move/from16 v0, v17

    move/from16 v1, p5

    if-ne v0, v1, :cond_2

    .line 186
    const-string v4, "apps.new.list"

    move-object/from16 v0, p7

    move-object/from16 v1, v16

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v16

    .line 188
    :cond_2
    monitor-enter v16

    .line 189
    const/4 v4, 0x0

    :try_start_0
    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 190
    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    move-object/from16 v18, v16

    .line 192
    .local v18, "savedNewApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Lcom/android/launcher2/InstallShortcutReceiver$1;

    const-string v5, "setNewAppsThread"

    move-object/from16 v0, v18

    move-object/from16 v1, p7

    move/from16 v2, p5

    invoke-direct {v4, v5, v0, v1, v2}, Lcom/android/launcher2/InstallShortcutReceiver$1;-><init>(Ljava/lang/String;Ljava/util/Set;Landroid/content/SharedPreferences;I)V

    invoke-virtual {v4}, Lcom/android/launcher2/InstallShortcutReceiver$1;->start()V

    .line 204
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/LauncherApplication;

    .line 205
    .local v13, "app":Lcom/android/launcher2/LauncherApplication;
    invoke-virtual {v13}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v4

    const-wide/16 v7, -0x64

    const/4 v5, 0x0

    aget v10, v19, v5

    const/4 v5, 0x1

    aget v11, v19, v5

    const/4 v12, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v9, p5

    invoke-virtual/range {v4 .. v12}, Lcom/android/launcher2/LauncherModel;->addShortcut(Landroid/content/Context;Landroid/content/Intent;JIIIZ)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v15

    .line 208
    .local v15, "info":Lcom/android/launcher2/ShortcutInfo;
    if-nez v15, :cond_5

    .line 209
    const/4 v4, 0x0

    .line 221
    .end local v13    # "app":Lcom/android/launcher2/LauncherApplication;
    .end local v14    # "duplicate":Z
    .end local v15    # "info":Lcom/android/launcher2/ShortcutInfo;
    .end local v16    # "newApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v17    # "newAppsScreen":I
    .end local v18    # "savedNewApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_1
    return v4

    .line 170
    :cond_3
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v4

    const-string v5, "android.intent.category.LAUNCHER"

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 173
    const/high16 v4, 0x10200000

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 190
    .restart local v14    # "duplicate":Z
    .restart local v16    # "newApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v17    # "newAppsScreen":I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 212
    .end local v16    # "newApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v17    # "newAppsScreen":I
    :cond_4
    const/4 v4, 0x0

    const/4 v5, -0x1

    aput v5, p8, v4

    .line 215
    :cond_5
    const/4 v4, 0x1

    goto :goto_1

    .line 218
    .end local v14    # "duplicate":Z
    :cond_6
    const/4 v4, 0x0

    const/4 v5, -0x2

    aput v5, p8, v4

    .line 221
    :cond_7
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static processInstallShortcut(Landroid/content/Context;Lcom/android/launcher2/InstallShortcutReceiver$PendingInstallShortcutInfo;)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pendingInfo"    # Lcom/android/launcher2/InstallShortcutReceiver$PendingInstallShortcutInfo;

    .prologue
    .line 122
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v14

    .line 123
    .local v14, "spKey":Ljava/lang/String;
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 125
    .local v8, "sp":Landroid/content/SharedPreferences;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher2/InstallShortcutReceiver$PendingInstallShortcutInfo;->data:Landroid/content/Intent;

    .line 126
    .local v2, "data":Landroid/content/Intent;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher2/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    .line 127
    .local v5, "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher2/InstallShortcutReceiver$PendingInstallShortcutInfo;->name:Ljava/lang/String;

    .line 130
    .local v4, "name":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/LauncherApplication;

    .line 131
    .local v10, "app":Lcom/android/launcher2/LauncherApplication;
    const/4 v1, 0x1

    new-array v9, v1, [I

    const/4 v1, 0x0

    const/4 v15, 0x0

    aput v15, v9, v1

    .line 132
    .local v9, "result":[I
    const/4 v11, 0x0

    .line 133
    .local v11, "found":Z
    monitor-enter v10

    .line 134
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/android/launcher2/LauncherModel;->getItemsInLocalCoordinates(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    .line 135
    .local v3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/android/launcher2/LauncherModel;->shortcutExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v7

    .line 139
    .local v7, "exists":Z
    const/4 v13, 0x2

    .line 140
    .local v13, "screen":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    const/16 v1, 0xb

    if-ge v12, v1, :cond_2

    if-nez v11, :cond_2

    .line 141
    int-to-float v1, v12

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v1, v15

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v1, v15

    float-to-int v15, v1

    rem-int/lit8 v1, v12, 0x2

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v1, v0, :cond_1

    const/4 v1, 0x1

    :goto_1
    mul-int/2addr v1, v15

    add-int/lit8 v6, v1, 0x2

    .line 142
    .local v6, "si":I
    if-ltz v6, :cond_0

    const/4 v1, 0x5

    if-ge v6, v1, :cond_0

    move-object/from16 v1, p0

    .line 143
    invoke-static/range {v1 .. v9}, Lcom/android/launcher2/InstallShortcutReceiver;->installShortcut(Landroid/content/Context;Landroid/content/Intent;Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/Intent;IZLandroid/content/SharedPreferences;[I)Z

    move-result v11

    .line 140
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 141
    .end local v6    # "si":I
    :cond_1
    const/4 v1, -0x1

    goto :goto_1

    .line 147
    :cond_2
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    if-nez v11, :cond_3

    .line 152
    const/4 v1, 0x0

    aget v1, v9, v1

    const/4 v15, -0x2

    if-ne v1, v15, :cond_4

    .line 153
    const v1, 0x7f0d0018

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v1, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 160
    :cond_3
    :goto_2
    return-void

    .line 147
    .end local v3    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    .end local v7    # "exists":Z
    .end local v12    # "i":I
    .end local v13    # "screen":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 155
    .restart local v3    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    .restart local v7    # "exists":Z
    .restart local v12    # "i":I
    .restart local v13    # "screen":I
    :cond_4
    const/4 v1, 0x0

    aget v1, v9, v1

    const/4 v15, -0x1

    if-ne v1, v15, :cond_3

    .line 156
    const v1, 0x7f0d001e

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v4, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v1, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 73
    const-string v6, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    const-string v6, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 78
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 83
    const-string v6, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, "name":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 86
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 87
    .local v5, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 88
    .local v0, "info":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v0, v5}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 94
    .end local v0    # "info":Landroid/content/pm/ActivityInfo;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v6

    if-lez v6, :cond_3

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v6

    if-gtz v6, :cond_4

    :cond_3
    const/4 v2, 0x1

    .line 97
    .local v2, "launcherNotLoaded":Z
    :cond_4
    new-instance v0, Lcom/android/launcher2/InstallShortcutReceiver$PendingInstallShortcutInfo;

    invoke-direct {v0, p2, v3, v1}, Lcom/android/launcher2/InstallShortcutReceiver$PendingInstallShortcutInfo;-><init>(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;)V

    .line 98
    .local v0, "info":Lcom/android/launcher2/InstallShortcutReceiver$PendingInstallShortcutInfo;
    sget-boolean v6, Lcom/android/launcher2/InstallShortcutReceiver;->mUseInstallQueue:Z

    if-nez v6, :cond_5

    if-eqz v2, :cond_6

    .line 99
    :cond_5
    sget-object v6, Lcom/android/launcher2/InstallShortcutReceiver;->mInstallQueue:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    .end local v0    # "info":Lcom/android/launcher2/InstallShortcutReceiver$PendingInstallShortcutInfo;
    .end local v2    # "launcherNotLoaded":Z
    :catch_0
    move-exception v4

    .line 90
    .local v4, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 101
    .end local v4    # "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "info":Lcom/android/launcher2/InstallShortcutReceiver$PendingInstallShortcutInfo;
    .restart local v2    # "launcherNotLoaded":Z
    :cond_6
    invoke-static {p1, v0}, Lcom/android/launcher2/InstallShortcutReceiver;->processInstallShortcut(Landroid/content/Context;Lcom/android/launcher2/InstallShortcutReceiver$PendingInstallShortcutInfo;)V

    goto :goto_0
.end method

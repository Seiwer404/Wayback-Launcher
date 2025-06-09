.class public Lcom/android/launcher2/LauncherModel;
.super Landroid/content/BroadcastReceiver;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/LauncherModel$WidgetAndShortcutNameComparator;,
        Lcom/android/launcher2/LauncherModel$ShortcutNameComparator;,
        Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;,
        Lcom/android/launcher2/LauncherModel$LoaderTask;,
        Lcom/android/launcher2/LauncherModel$Callbacks;
    }
.end annotation


# static fields
.field public static final APP_INSTALL_TIME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final DEBUG_LOADERS:Z = false

.field private static final ITEMS_CHUNK:I = 0x6

.field private static final MAIN_THREAD_BINDING_RUNNABLE:I = 0x1

.field private static final MAIN_THREAD_NORMAL_RUNNABLE:I = 0x0

.field static final TAG:Ljava/lang/String; = "Launcher.Model"

.field private static mCellCountX:I

.field private static mCellCountY:I

.field static final mDeferredBindRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field static final sBgAppWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/LauncherAppWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final sBgDbIconCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "[B>;"
        }
    .end annotation
.end field

.field static final sBgFolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final sBgItemsIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final sBgLock:Ljava/lang/Object;

.field static final sBgWorkspaceItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final sWorker:Landroid/os/Handler;

.field private static final sWorkerThread:Landroid/os/HandlerThread;


# instance fields
.field private mAllAppsLoadDelay:I

.field private mAllAppsLoaded:Z

.field private final mApp:Lcom/android/launcher2/LauncherApplication;

.field private final mAppsCanBeOnExternalStorage:Z

.field private mBatchSize:I

.field private mBgAllAppsList:Lcom/android/launcher2/AllAppsList;

.field private mCallbacks:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/launcher2/LauncherModel$Callbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultIcon:Landroid/graphics/Bitmap;

.field private mHandler:Lcom/android/launcher2/DeferredHandler;

.field private mIconCache:Lcom/android/launcher2/IconCache;

.field private mIsLoaderTaskRunning:Z

.field private mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

.field private final mLock:Ljava/lang/Object;

.field protected mPreviousConfigMcc:I

.field private mWorkspaceLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 91
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "launcher-loader"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    .line 93
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 95
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    .line 118
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sBgLock:Ljava/lang/Object;

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sBgItemsIdMap:Ljava/util/HashMap;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sBgAppWidgets:Ljava/util/ArrayList;

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sBgFolders:Ljava/util/HashMap;

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sBgDbIconCache:Ljava/util/HashMap;

    .line 2462
    new-instance v0, Lcom/android/launcher2/LauncherModel$8;

    invoke-direct {v0}, Lcom/android/launcher2/LauncherModel$8;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->APP_INSTALL_TIME_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/IconCache;)V
    .locals 3
    .param p1, "app"    # Lcom/android/launcher2/LauncherApplication;
    .param p2, "iconCache"    # Lcom/android/launcher2/IconCache;

    .prologue
    .line 167
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 80
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    .line 81
    new-instance v2, Lcom/android/launcher2/DeferredHandler;

    invoke-direct {v2}, Lcom/android/launcher2/DeferredHandler;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    .line 168
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/launcher2/LauncherModel;->mAppsCanBeOnExternalStorage:Z

    .line 169
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    .line 170
    new-instance v2, Lcom/android/launcher2/AllAppsList;

    invoke-direct {v2, p2}, Lcom/android/launcher2/AllAppsList;-><init>(Lcom/android/launcher2/IconCache;)V

    iput-object v2, p0, Lcom/android/launcher2/LauncherModel;->mBgAllAppsList:Lcom/android/launcher2/AllAppsList;

    .line 171
    iput-object p2, p0, Lcom/android/launcher2/LauncherModel;->mIconCache:Lcom/android/launcher2/IconCache;

    .line 173
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v2}, Lcom/android/launcher2/IconCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/LauncherModel;->mDefaultIcon:Landroid/graphics/Bitmap;

    .line 176
    invoke-virtual {p1}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 177
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0a000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsLoadDelay:I

    .line 178
    const v2, 0x7f0a000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/LauncherModel;->mBatchSize:I

    .line 179
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 180
    .local v0, "config":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->mcc:I

    iput v2, p0, Lcom/android/launcher2/LauncherModel;->mPreviousConfigMcc:I

    .line 181
    return-void

    .line 168
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/launcher2/LauncherModel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/LauncherModel;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/launcher2/LauncherModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/LauncherModel;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z

    return p1
.end method

.method static synthetic access$1000()I
    .locals 1

    .prologue
    .line 70
    sget v0, Lcom/android/launcher2/LauncherModel;->mCellCountY:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/launcher2/LauncherModel;Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/android/launcher2/ShortcutInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/LauncherModel;
    .param p1, "x1"    # Landroid/database/Cursor;
    .param p2, "x2"    # Landroid/content/Context;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I

    .prologue
    .line 70
    invoke-direct/range {p0 .. p7}, Lcom/android/launcher2/LauncherModel;->getShortcutInfo(Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Ljava/util/HashMap;J)Lcom/android/launcher2/FolderInfo;
    .locals 1
    .param p0, "x0"    # Ljava/util/HashMap;
    .param p1, "x1"    # J

    .prologue
    .line 70
    invoke-static {p0, p1, p2}, Lcom/android/launcher2/LauncherModel;->findOrMakeFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/FolderInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/launcher2/LauncherModel;Ljava/lang/Runnable;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/LauncherModel;
    .param p1, "x1"    # Ljava/lang/Runnable;
    .param p2, "x2"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/LauncherModel;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mBgAllAppsList:Lcom/android/launcher2/AllAppsList;

    return-object v0
.end method

.method static synthetic access$1600()Landroid/os/HandlerThread;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/launcher2/LauncherModel;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/LauncherModel;

    .prologue
    .line 70
    iget v0, p0, Lcom/android/launcher2/LauncherModel;->mBatchSize:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/IconCache;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/LauncherModel;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mIconCache:Lcom/android/launcher2/IconCache;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/launcher2/LauncherModel;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/LauncherModel;

    .prologue
    .line 70
    iget v0, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsLoadDelay:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/LauncherModel;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/LauncherModel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/LauncherModel;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsLoaded:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/launcher2/LauncherModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/LauncherModel;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsLoaded:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/LauncherModel;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/LauncherModel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/LauncherModel;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->mIsLoaderTaskRunning:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/launcher2/LauncherModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/LauncherModel;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/launcher2/LauncherModel;->mIsLoaderTaskRunning:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/LauncherModel;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/LauncherModel$LoaderTask;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/LauncherModel;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/launcher2/LauncherModel;Lcom/android/launcher2/LauncherModel$LoaderTask;)Lcom/android/launcher2/LauncherModel$LoaderTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/LauncherModel;
    .param p1, "x1"    # Lcom/android/launcher2/LauncherModel$LoaderTask;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/LauncherApplication;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/LauncherModel;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    return-object v0
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 70
    sget v0, Lcom/android/launcher2/LauncherModel;->mCellCountX:I

    return v0
.end method

.method static addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIIIZ)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/android/launcher2/ItemInfo;
    .param p2, "container"    # J
    .param p4, "screen"    # I
    .param p5, "cellX"    # I
    .param p6, "cellY"    # I
    .param p7, "notify"    # Z

    .prologue
    .line 560
    iput-wide p2, p1, Lcom/android/launcher2/ItemInfo;->container:J

    .line 561
    move/from16 v0, p5

    iput v0, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 562
    move/from16 v0, p6

    iput v0, p1, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 565
    instance-of v3, p0, Lcom/android/launcher2/Launcher;

    if-eqz v3, :cond_0

    if-gez p4, :cond_0

    const-wide/16 v3, -0x65

    cmp-long v3, p2, v3

    if-nez v3, :cond_0

    move-object v3, p0

    .line 567
    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v3

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v3, v0, v1}, Lcom/android/launcher2/Hotseat;->getOrderInHotseat(II)I

    move-result v3

    iput v3, p1, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 572
    :goto_0
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 573
    .local v11, "values":Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 574
    .local v9, "cr":Landroid/content/ContentResolver;
    invoke-virtual {p1, v11}, Lcom/android/launcher2/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 576
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/LauncherApplication;

    .line 577
    .local v12, "app":Lcom/android/launcher2/LauncherApplication;
    invoke-virtual {v12}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherProvider;->generateNewId()J

    move-result-wide v3

    iput-wide v3, p1, Lcom/android/launcher2/ItemInfo;->id:J

    .line 578
    const-string v3, "_id"

    iget-wide v4, p1, Lcom/android/launcher2/ItemInfo;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 579
    iget v3, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    iget v4, p1, Lcom/android/launcher2/ItemInfo;->cellY:I

    invoke-virtual {p1, v11, v3, v4}, Lcom/android/launcher2/ItemInfo;->updateValuesWithCoordinates(Landroid/content/ContentValues;II)V

    .line 581
    new-instance v2, Lcom/android/launcher2/LauncherModel$4;

    move-object v3, p1

    move-wide v4, p2

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v10, p7

    invoke-direct/range {v2 .. v11}, Lcom/android/launcher2/LauncherModel$4;-><init>(Lcom/android/launcher2/ItemInfo;JIIILandroid/content/ContentResolver;ZLandroid/content/ContentValues;)V

    .line 622
    .local v2, "r":Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 623
    return-void

    .line 569
    .end local v2    # "r":Ljava/lang/Runnable;
    .end local v9    # "cr":Landroid/content/ContentResolver;
    .end local v11    # "values":Landroid/content/ContentValues;
    .end local v12    # "app":Lcom/android/launcher2/LauncherApplication;
    :cond_0
    move/from16 v0, p4

    iput v0, p1, Lcom/android/launcher2/ItemInfo;->screen:I

    goto :goto_0
.end method

.method static addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIII)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/android/launcher2/ItemInfo;
    .param p2, "container"    # J
    .param p4, "screen"    # I
    .param p5, "cellX"    # I
    .param p6, "cellY"    # I

    .prologue
    .line 256
    iget-wide v0, p1, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 258
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIIIZ)V

    .line 263
    :goto_0
    return-void

    .line 261
    :cond_0
    invoke-static/range {p0 .. p6}, Lcom/android/launcher2/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIII)V

    goto :goto_0
.end method

.method static checkItemInfo(Lcom/android/launcher2/ItemInfo;)V
    .locals 5
    .param p0, "item"    # Lcom/android/launcher2/ItemInfo;

    .prologue
    .line 309
    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 310
    .local v3, "stackTrace":[Ljava/lang/StackTraceElement;
    iget-wide v0, p0, Lcom/android/launcher2/ItemInfo;->id:J

    .line 311
    .local v0, "itemId":J
    new-instance v2, Lcom/android/launcher2/LauncherModel$2;

    invoke-direct {v2, v0, v1, p0, v3}, Lcom/android/launcher2/LauncherModel$2;-><init>(JLcom/android/launcher2/ItemInfo;[Ljava/lang/StackTraceElement;)V

    .line 318
    .local v2, "r":Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 319
    return-void
.end method

.method static checkItemInfoLocked(JLcom/android/launcher2/ItemInfo;[Ljava/lang/StackTraceElement;)V
    .locals 11
    .param p0, "itemId"    # J
    .param p2, "item"    # Lcom/android/launcher2/ItemInfo;
    .param p3, "stackTrace"    # [Ljava/lang/StackTraceElement;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 267
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sBgItemsIdMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ItemInfo;

    .line 268
    .local v1, "modelItem":Lcom/android/launcher2/ItemInfo;
    if-eqz v1, :cond_1

    if-eq p2, v1, :cond_1

    .line 270
    instance-of v5, v1, Lcom/android/launcher2/ShortcutInfo;

    if-eqz v5, :cond_2

    instance-of v5, p2, Lcom/android/launcher2/ShortcutInfo;

    if-eqz v5, :cond_2

    move-object v2, v1

    .line 271
    check-cast v2, Lcom/android/launcher2/ShortcutInfo;

    .local v2, "modelShortcut":Lcom/android/launcher2/ShortcutInfo;
    move-object v4, p2

    .line 272
    check-cast v4, Lcom/android/launcher2/ShortcutInfo;

    .line 273
    .local v4, "shortcut":Lcom/android/launcher2/ShortcutInfo;
    iget-object v5, v2, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v2, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    iget-object v6, v4, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-wide v5, v2, Lcom/android/launcher2/ShortcutInfo;->id:J

    iget-wide v7, v4, Lcom/android/launcher2/ShortcutInfo;->id:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    iget v5, v2, Lcom/android/launcher2/ShortcutInfo;->itemType:I

    iget v6, v4, Lcom/android/launcher2/ShortcutInfo;->itemType:I

    if-ne v5, v6, :cond_2

    iget-wide v5, v2, Lcom/android/launcher2/ShortcutInfo;->container:J

    iget-wide v7, v4, Lcom/android/launcher2/ShortcutInfo;->container:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    iget v5, v2, Lcom/android/launcher2/ShortcutInfo;->screen:I

    iget v6, v4, Lcom/android/launcher2/ShortcutInfo;->screen:I

    if-ne v5, v6, :cond_2

    iget v5, v2, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    iget v6, v4, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    if-ne v5, v6, :cond_2

    iget v5, v2, Lcom/android/launcher2/ShortcutInfo;->cellY:I

    iget v6, v4, Lcom/android/launcher2/ShortcutInfo;->cellY:I

    if-ne v5, v6, :cond_2

    iget v5, v2, Lcom/android/launcher2/ShortcutInfo;->spanX:I

    iget v6, v4, Lcom/android/launcher2/ShortcutInfo;->spanX:I

    if-ne v5, v6, :cond_2

    iget v5, v2, Lcom/android/launcher2/ShortcutInfo;->spanY:I

    iget v6, v4, Lcom/android/launcher2/ShortcutInfo;->spanY:I

    if-ne v5, v6, :cond_2

    iget-object v5, v2, Lcom/android/launcher2/ShortcutInfo;->dropPos:[I

    if-nez v5, :cond_0

    iget-object v5, v4, Lcom/android/launcher2/ShortcutInfo;->dropPos:[I

    if-eqz v5, :cond_1

    :cond_0
    iget-object v5, v2, Lcom/android/launcher2/ShortcutInfo;->dropPos:[I

    if-eqz v5, :cond_2

    iget-object v5, v4, Lcom/android/launcher2/ShortcutInfo;->dropPos:[I

    if-eqz v5, :cond_2

    iget-object v5, v2, Lcom/android/launcher2/ShortcutInfo;->dropPos:[I

    aget v5, v5, v9

    iget-object v6, v4, Lcom/android/launcher2/ShortcutInfo;->dropPos:[I

    aget v6, v6, v9

    if-ne v5, v6, :cond_2

    iget-object v5, v2, Lcom/android/launcher2/ShortcutInfo;->dropPos:[I

    aget v5, v5, v10

    iget-object v6, v4, Lcom/android/launcher2/ShortcutInfo;->dropPos:[I

    aget v6, v6, v10

    if-ne v5, v6, :cond_2

    .line 306
    .end local v2    # "modelShortcut":Lcom/android/launcher2/ShortcutInfo;
    .end local v4    # "shortcut":Lcom/android/launcher2/ShortcutInfo;
    :cond_1
    return-void

    .line 296
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "item: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/android/launcher2/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "modelItem: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/launcher2/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Error: ItemInfo passed to checkItemInfo doesn\'t match original"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 300
    .local v3, "msg":Ljava/lang/String;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 301
    .local v0, "e":Ljava/lang/RuntimeException;
    if-eqz p3, :cond_3

    .line 302
    invoke-virtual {v0, p3}, Ljava/lang/RuntimeException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 304
    :cond_3
    throw v0

    .line 296
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v3    # "msg":Ljava/lang/String;
    :cond_4
    const-string v5, "null"

    goto :goto_0

    :cond_5
    const-string v5, "null"

    goto :goto_1
.end method

.method static deleteFolderContentsFromDatabase(Landroid/content/Context;Lcom/android/launcher2/FolderInfo;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Lcom/android/launcher2/FolderInfo;

    .prologue
    .line 707
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 709
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v1, Lcom/android/launcher2/LauncherModel$6;

    invoke-direct {v1, v0, p1}, Lcom/android/launcher2/LauncherModel$6;-><init>(Landroid/content/ContentResolver;Lcom/android/launcher2/FolderInfo;)V

    .line 731
    .local v1, "r":Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/launcher2/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 732
    return-void
.end method

.method static deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/android/launcher2/ItemInfo;

    .prologue
    .line 657
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 658
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-wide v3, p1, Lcom/android/launcher2/ItemInfo;->id:J

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v2

    .line 660
    .local v2, "uriToDelete":Landroid/net/Uri;
    new-instance v1, Lcom/android/launcher2/LauncherModel$5;

    invoke-direct {v1, p1, v0, v2}, Lcom/android/launcher2/LauncherModel$5;-><init>(Lcom/android/launcher2/ItemInfo;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 700
    .local v1, "r":Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/launcher2/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 701
    return-void
.end method

.method private static findOrMakeFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/FolderInfo;
    .locals 2
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/FolderInfo;",
            ">;J)",
            "Lcom/android/launcher2/FolderInfo;"
        }
    .end annotation

    .prologue
    .line 2441
    .local p0, "folders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/FolderInfo;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderInfo;

    .line 2442
    .local v0, "folderInfo":Lcom/android/launcher2/FolderInfo;
    if-nez v0, :cond_0

    .line 2444
    new-instance v0, Lcom/android/launcher2/FolderInfo;

    .end local v0    # "folderInfo":Lcom/android/launcher2/FolderInfo;
    invoke-direct {v0}, Lcom/android/launcher2/FolderInfo;-><init>()V

    .line 2445
    .restart local v0    # "folderInfo":Lcom/android/launcher2/FolderInfo;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2447
    :cond_0
    return-object v0
.end method

.method private forceReload()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 823
    invoke-virtual {p0, v0, v0}, Lcom/android/launcher2/LauncherModel;->resetLoadedState(ZZ)V

    .line 828
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherModel;->startLoaderFromBackground()V

    .line 829
    return-void
.end method

.method public static final getAppNameComparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2451
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    .line 2452
    .local v0, "collator":Ljava/text/Collator;
    new-instance v1, Lcom/android/launcher2/LauncherModel$7;

    invoke-direct {v1, v0}, Lcom/android/launcher2/LauncherModel$7;-><init>(Ljava/text/Collator;)V

    return-object v1
.end method

.method static getCellCountX()I
    .locals 1

    .prologue
    .line 635
    sget v0, Lcom/android/launcher2/LauncherModel;->mCellCountX:I

    return v0
.end method

.method static getCellCountY()I
    .locals 1

    .prologue
    .line 639
    sget v0, Lcom/android/launcher2/LauncherModel;->mCellCountY:I

    return v0
.end method

.method static getCellLayoutChildId(JIIIII)I
    .locals 2
    .param p0, "container"    # J
    .param p2, "screen"    # I
    .param p3, "localCellX"    # I
    .param p4, "localCellY"    # I
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I

    .prologue
    .line 630
    long-to-int v0, p0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, p3, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p4, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method static getComponentNameFromResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .locals 3
    .param p0, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 2479
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    .line 2480
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2482
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static getItemsInLocalCoordinates(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 475
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 476
    .local v14, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 477
    .local v1, "cr":Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "itemType"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "container"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "screen"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "cellX"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "cellY"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "spanX"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "spanY"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 482
    .local v7, "c":Landroid/database/Cursor;
    const-string v2, "itemType"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 483
    .local v13, "itemTypeIndex":I
    const-string v2, "container"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 484
    .local v10, "containerIndex":I
    const-string v2, "screen"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 485
    .local v15, "screenIndex":I
    const-string v2, "cellX"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 486
    .local v8, "cellXIndex":I
    const-string v2, "cellY"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 487
    .local v9, "cellYIndex":I
    const-string v2, "spanX"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 488
    .local v16, "spanXIndex":I
    const-string v2, "spanY"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 491
    .local v17, "spanYIndex":I
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 492
    new-instance v12, Lcom/android/launcher2/ItemInfo;

    invoke-direct {v12}, Lcom/android/launcher2/ItemInfo;-><init>()V

    .line 493
    .local v12, "item":Lcom/android/launcher2/ItemInfo;
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v12, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 494
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v12, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 495
    move/from16 v0, v16

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v12, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 496
    move/from16 v0, v17

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v12, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 497
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v12, Lcom/android/launcher2/ItemInfo;->container:J

    .line 498
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v12, Lcom/android/launcher2/ItemInfo;->itemType:I

    .line 499
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v12, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 501
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 503
    .end local v12    # "item":Lcom/android/launcher2/ItemInfo;
    :catch_0
    move-exception v11

    .line 504
    .local v11, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 506
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 509
    .end local v11    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v14

    .line 506
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private getShortcutInfo(Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/android/launcher2/ShortcutInfo;
    .locals 11
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "iconTypeIndex"    # I
    .param p4, "iconPackageIndex"    # I
    .param p5, "iconResourceIndex"    # I
    .param p6, "iconIndex"    # I
    .param p7, "titleIndex"    # I

    .prologue
    .line 2205
    const/4 v1, 0x0

    .line 2206
    .local v1, "icon":Landroid/graphics/Bitmap;
    new-instance v4, Lcom/android/launcher2/ShortcutInfo;

    invoke-direct {v4}, Lcom/android/launcher2/ShortcutInfo;-><init>()V

    .line 2207
    .local v4, "info":Lcom/android/launcher2/ShortcutInfo;
    const/4 v9, 0x1

    iput v9, v4, Lcom/android/launcher2/ShortcutInfo;->itemType:I

    .line 2211
    move/from16 v0, p7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 2213
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 2214
    .local v2, "iconType":I
    packed-switch v2, :pswitch_data_0

    .line 2252
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2253
    const/4 v9, 0x1

    iput-boolean v9, v4, Lcom/android/launcher2/ShortcutInfo;->usingFallbackIcon:Z

    .line 2254
    const/4 v9, 0x0

    iput-boolean v9, v4, Lcom/android/launcher2/ShortcutInfo;->customIcon:Z

    .line 2257
    :cond_0
    :goto_0
    invoke-virtual {v4, v1}, Lcom/android/launcher2/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 2258
    return-object v4

    .line 2216
    :pswitch_0
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2217
    .local v6, "packageName":Ljava/lang/String;
    move/from16 v0, p5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2218
    .local v7, "resourceName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 2219
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v9, 0x0

    iput-boolean v9, v4, Lcom/android/launcher2/ShortcutInfo;->customIcon:Z

    .line 2222
    :try_start_0
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    .line 2223
    .local v8, "resources":Landroid/content/res/Resources;
    if-eqz v8, :cond_1

    .line 2224
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v7, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 2225
    .local v3, "id":I
    iget-object v9, p0, Lcom/android/launcher2/LauncherModel;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v9, v8, v3}, Lcom/android/launcher2/IconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-static {v9, p2}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2232
    .end local v3    # "id":I
    .end local v8    # "resources":Landroid/content/res/Resources;
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 2233
    move/from16 v0, p6

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher2/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2236
    :cond_2
    if-nez v1, :cond_0

    .line 2237
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2238
    const/4 v9, 0x1

    iput-boolean v9, v4, Lcom/android/launcher2/ShortcutInfo;->usingFallbackIcon:Z

    goto :goto_0

    .line 2242
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "resourceName":Ljava/lang/String;
    :pswitch_1
    move/from16 v0, p6

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher2/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2243
    if-nez v1, :cond_3

    .line 2244
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2245
    const/4 v9, 0x0

    iput-boolean v9, v4, Lcom/android/launcher2/ShortcutInfo;->customIcon:Z

    .line 2246
    const/4 v9, 0x1

    iput-boolean v9, v4, Lcom/android/launcher2/ShortcutInfo;->usingFallbackIcon:Z

    goto :goto_0

    .line 2248
    :cond_3
    const/4 v9, 0x1

    iput-boolean v9, v4, Lcom/android/launcher2/ShortcutInfo;->customIcon:Z

    goto :goto_0

    .line 2228
    .restart local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v6    # "packageName":Ljava/lang/String;
    .restart local v7    # "resourceName":Ljava/lang/String;
    :catch_0
    move-exception v9

    goto :goto_1

    .line 2214
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static final getWidgetNameComparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2471
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    .line 2472
    .local v0, "collator":Ljava/text/Collator;
    new-instance v1, Lcom/android/launcher2/LauncherModel$9;

    invoke-direct {v1, v0}, Lcom/android/launcher2/LauncherModel$9;-><init>(Ljava/text/Collator;)V

    return-object v1
.end method

.method static getWorkspaceShortcutItemInfosWithIntent(Landroid/content/Intent;)Ljava/util/ArrayList;
    .locals 8
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2184
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2185
    .local v3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    sget-object v6, Lcom/android/launcher2/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2186
    :try_start_0
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/ItemInfo;

    .line 2187
    .local v2, "info":Lcom/android/launcher2/ItemInfo;
    instance-of v5, v2, Lcom/android/launcher2/ShortcutInfo;

    if-eqz v5, :cond_0

    .line 2188
    move-object v0, v2

    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    move-object v4, v0

    .line 2189
    .local v4, "shortcut":Lcom/android/launcher2/ShortcutInfo;
    iget-object v5, v4, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2190
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2194
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Lcom/android/launcher2/ItemInfo;
    .end local v4    # "shortcut":Lcom/android/launcher2/ShortcutInfo;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2195
    return-object v3
.end method

.method static modifyItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIIIII)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/android/launcher2/ItemInfo;
    .param p2, "container"    # J
    .param p4, "screen"    # I
    .param p5, "cellX"    # I
    .param p6, "cellY"    # I
    .param p7, "spanX"    # I
    .param p8, "spanY"    # I

    .prologue
    .line 412
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DbDebug    Modify item ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/launcher2/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") in db, id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p1, Lcom/android/launcher2/ItemInfo;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p1, Lcom/android/launcher2/ItemInfo;->container:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/launcher2/ItemInfo;->screen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/launcher2/ItemInfo;->cellY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 415
    .local v0, "transaction":Ljava/lang/String;
    sget-object v2, Lcom/android/launcher2/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    const-string v2, "Launcher.Model"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iput p5, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 418
    iput p6, p1, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 419
    iput p7, p1, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 420
    iput p8, p1, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 424
    instance-of v2, p0, Lcom/android/launcher2/Launcher;

    if-eqz v2, :cond_0

    if-gez p4, :cond_0

    const-wide/16 v2, -0x65

    cmp-long v2, p2, v2

    if-nez v2, :cond_0

    move-object v2, p0

    .line 426
    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Lcom/android/launcher2/Hotseat;->getOrderInHotseat(II)I

    move-result v2

    iput v2, p1, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 431
    :goto_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 432
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "container"

    iget-wide v3, p1, Lcom/android/launcher2/ItemInfo;->container:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 433
    const-string v2, "cellX"

    iget v3, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 434
    const-string v2, "cellY"

    iget v3, p1, Lcom/android/launcher2/ItemInfo;->cellY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 435
    const-string v2, "spanX"

    iget v3, p1, Lcom/android/launcher2/ItemInfo;->spanX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 436
    const-string v2, "spanY"

    iget v3, p1, Lcom/android/launcher2/ItemInfo;->spanY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 437
    const-string v2, "screen"

    iget v3, p1, Lcom/android/launcher2/ItemInfo;->screen:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 439
    const-string v2, "modifyItemInDatabase"

    invoke-static {p0, v1, p1, v2}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/android/launcher2/ItemInfo;Ljava/lang/String;)V

    .line 440
    return-void

    .line 428
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_0
    iput p4, p1, Lcom/android/launcher2/ItemInfo;->screen:I

    goto :goto_0
.end method

.method static moveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIII)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/android/launcher2/ItemInfo;
    .param p2, "container"    # J
    .param p4, "screen"    # I
    .param p5, "cellX"    # I
    .param p6, "cellY"    # I

    .prologue
    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DbDebug    Modify item ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/launcher2/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") in db, id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p1, Lcom/android/launcher2/ItemInfo;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p1, Lcom/android/launcher2/ItemInfo;->container:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/launcher2/ItemInfo;->screen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/launcher2/ItemInfo;->cellY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, "transaction":Ljava/lang/String;
    sget-object v2, Lcom/android/launcher2/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    const-string v2, "Launcher.Model"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iput-wide p2, p1, Lcom/android/launcher2/ItemInfo;->container:J

    .line 386
    iput p5, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 387
    iput p6, p1, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 391
    instance-of v2, p0, Lcom/android/launcher2/Launcher;

    if-eqz v2, :cond_0

    if-gez p4, :cond_0

    const-wide/16 v2, -0x65

    cmp-long v2, p2, v2

    if-nez v2, :cond_0

    move-object v2, p0

    .line 393
    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Lcom/android/launcher2/Hotseat;->getOrderInHotseat(II)I

    move-result v2

    iput v2, p1, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 398
    :goto_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 399
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "container"

    iget-wide v3, p1, Lcom/android/launcher2/ItemInfo;->container:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 400
    const-string v2, "cellX"

    iget v3, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 401
    const-string v2, "cellY"

    iget v3, p1, Lcom/android/launcher2/ItemInfo;->cellY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 402
    const-string v2, "screen"

    iget v3, p1, Lcom/android/launcher2/ItemInfo;->screen:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 404
    const-string v2, "moveItemInDatabase"

    invoke-static {p0, v1, p1, v2}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/android/launcher2/ItemInfo;Ljava/lang/String;)V

    .line 405
    return-void

    .line 395
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_0
    iput p4, p1, Lcom/android/launcher2/ItemInfo;->screen:I

    goto :goto_0
.end method

.method private runOnMainThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;I)V

    .line 187
    return-void
.end method

.method private runOnMainThread(Ljava/lang/Runnable;I)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "type"    # I

    .prologue
    .line 189
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 195
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private static runOnWorkerThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 200
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 201
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_0
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static shortcutExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 457
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 458
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "title"

    aput-object v3, v2, v5

    const-string v3, "intent"

    aput-object v3, v2, v8

    const-string v3, "title=? and intent=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-virtual {p2, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 461
    .local v6, "c":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 463
    .local v7, "result":Z
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 465
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 467
    return v7

    .line 465
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private stopLoaderLocked()Z
    .locals 3

    .prologue
    .line 866
    const/4 v0, 0x0

    .line 867
    .local v0, "isLaunching":Z
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    .line 868
    .local v1, "oldTask":Lcom/android/launcher2/LauncherModel$LoaderTask;
    if-eqz v1, :cond_1

    .line 869
    invoke-virtual {v1}, Lcom/android/launcher2/LauncherModel$LoaderTask;->isLaunching()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 870
    const/4 v0, 0x1

    .line 872
    :cond_0
    invoke-virtual {v1}, Lcom/android/launcher2/LauncherModel$LoaderTask;->stopLocked()V

    .line 874
    :cond_1
    return v0
.end method

.method static updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/android/launcher2/ItemInfo;

    .prologue
    .line 446
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 447
    .local v0, "values":Landroid/content/ContentValues;
    invoke-virtual {p1, v0}, Lcom/android/launcher2/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 448
    iget v1, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    iget v2, p1, Lcom/android/launcher2/ItemInfo;->cellY:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/launcher2/ItemInfo;->updateValuesWithCoordinates(Landroid/content/ContentValues;II)V

    .line 449
    const-string v1, "updateItemInDatabase"

    invoke-static {p0, v0, p1, v1}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/android/launcher2/ItemInfo;Ljava/lang/String;)V

    .line 450
    return-void
.end method

.method static updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/android/launcher2/ItemInfo;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "item"    # Lcom/android/launcher2/ItemInfo;
    .param p3, "callingFunction"    # Ljava/lang/String;

    .prologue
    .line 323
    iget-wide v4, p2, Lcom/android/launcher2/ItemInfo;->id:J

    .line 324
    .local v4, "itemId":J
    const/4 v3, 0x0

    invoke-static {v4, v5, v3}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v2

    .line 325
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 327
    .local v1, "cr":Landroid/content/ContentResolver;
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    .line 328
    .local v7, "stackTrace":[Ljava/lang/StackTraceElement;
    new-instance v0, Lcom/android/launcher2/LauncherModel$3;

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/LauncherModel$3;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;JLcom/android/launcher2/ItemInfo;[Ljava/lang/StackTraceElement;)V

    .line 372
    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 373
    return-void
.end method

.method static updateWorkspaceLayoutCells(II)V
    .locals 0
    .param p0, "shortAxisCellCount"    # I
    .param p1, "longAxisCellCount"    # I

    .prologue
    .line 647
    sput p0, Lcom/android/launcher2/LauncherModel;->mCellCountX:I

    .line 648
    sput p1, Lcom/android/launcher2/LauncherModel;->mCellCountY:I

    .line 649
    return-void
.end method


# virtual methods
.method addShortcut(Landroid/content/Context;Landroid/content/Intent;JIIIZ)Lcom/android/launcher2/ShortcutInfo;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/content/Intent;
    .param p3, "container"    # J
    .param p5, "screen"    # I
    .param p6, "cellX"    # I
    .param p7, "cellY"    # I
    .param p8, "notify"    # Z

    .prologue
    .line 2279
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/LauncherModel;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v1

    .line 2280
    .local v1, "info":Lcom/android/launcher2/ShortcutInfo;
    if-nez v1, :cond_0

    .line 2281
    const/4 v1, 0x0

    .line 2285
    .end local v1    # "info":Lcom/android/launcher2/ShortcutInfo;
    :goto_0
    return-object v1

    .restart local v1    # "info":Lcom/android/launcher2/ShortcutInfo;
    :cond_0
    move-object v0, p1

    move-wide v2, p3

    move v4, p5

    move v5, p6

    move v6, p7

    move/from16 v7, p8

    .line 2283
    invoke-static/range {v0 .. v7}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIIIZ)V

    goto :goto_0
.end method

.method bindRemainingSynchronousPages()V
    .locals 4

    .prologue
    .line 905
    sget-object v2, Lcom/android/launcher2/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 906
    sget-object v2, Lcom/android/launcher2/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 907
    .local v1, "r":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 909
    .end local v1    # "r":Ljava/lang/Runnable;
    :cond_0
    sget-object v2, Lcom/android/launcher2/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 911
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public dumpState()V
    .locals 3

    .prologue
    .line 2552
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCallbacks="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2553
    const-string v0, "Launcher.Model"

    const-string v1, "mAllAppsList.data"

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mBgAllAppsList:Lcom/android/launcher2/AllAppsList;

    iget-object v2, v2, Lcom/android/launcher2/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/ApplicationInfo;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2554
    const-string v0, "Launcher.Model"

    const-string v1, "mAllAppsList.added"

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mBgAllAppsList:Lcom/android/launcher2/AllAppsList;

    iget-object v2, v2, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/ApplicationInfo;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2555
    const-string v0, "Launcher.Model"

    const-string v1, "mAllAppsList.removed"

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mBgAllAppsList:Lcom/android/launcher2/AllAppsList;

    iget-object v2, v2, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/ApplicationInfo;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2556
    const-string v0, "Launcher.Model"

    const-string v1, "mAllAppsList.modified"

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mBgAllAppsList:Lcom/android/launcher2/AllAppsList;

    iget-object v2, v2, Lcom/android/launcher2/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/ApplicationInfo;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2557
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    if-eqz v0, :cond_0

    .line 2558
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->dumpState()V

    .line 2562
    :goto_0
    return-void

    .line 2560
    :cond_0
    const-string v0, "Launcher.Model"

    const-string v1, "mLoaderTask=null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method enqueuePackageUpdated(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V
    .locals 1
    .param p1, "task"    # Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    .prologue
    .line 1956
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1957
    return-void
.end method

.method findAppWidgetProviderInfoWithComponent(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 2293
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v2

    .line 2295
    .local v2, "widgets":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetProviderInfo;

    .line 2296
    .local v1, "info":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v3, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2300
    .end local v1    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFallbackIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mDefaultIcon:Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method getFolderById(Landroid/content/Context;Ljava/util/HashMap;J)Lcom/android/launcher2/FolderInfo;
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/FolderInfo;",
            ">;J)",
            "Lcom/android/launcher2/FolderInfo;"
        }
    .end annotation

    .prologue
    .line 516
    .local p2, "folderList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/FolderInfo;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 517
    .local v2, "cr":Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "_id=? and (itemType=? or itemType=?)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x1

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 523
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 524
    const-string v3, "itemType"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 525
    .local v13, "itemTypeIndex":I
    const-string v3, "title"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 526
    .local v15, "titleIndex":I
    const-string v3, "container"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 527
    .local v11, "containerIndex":I
    const-string v3, "screen"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 528
    .local v14, "screenIndex":I
    const-string v3, "cellX"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 529
    .local v9, "cellXIndex":I
    const-string v3, "cellY"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 531
    .local v10, "cellYIndex":I
    const/4 v12, 0x0

    .line 532
    .local v12, "folderInfo":Lcom/android/launcher2/FolderInfo;
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 538
    :goto_0
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v12, Lcom/android/launcher2/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 539
    move-wide/from16 v0, p3

    iput-wide v0, v12, Lcom/android/launcher2/FolderInfo;->id:J

    .line 540
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v12, Lcom/android/launcher2/FolderInfo;->container:J

    .line 541
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/android/launcher2/FolderInfo;->screen:I

    .line 542
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/android/launcher2/FolderInfo;->cellX:I

    .line 543
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/android/launcher2/FolderInfo;->cellY:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 551
    .end local v9    # "cellXIndex":I
    .end local v10    # "cellYIndex":I
    .end local v11    # "containerIndex":I
    .end local v12    # "folderInfo":Lcom/android/launcher2/FolderInfo;
    .end local v13    # "itemTypeIndex":I
    .end local v14    # "screenIndex":I
    .end local v15    # "titleIndex":I
    :goto_1
    return-object v12

    .line 534
    .restart local v9    # "cellXIndex":I
    .restart local v10    # "cellYIndex":I
    .restart local v11    # "containerIndex":I
    .restart local v12    # "folderInfo":Lcom/android/launcher2/FolderInfo;
    .restart local v13    # "itemTypeIndex":I
    .restart local v14    # "screenIndex":I
    .restart local v15    # "titleIndex":I
    :pswitch_0
    :try_start_1
    invoke-static/range {p2 .. p4}, Lcom/android/launcher2/LauncherModel;->findOrMakeFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/FolderInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v12

    goto :goto_0

    .line 548
    .end local v9    # "cellXIndex":I
    .end local v10    # "cellYIndex":I
    .end local v11    # "containerIndex":I
    .end local v12    # "folderInfo":Lcom/android/launcher2/FolderInfo;
    .end local v13    # "itemTypeIndex":I
    .end local v14    # "screenIndex":I
    .end local v15    # "titleIndex":I
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 551
    const/4 v12, 0x0

    goto :goto_1

    .line 548
    :catchall_0
    move-exception v3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v3

    .line 532
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "iconIndex"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 2263
    const/4 v1, 0x0

    .line 2268
    .local v1, "debug":Z
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 2270
    .local v0, "data":[B
    const/4 v3, 0x0

    :try_start_0
    array-length v4, v0

    invoke-static {v0, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3, p3}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2273
    :goto_0
    return-object v3

    .line 2272
    :catch_0
    move-exception v2

    .line 2273
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;)Lcom/android/launcher2/ShortcutInfo;
    .locals 8
    .param p1, "manager"    # Landroid/content/pm/PackageManager;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 2082
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, v5

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;IILjava/util/HashMap;)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v0

    return-object v0
.end method

.method public getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;IILjava/util/HashMap;)Lcom/android/launcher2/ShortcutInfo;
    .locals 20
    .param p1, "manager"    # Landroid/content/pm/PackageManager;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "c"    # Landroid/database/Cursor;
    .param p5, "iconIndex"    # I
    .param p6, "titleIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/Intent;",
            "Landroid/content/Context;",
            "Landroid/database/Cursor;",
            "II",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lcom/android/launcher2/ShortcutInfo;"
        }
    .end annotation

    .prologue
    .line 2092
    .local p7, "labelCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/CharSequence;>;"
    const/4 v9, 0x0

    .line 2093
    .local v9, "icon":Landroid/graphics/Bitmap;
    new-instance v10, Lcom/android/launcher2/ShortcutInfo;

    invoke-direct {v10}, Lcom/android/launcher2/ShortcutInfo;-><init>()V

    .line 2095
    .local v10, "info":Lcom/android/launcher2/ShortcutInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 2096
    .local v5, "componentName":Landroid/content/ComponentName;
    if-nez v5, :cond_0

    .line 2097
    const/4 v10, 0x0

    .line 2177
    .end local v10    # "info":Lcom/android/launcher2/ShortcutInfo;
    :goto_0
    return-object v10

    .line 2101
    .restart local v10    # "info":Lcom/android/launcher2/ShortcutInfo;
    :cond_0
    :try_start_0
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15

    .line 2102
    .local v15, "pi":Landroid/content/pm/PackageInfo;
    iget-object v0, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    move/from16 v17, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v17, :cond_1

    .line 2105
    const/4 v10, 0x0

    goto :goto_0

    .line 2107
    .end local v15    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v6

    .line 2108
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v17, "Launcher.Model"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "getPackInfo failed for package "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2122
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const/16 v16, 0x0

    .line 2123
    .local v16, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    .line 2124
    .local v14, "oldComponent":Landroid/content/ComponentName;
    new-instance v13, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2125
    .local v13, "newIntent":Landroid/content/Intent;
    const-string v17, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2126
    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2127
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    .line 2128
    .local v11, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 2129
    .local v7, "i":Landroid/content/pm/ResolveInfo;
    new-instance v4, Landroid/content/ComponentName;

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2131
    .local v4, "cn":Landroid/content/ComponentName;
    invoke-virtual {v4, v14}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 2132
    move-object/from16 v16, v7

    goto :goto_1

    .line 2135
    .end local v4    # "cn":Landroid/content/ComponentName;
    .end local v7    # "i":Landroid/content/pm/ResolveInfo;
    :cond_3
    if-nez v16, :cond_4

    .line 2136
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v16

    .line 2138
    :cond_4
    if-eqz v16, :cond_5

    .line 2139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mIconCache:Lcom/android/launcher2/IconCache;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move-object/from16 v2, p7

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/launcher2/IconCache;->getIcon(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;Ljava/util/HashMap;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 2142
    :cond_5
    if-nez v9, :cond_6

    .line 2143
    if-eqz p4, :cond_6

    .line 2144
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p5

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 2148
    :cond_6
    if-nez v9, :cond_7

    .line 2149
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v9

    .line 2150
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v10, Lcom/android/launcher2/ShortcutInfo;->usingFallbackIcon:Z

    .line 2152
    :cond_7
    invoke-virtual {v10, v9}, Lcom/android/launcher2/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 2155
    if-eqz v16, :cond_8

    .line 2156
    invoke-static/range {v16 .. v16}, Lcom/android/launcher2/LauncherModel;->getComponentNameFromResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v12

    .line 2157
    .local v12, "key":Landroid/content/ComponentName;
    if-eqz p7, :cond_b

    move-object/from16 v0, p7

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 2158
    move-object/from16 v0, p7

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/CharSequence;

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 2167
    .end local v12    # "key":Landroid/content/ComponentName;
    :cond_8
    :goto_2
    iget-object v0, v10, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    if-nez v17, :cond_9

    .line 2168
    if-eqz p4, :cond_9

    .line 2169
    move-object/from16 v0, p4

    move/from16 v1, p6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 2173
    :cond_9
    iget-object v0, v10, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    if-nez v17, :cond_a

    .line 2174
    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 2176
    :cond_a
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v10, Lcom/android/launcher2/ShortcutInfo;->itemType:I

    goto/16 :goto_0

    .line 2160
    .restart local v12    # "key":Landroid/content/ComponentName;
    :cond_b
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 2161
    if-eqz p7, :cond_8

    .line 2162
    iget-object v0, v10, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, p7

    move-object/from16 v1, v17

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/android/launcher2/ShortcutInfo;
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/content/Intent;
    .param p3, "fallbackIcon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 2342
    const-string v13, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 2343
    .local v9, "intent":Landroid/content/Intent;
    const-string v13, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2344
    .local v10, "name":Ljava/lang/String;
    const-string v13, "android.intent.extra.shortcut.ICON"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 2346
    .local v1, "bitmap":Landroid/os/Parcelable;
    if-nez v9, :cond_0

    .line 2348
    const-string v13, "Launcher.Model"

    const-string v14, "Can\'t construct ShorcutInfo with null intent"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2349
    const/4 v8, 0x0

    .line 2393
    .end local v1    # "bitmap":Landroid/os/Parcelable;
    :goto_0
    return-object v8

    .line 2352
    .restart local v1    # "bitmap":Landroid/os/Parcelable;
    :cond_0
    const/4 v5, 0x0

    .line 2353
    .local v5, "icon":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 2354
    .local v2, "customIcon":Z
    const/4 v6, 0x0

    .line 2356
    .local v6, "iconResource":Landroid/content/Intent$ShortcutIconResource;
    if-eqz v1, :cond_3

    instance-of v13, v1, Landroid/graphics/Bitmap;

    if-eqz v13, :cond_3

    .line 2357
    new-instance v13, Lcom/android/launcher2/FastBitmapDrawable;

    check-cast v1, Landroid/graphics/Bitmap;

    .end local v1    # "bitmap":Landroid/os/Parcelable;
    invoke-direct {v13, v1}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p1

    invoke-static {v13, v0}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2358
    const/4 v2, 0x1

    .line 2376
    :cond_1
    :goto_1
    new-instance v8, Lcom/android/launcher2/ShortcutInfo;

    invoke-direct {v8}, Lcom/android/launcher2/ShortcutInfo;-><init>()V

    .line 2378
    .local v8, "info":Lcom/android/launcher2/ShortcutInfo;
    if-nez v5, :cond_2

    .line 2379
    if-eqz p3, :cond_4

    .line 2380
    move-object/from16 v5, p3

    .line 2386
    :cond_2
    :goto_2
    invoke-virtual {v8, v5}, Lcom/android/launcher2/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 2388
    iput-object v10, v8, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 2389
    iput-object v9, v8, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 2390
    iput-boolean v2, v8, Lcom/android/launcher2/ShortcutInfo;->customIcon:Z

    .line 2391
    iput-object v6, v8, Lcom/android/launcher2/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    goto :goto_0

    .line 2360
    .end local v8    # "info":Lcom/android/launcher2/ShortcutInfo;
    .restart local v1    # "bitmap":Landroid/os/Parcelable;
    :cond_3
    const-string v13, "android.intent.extra.shortcut.ICON_RESOURCE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .line 2361
    .local v4, "extra":Landroid/os/Parcelable;
    if-eqz v4, :cond_1

    instance-of v13, v4, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v13, :cond_1

    .line 2363
    :try_start_0
    move-object v0, v4

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    move-object v6, v0

    .line 2364
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 2365
    .local v11, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v13, v6, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v13}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v12

    .line 2367
    .local v12, "resources":Landroid/content/res/Resources;
    iget-object v13, v6, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 2368
    .local v7, "id":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/LauncherModel;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v13, v12, v7}, Lcom/android/launcher2/IconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-static {v13, v0}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_1

    .line 2370
    .end local v7    # "id":I
    .end local v11    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v12    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v3

    .line 2371
    .local v3, "e":Ljava/lang/Exception;
    const-string v13, "Launcher.Model"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Could not load shortcut icon: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2382
    .end local v1    # "bitmap":Landroid/os/Parcelable;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "extra":Landroid/os/Parcelable;
    .restart local v8    # "info":Lcom/android/launcher2/ShortcutInfo;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2383
    const/4 v13, 0x1

    iput-boolean v13, v8, Lcom/android/launcher2/ShortcutInfo;->usingFallbackIcon:Z

    goto :goto_2
.end method

.method public initialize(Lcom/android/launcher2/LauncherModel$Callbacks;)V
    .locals 2
    .param p1, "callbacks"    # Lcom/android/launcher2/LauncherModel$Callbacks;

    .prologue
    .line 738
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 739
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    .line 740
    monitor-exit v1

    .line 741
    return-void

    .line 740
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isAllAppsLoaded()Z
    .locals 1

    .prologue
    .line 922
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsLoaded:Z

    return v0
.end method

.method isLoadingWorkspace()Z
    .locals 2

    .prologue
    .line 926
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 927
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->isLoadingWorkspace()Z

    move-result v0

    monitor-exit v1

    .line 931
    :goto_0
    return v0

    .line 930
    :cond_0
    monitor-exit v1

    .line 931
    const/4 v0, 0x0

    goto :goto_0

    .line 930
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 751
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 753
    .local v0, "action":Ljava/lang/String;
    const-string v7, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 756
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 757
    .local v4, "packageName":Ljava/lang/String;
    const-string v7, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 759
    .local v6, "replacing":Z
    const/4 v3, 0x0

    .line 761
    .local v3, "op":I
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    .line 820
    .end local v3    # "op":I
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v6    # "replacing":Z
    :cond_1
    :goto_0
    return-void

    .line 766
    .restart local v3    # "op":I
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v6    # "replacing":Z
    :cond_2
    const-string v7, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 767
    const/4 v3, 0x2

    .line 782
    :cond_3
    :goto_1
    if-eqz v3, :cond_1

    .line 783
    new-instance v7, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    new-array v8, v8, [Ljava/lang/String;

    aput-object v4, v8, v9

    invoke-direct {v7, p0, v3, v8}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher2/LauncherModel;I[Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/android/launcher2/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V

    goto :goto_0

    .line 768
    :cond_4
    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 769
    if-nez v6, :cond_3

    .line 770
    const/4 v3, 0x3

    goto :goto_1

    .line 774
    :cond_5
    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 775
    if-nez v6, :cond_6

    .line 776
    const/4 v3, 0x1

    goto :goto_1

    .line 778
    :cond_6
    const/4 v3, 0x2

    goto :goto_1

    .line 786
    .end local v3    # "op":I
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v6    # "replacing":Z
    :cond_7
    const-string v7, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 788
    const-string v7, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 789
    .local v5, "packages":[Ljava/lang/String;
    new-instance v7, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    invoke-direct {v7, p0, v8, v5}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher2/LauncherModel;I[Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/android/launcher2/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V

    .line 791
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherModel;->startLoaderFromBackground()V

    goto :goto_0

    .line 792
    .end local v5    # "packages":[Ljava/lang/String;
    :cond_8
    const-string v7, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 793
    const-string v7, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 794
    .restart local v5    # "packages":[Ljava/lang/String;
    new-instance v7, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    const/4 v8, 0x4

    invoke-direct {v7, p0, v8, v5}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher2/LauncherModel;I[Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/android/launcher2/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V

    goto :goto_0

    .line 796
    .end local v5    # "packages":[Ljava/lang/String;
    :cond_9
    const-string v7, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 798
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel;->forceReload()V

    goto :goto_0

    .line 799
    :cond_a
    const-string v7, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 803
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 804
    .local v2, "currentConfig":Landroid/content/res/Configuration;
    iget v7, p0, Lcom/android/launcher2/LauncherModel;->mPreviousConfigMcc:I

    iget v8, v2, Landroid/content/res/Configuration;->mcc:I

    if-eq v7, v8, :cond_b

    .line 805
    const-string v7, "Launcher.Model"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Reload apps on config change. curr_mcc:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " prevmcc:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/launcher2/LauncherModel;->mPreviousConfigMcc:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel;->forceReload()V

    .line 810
    :cond_b
    iget v7, v2, Landroid/content/res/Configuration;->mcc:I

    iput v7, p0, Lcom/android/launcher2/LauncherModel;->mPreviousConfigMcc:I

    goto/16 :goto_0

    .line 811
    .end local v2    # "currentConfig":Landroid/content/res/Configuration;
    :cond_c
    const-string v7, "android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    const-string v7, "android.search.action.SEARCHABLES_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 813
    :cond_d
    iget-object v7, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_1

    .line 814
    iget-object v7, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/LauncherModel$Callbacks;

    .line 815
    .local v1, "callbacks":Lcom/android/launcher2/LauncherModel$Callbacks;
    if-eqz v1, :cond_1

    .line 816
    invoke-interface {v1}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindSearchablesChanged()V

    goto/16 :goto_0
.end method

.method queueIconToBeChecked(Ljava/util/HashMap;Lcom/android/launcher2/ShortcutInfo;Landroid/database/Cursor;I)Z
    .locals 2
    .param p2, "info"    # Lcom/android/launcher2/ShortcutInfo;
    .param p3, "c"    # Landroid/database/Cursor;
    .param p4, "iconIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "[B>;",
            "Lcom/android/launcher2/ShortcutInfo;",
            "Landroid/database/Cursor;",
            "I)Z"
        }
    .end annotation

    .prologue
    .local p1, "cache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;[B>;"
    const/4 v0, 0x0

    .line 2399
    iget-boolean v1, p0, Lcom/android/launcher2/LauncherModel;->mAppsCanBeOnExternalStorage:Z

    if-nez v1, :cond_1

    .line 2412
    :cond_0
    :goto_0
    return v0

    .line 2408
    :cond_1
    iget-boolean v1, p2, Lcom/android/launcher2/ShortcutInfo;->customIcon:Z

    if-nez v1, :cond_0

    iget-boolean v1, p2, Lcom/android/launcher2/ShortcutInfo;->usingFallbackIcon:Z

    if-nez v1, :cond_0

    .line 2409
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2410
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public resetLoadedState(ZZ)V
    .locals 2
    .param p1, "resetAllAppsLoaded"    # Z
    .param p2, "resetWorkspaceLoaded"    # Z

    .prologue
    .line 832
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 835
    :try_start_0
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel;->stopLoaderLocked()Z

    .line 836
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsLoaded:Z

    .line 837
    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z

    .line 838
    :cond_1
    monitor-exit v1

    .line 839
    return-void

    .line 838
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method resolveWidgetsForMimeType(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/InstallWidgetReceiver$WidgetMimeTypeHandlerData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2307
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 2308
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2311
    .local v7, "supportedConfigurationActivities":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/InstallWidgetReceiver$WidgetMimeTypeHandlerData;>;"
    new-instance v8, Landroid/content/Intent;

    const-string v10, "com.android.launcher.action.SUPPORTS_CLIPDATA_MIMETYPE"

    invoke-direct {v8, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2313
    .local v8, "supportsIntent":Landroid/content/Intent;
    invoke-virtual {v8, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2316
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v9

    .line 2318
    .local v9, "widgets":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2320
    .local v2, "configurationComponentToWidget":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/appwidget/AppWidgetProviderInfo;

    .line 2321
    .local v4, "info":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v10, v4, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v2, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2326
    .end local v4    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_0
    const/high16 v10, 0x10000

    invoke-virtual {v6, v8, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 2328
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 2329
    .local v4, "info":Landroid/content/pm/ResolveInfo;
    iget-object v1, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2330
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    new-instance v5, Landroid/content/ComponentName;

    iget-object v10, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2332
    .local v5, "infoComponent":Landroid/content/ComponentName;
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2333
    new-instance v11, Lcom/android/launcher2/InstallWidgetReceiver$WidgetMimeTypeHandlerData;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v11, v4, v10}, Lcom/android/launcher2/InstallWidgetReceiver$WidgetMimeTypeHandlerData;-><init>(Landroid/content/pm/ResolveInfo;Landroid/appwidget/AppWidgetProviderInfo;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2338
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "info":Landroid/content/pm/ResolveInfo;
    .end local v5    # "infoComponent":Landroid/content/ComponentName;
    :cond_2
    return-object v7
.end method

.method public startLoader(ZI)V
    .locals 3
    .param p1, "isLaunching"    # Z
    .param p2, "synchronousBindPage"    # I

    .prologue
    .line 878
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 885
    :try_start_0
    sget-object v0, Lcom/android/launcher2/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 888
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 891
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel;->stopLoaderLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 p1, 0x1

    .line 892
    :goto_0
    new-instance v0, Lcom/android/launcher2/LauncherModel$LoaderTask;

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-direct {v0, p0, v2, p1}, Lcom/android/launcher2/LauncherModel$LoaderTask;-><init>(Lcom/android/launcher2/LauncherModel;Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    .line 893
    const/4 v0, -0x1

    if-le p2, v0, :cond_3

    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsLoaded:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z

    if-eqz v0, :cond_3

    .line 894
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    invoke-virtual {v0, p2}, Lcom/android/launcher2/LauncherModel$LoaderTask;->runBindSynchronousPage(I)V

    .line 900
    :cond_1
    :goto_1
    monitor-exit v1

    .line 901
    return-void

    .line 891
    :cond_2
    const/4 p1, 0x0

    goto :goto_0

    .line 896
    :cond_3
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 897
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 900
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startLoaderFromBackground()V
    .locals 4

    .prologue
    .line 848
    const/4 v1, 0x0

    .line 849
    .local v1, "runLoader":Z
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 850
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherModel$Callbacks;

    .line 851
    .local v0, "callbacks":Lcom/android/launcher2/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    .line 853
    invoke-interface {v0}, Lcom/android/launcher2/LauncherModel$Callbacks;->setLoadOnResume()Z

    move-result v2

    if-nez v2, :cond_0

    .line 854
    const/4 v1, 0x1

    .line 858
    .end local v0    # "callbacks":Lcom/android/launcher2/LauncherModel$Callbacks;
    :cond_0
    if-eqz v1, :cond_1

    .line 859
    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/LauncherModel;->startLoader(ZI)V

    .line 861
    :cond_1
    return-void
.end method

.method public stopLoader()V
    .locals 2

    .prologue
    .line 914
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 915
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    if-eqz v0, :cond_0

    .line 916
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->stopLocked()V

    .line 918
    :cond_0
    monitor-exit v1

    .line 919
    return-void

    .line 918
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unbindItemInfosAndClearQueuedBindRunnables()V
    .locals 2

    .prologue
    .line 213
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 214
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expected unbindLauncherItemInfos() to be called from the main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_0
    sget-object v0, Lcom/android/launcher2/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 221
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DeferredHandler;->cancelAllRunnablesOfType(I)V

    .line 223
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherModel;->unbindWorkspaceItemsOnMainThread()V

    .line 224
    return-void
.end method

.method unbindWorkspaceItemsOnMainThread()V
    .locals 5

    .prologue
    .line 230
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v2, "tmpWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v1, "tmpAppWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v4

    .line 233
    :try_start_0
    sget-object v3, Lcom/android/launcher2/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 234
    sget-object v3, Lcom/android/launcher2/LauncherModel;->sBgAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 235
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    new-instance v0, Lcom/android/launcher2/LauncherModel$1;

    invoke-direct {v0, p0, v2, v1}, Lcom/android/launcher2/LauncherModel$1;-><init>(Lcom/android/launcher2/LauncherModel;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 247
    .local v0, "r":Ljava/lang/Runnable;
    invoke-direct {p0, v0}, Lcom/android/launcher2/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 248
    return-void

    .line 235
    .end local v0    # "r":Ljava/lang/Runnable;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method updateSavedIcon(Landroid/content/Context;Lcom/android/launcher2/ShortcutInfo;[B)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/android/launcher2/ShortcutInfo;
    .param p3, "data"    # [B

    .prologue
    const/4 v4, 0x0

    .line 2415
    const/4 v2, 0x0

    .line 2417
    .local v2, "needSave":Z
    if-eqz p3, :cond_2

    .line 2418
    const/4 v5, 0x0

    :try_start_0
    array-length v6, p3

    invoke-static {p3, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2419
    .local v3, "saved":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/android/launcher2/LauncherModel;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {p2, v5}, Lcom/android/launcher2/ShortcutInfo;->getIcon(Lcom/android/launcher2/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2420
    .local v1, "loaded":Landroid/graphics/Bitmap;
    invoke-virtual {v3, v1}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_1

    const/4 v2, 0x1

    .line 2427
    .end local v1    # "loaded":Landroid/graphics/Bitmap;
    .end local v3    # "saved":Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v2, :cond_0

    .line 2428
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "going to save icon bitmap for info="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2431
    invoke-static {p1, p2}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)V

    .line 2433
    :cond_0
    return-void

    .restart local v1    # "loaded":Landroid/graphics/Bitmap;
    .restart local v3    # "saved":Landroid/graphics/Bitmap;
    :cond_1
    move v2, v4

    .line 2420
    goto :goto_0

    .line 2422
    .end local v1    # "loaded":Landroid/graphics/Bitmap;
    .end local v3    # "saved":Landroid/graphics/Bitmap;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 2424
    :catch_0
    move-exception v0

    .line 2425
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    goto :goto_0
.end method

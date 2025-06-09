.class Lcom/android/launcher2/LauncherModel$LoaderTask;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderTask"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsLaunching:Z

.field private mIsLoadingAndBindingWorkspace:Z

.field private mLabelCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadAndBindStepFinished:Z

.field private mStopped:Z

.field final synthetic this$0:Lcom/android/launcher2/LauncherModel;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel;Landroid/content/Context;Z)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "isLaunching"    # Z

    .prologue
    .line 949
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 950
    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 951
    iput-boolean p3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsLaunching:Z

    .line 952
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mLabelCache:Ljava/util/HashMap;

    .line 953
    return-void
.end method

.method static synthetic access$102(Lcom/android/launcher2/LauncherModel$LoaderTask;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/LauncherModel$LoaderTask;
    .param p1, "x1"    # Z

    .prologue
    .line 940
    iput-boolean p1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mLoadAndBindStepFinished:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/android/launcher2/LauncherModel$LoaderTask;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/LauncherModel$LoaderTask;
    .param p1, "x1"    # Z

    .prologue
    .line 940
    iput-boolean p1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsLoadingAndBindingWorkspace:Z

    return p1
.end method

.method private bindWorkspace(I)V
    .locals 26
    .param p1, "synchronizeBindPage"    # I

    .prologue
    .line 1674
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v23

    .line 1679
    .local v23, "t":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$600(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/LauncherModel$Callbacks;

    .line 1680
    .local v11, "oldCallbacks":Lcom/android/launcher2/LauncherModel$Callbacks;
    if-nez v11, :cond_0

    .line 1682
    const-string v4, "Launcher.Model"

    const-string v10, "LoaderTask running with no launcher"

    invoke-static {v4, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    :goto_0
    return-void

    .line 1686
    :cond_0
    const/4 v4, -0x1

    move/from16 v0, p1

    if-le v0, v4, :cond_2

    const/16 v21, 0x1

    .line 1687
    .local v21, "isLoadingSynchronously":Z
    :goto_1
    if-eqz v21, :cond_3

    move/from16 v5, p1

    .line 1692
    .local v5, "currentScreen":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherModel;->unbindWorkspaceItemsOnMainThread()V

    .line 1693
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 1694
    .local v25, "workspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 1696
    .local v20, "appWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/LauncherAppWidgetInfo;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1697
    .local v7, "folders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/FolderInfo;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1698
    .local v6, "itemsIdMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/ItemInfo;>;"
    sget-object v10, Lcom/android/launcher2/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1699
    :try_start_0
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1700
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sBgAppWidgets:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1701
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sBgFolders:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1702
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sBgItemsIdMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1703
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1705
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1706
    .local v12, "currentWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1707
    .local v16, "otherWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1709
    .local v13, "currentAppWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/LauncherAppWidgetInfo;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1711
    .local v17, "otherAppWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/LauncherAppWidgetInfo;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1712
    .local v8, "currentFolders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/FolderInfo;>;"
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 1715
    .local v9, "otherFolders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/FolderInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v16

    invoke-direct {v0, v5, v1, v12, v2}, Lcom/android/launcher2/LauncherModel$LoaderTask;->filterCurrentWorkspaceItems(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1717
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-direct {v0, v5, v1, v13, v2}, Lcom/android/launcher2/LauncherModel$LoaderTask;->filterCurrentAppWidgets(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v4, p0

    .line 1719
    invoke-direct/range {v4 .. v9}, Lcom/android/launcher2/LauncherModel$LoaderTask;->filterCurrentFolders(ILjava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 1721
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/launcher2/LauncherModel$LoaderTask;->sortWorkspaceItemsSpatially(Ljava/util/ArrayList;)V

    .line 1722
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/launcher2/LauncherModel$LoaderTask;->sortWorkspaceItemsSpatially(Ljava/util/ArrayList;)V

    .line 1725
    new-instance v22, Lcom/android/launcher2/LauncherModel$LoaderTask$7;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/android/launcher2/LauncherModel$LoaderTask$7;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    .line 1733
    .local v22, "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v10, 0x1

    move-object/from16 v0, v22

    invoke-static {v4, v0, v10}, Lcom/android/launcher2/LauncherModel;->access$1300(Lcom/android/launcher2/LauncherModel;Ljava/lang/Runnable;I)V

    .line 1736
    const/4 v15, 0x0

    move-object/from16 v10, p0

    move-object v14, v8

    invoke-direct/range {v10 .. v15}, Lcom/android/launcher2/LauncherModel$LoaderTask;->bindWorkspaceItems(Lcom/android/launcher2/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    .line 1738
    if-eqz v21, :cond_1

    .line 1739
    new-instance v22, Lcom/android/launcher2/LauncherModel$LoaderTask$8;

    .end local v22    # "r":Ljava/lang/Runnable;
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11, v5}, Lcom/android/launcher2/LauncherModel$LoaderTask$8;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/LauncherModel$Callbacks;I)V

    .line 1747
    .restart local v22    # "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v10, 0x1

    move-object/from16 v0, v22

    invoke-static {v4, v0, v10}, Lcom/android/launcher2/LauncherModel;->access$1300(Lcom/android/launcher2/LauncherModel;Ljava/lang/Runnable;I)V

    .line 1752
    :cond_1
    sget-object v4, Lcom/android/launcher2/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1753
    if-eqz v21, :cond_4

    sget-object v19, Lcom/android/launcher2/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    :goto_3
    move-object/from16 v14, p0

    move-object v15, v11

    move-object/from16 v18, v9

    invoke-direct/range {v14 .. v19}, Lcom/android/launcher2/LauncherModel$LoaderTask;->bindWorkspaceItems(Lcom/android/launcher2/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    .line 1757
    new-instance v22, Lcom/android/launcher2/LauncherModel$LoaderTask$9;

    .end local v22    # "r":Ljava/lang/Runnable;
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-wide/from16 v2, v23

    invoke-direct {v0, v1, v11, v2, v3}, Lcom/android/launcher2/LauncherModel$LoaderTask$9;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/LauncherModel$Callbacks;J)V

    .line 1773
    .restart local v22    # "r":Ljava/lang/Runnable;
    if-eqz v21, :cond_5

    .line 1774
    sget-object v4, Lcom/android/launcher2/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1686
    .end local v5    # "currentScreen":I
    .end local v6    # "itemsIdMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/ItemInfo;>;"
    .end local v7    # "folders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/FolderInfo;>;"
    .end local v8    # "currentFolders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/FolderInfo;>;"
    .end local v9    # "otherFolders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/FolderInfo;>;"
    .end local v12    # "currentWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    .end local v13    # "currentAppWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/LauncherAppWidgetInfo;>;"
    .end local v16    # "otherWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    .end local v17    # "otherAppWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/LauncherAppWidgetInfo;>;"
    .end local v20    # "appWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/LauncherAppWidgetInfo;>;"
    .end local v21    # "isLoadingSynchronously":Z
    .end local v22    # "r":Ljava/lang/Runnable;
    .end local v25    # "workspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    :cond_2
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 1687
    .restart local v21    # "isLoadingSynchronously":Z
    :cond_3
    invoke-interface {v11}, Lcom/android/launcher2/LauncherModel$Callbacks;->getCurrentWorkspaceScreen()I

    move-result v5

    goto/16 :goto_2

    .line 1703
    .restart local v5    # "currentScreen":I
    .restart local v6    # "itemsIdMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/ItemInfo;>;"
    .restart local v7    # "folders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/FolderInfo;>;"
    .restart local v20    # "appWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/LauncherAppWidgetInfo;>;"
    .restart local v25    # "workspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 1753
    .restart local v8    # "currentFolders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/FolderInfo;>;"
    .restart local v9    # "otherFolders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/FolderInfo;>;"
    .restart local v12    # "currentWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    .restart local v13    # "currentAppWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/LauncherAppWidgetInfo;>;"
    .restart local v16    # "otherWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    .restart local v17    # "otherAppWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/LauncherAppWidgetInfo;>;"
    .restart local v22    # "r":Ljava/lang/Runnable;
    :cond_4
    const/16 v19, 0x0

    goto :goto_3

    .line 1776
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v10, 0x1

    move-object/from16 v0, v22

    invoke-static {v4, v0, v10}, Lcom/android/launcher2/LauncherModel;->access$1300(Lcom/android/launcher2/LauncherModel;Ljava/lang/Runnable;I)V

    goto/16 :goto_0
.end method

.method private bindWorkspaceItems(Lcom/android/launcher2/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 10
    .param p1, "oldCallbacks"    # Lcom/android/launcher2/LauncherModel$Callbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/LauncherModel$Callbacks;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/LauncherAppWidgetInfo;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/FolderInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1610
    .local p2, "workspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    .local p3, "appWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/LauncherAppWidgetInfo;>;"
    .local p4, "folders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/FolderInfo;>;"
    .local p5, "deferredBindRunnables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    if-eqz p5, :cond_0

    const/4 v8, 0x1

    .line 1613
    .local v8, "postOnMainThread":Z
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1614
    .local v6, "N":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v6, :cond_3

    .line 1615
    move v4, v7

    .line 1616
    .local v4, "start":I
    add-int/lit8 v1, v7, 0x6

    if-gt v1, v6, :cond_1

    const/4 v5, 0x6

    .line 1617
    .local v5, "chunkSize":I
    :goto_2
    new-instance v0, Lcom/android/launcher2/LauncherModel$LoaderTask$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/LauncherModel$LoaderTask$4;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/LauncherModel$Callbacks;Ljava/util/ArrayList;II)V

    .line 1626
    .local v0, "r":Ljava/lang/Runnable;
    if-eqz v8, :cond_2

    .line 1627
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1614
    :goto_3
    add-int/lit8 v7, v7, 0x6

    goto :goto_1

    .line 1610
    .end local v0    # "r":Ljava/lang/Runnable;
    .end local v4    # "start":I
    .end local v5    # "chunkSize":I
    .end local v6    # "N":I
    .end local v7    # "i":I
    .end local v8    # "postOnMainThread":Z
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 1616
    .restart local v4    # "start":I
    .restart local v6    # "N":I
    .restart local v7    # "i":I
    .restart local v8    # "postOnMainThread":Z
    :cond_1
    sub-int v5, v6, v7

    goto :goto_2

    .line 1629
    .restart local v0    # "r":Ljava/lang/Runnable;
    .restart local v5    # "chunkSize":I
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/android/launcher2/LauncherModel;->access$1300(Lcom/android/launcher2/LauncherModel;Ljava/lang/Runnable;I)V

    goto :goto_3

    .line 1634
    .end local v0    # "r":Ljava/lang/Runnable;
    .end local v4    # "start":I
    .end local v5    # "chunkSize":I
    :cond_3
    invoke-virtual {p4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1635
    new-instance v0, Lcom/android/launcher2/LauncherModel$LoaderTask$5;

    invoke-direct {v0, p0, p1, p4}, Lcom/android/launcher2/LauncherModel$LoaderTask$5;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/LauncherModel$Callbacks;Ljava/util/HashMap;)V

    .line 1643
    .restart local v0    # "r":Ljava/lang/Runnable;
    if-eqz v8, :cond_5

    .line 1644
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1651
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_4
    :goto_4
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1652
    const/4 v7, 0x0

    :goto_5
    if-ge v7, v6, :cond_7

    .line 1653
    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/LauncherAppWidgetInfo;

    .line 1654
    .local v9, "widget":Lcom/android/launcher2/LauncherAppWidgetInfo;
    new-instance v0, Lcom/android/launcher2/LauncherModel$LoaderTask$6;

    invoke-direct {v0, p0, p1, v9}, Lcom/android/launcher2/LauncherModel$LoaderTask$6;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/LauncherModel$Callbacks;Lcom/android/launcher2/LauncherAppWidgetInfo;)V

    .line 1662
    .restart local v0    # "r":Ljava/lang/Runnable;
    if-eqz v8, :cond_6

    .line 1663
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1652
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 1646
    .end local v9    # "widget":Lcom/android/launcher2/LauncherAppWidgetInfo;
    :cond_5
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/android/launcher2/LauncherModel;->access$1300(Lcom/android/launcher2/LauncherModel;Ljava/lang/Runnable;I)V

    goto :goto_4

    .line 1665
    .restart local v9    # "widget":Lcom/android/launcher2/LauncherAppWidgetInfo;
    :cond_6
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/android/launcher2/LauncherModel;->access$1300(Lcom/android/launcher2/LauncherModel;Ljava/lang/Runnable;I)V

    goto :goto_6

    .line 1668
    .end local v0    # "r":Ljava/lang/Runnable;
    .end local v9    # "widget":Lcom/android/launcher2/LauncherAppWidgetInfo;
    :cond_7
    return-void
.end method

.method private checkItemPlacement([[[Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/ItemInfo;)Z
    .locals 11
    .param p1, "occupied"    # [[[Lcom/android/launcher2/ItemInfo;
    .param p2, "item"    # Lcom/android/launcher2/ItemInfo;

    .prologue
    const/4 v10, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1173
    iget v0, p2, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 1174
    .local v0, "containerIndex":I
    iget-wide v6, p2, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v8, -0x65

    cmp-long v3, v6, v8

    if-nez v3, :cond_3

    .line 1176
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v3}, Lcom/android/launcher2/LauncherModel;->access$600(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v3}, Lcom/android/launcher2/LauncherModel;->access$600(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/LauncherModel$Callbacks;

    iget v6, p2, Lcom/android/launcher2/ItemInfo;->screen:I

    invoke-interface {v3, v6}, Lcom/android/launcher2/LauncherModel$Callbacks;->isAllAppsButtonRank(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v3, v4

    .line 1215
    :goto_0
    return v3

    .line 1182
    :cond_1
    aget-object v3, p1, v10

    iget v6, p2, Lcom/android/launcher2/ItemInfo;->screen:I

    aget-object v3, v3, v6

    aget-object v3, v3, v4

    if-eqz v3, :cond_2

    .line 1183
    const-string v3, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error loading shortcut into hotseat "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " into position ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/android/launcher2/ItemInfo;->screen:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/android/launcher2/ItemInfo;->cellX:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/android/launcher2/ItemInfo;->cellY:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") occupied by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v10

    iget v7, p2, Lcom/android/launcher2/ItemInfo;->screen:I

    aget-object v6, v6, v7

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1186
    goto :goto_0

    .line 1188
    :cond_2
    aget-object v3, p1, v10

    iget v6, p2, Lcom/android/launcher2/ItemInfo;->screen:I

    aget-object v3, v3, v6

    aput-object p2, v3, v4

    move v3, v5

    .line 1189
    goto :goto_0

    .line 1191
    :cond_3
    iget-wide v6, p2, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v8, -0x64

    cmp-long v3, v6, v8

    if-eqz v3, :cond_4

    move v3, v5

    .line 1193
    goto :goto_0

    .line 1197
    :cond_4
    iget v1, p2, Lcom/android/launcher2/ItemInfo;->cellX:I

    .local v1, "x":I
    :goto_1
    iget v3, p2, Lcom/android/launcher2/ItemInfo;->cellX:I

    iget v6, p2, Lcom/android/launcher2/ItemInfo;->spanX:I

    add-int/2addr v3, v6

    if-ge v1, v3, :cond_7

    .line 1198
    iget v2, p2, Lcom/android/launcher2/ItemInfo;->cellY:I

    .local v2, "y":I
    :goto_2
    iget v3, p2, Lcom/android/launcher2/ItemInfo;->cellY:I

    iget v6, p2, Lcom/android/launcher2/ItemInfo;->spanY:I

    add-int/2addr v3, v6

    if-ge v2, v3, :cond_6

    .line 1199
    aget-object v3, p1, v0

    aget-object v3, v3, v1

    aget-object v3, v3, v2

    if-eqz v3, :cond_5

    .line 1200
    const-string v3, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error loading shortcut "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " into cell ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/android/launcher2/ItemInfo;->screen:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") occupied by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v0

    aget-object v6, v6, v1

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1205
    goto/16 :goto_0

    .line 1198
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1197
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1209
    .end local v2    # "y":I
    :cond_7
    iget v1, p2, Lcom/android/launcher2/ItemInfo;->cellX:I

    :goto_3
    iget v3, p2, Lcom/android/launcher2/ItemInfo;->cellX:I

    iget v4, p2, Lcom/android/launcher2/ItemInfo;->spanX:I

    add-int/2addr v3, v4

    if-ge v1, v3, :cond_9

    .line 1210
    iget v2, p2, Lcom/android/launcher2/ItemInfo;->cellY:I

    .restart local v2    # "y":I
    :goto_4
    iget v3, p2, Lcom/android/launcher2/ItemInfo;->cellY:I

    iget v4, p2, Lcom/android/launcher2/ItemInfo;->spanY:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_8

    .line 1211
    aget-object v3, p1, v0

    aget-object v3, v3, v1

    aput-object p2, v3, v2

    .line 1210
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1209
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v2    # "y":I
    :cond_9
    move v3, v5

    .line 1215
    goto/16 :goto_0
.end method

.method private filterCurrentAppWidgets(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "currentScreen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/LauncherAppWidgetInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/LauncherAppWidgetInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1544
    .local p2, "appWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/LauncherAppWidgetInfo;>;"
    .local p3, "currentScreenWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/LauncherAppWidgetInfo;>;"
    .local p4, "otherScreenWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/LauncherAppWidgetInfo;>;"
    if-gez p1, :cond_0

    .line 1545
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1548
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/LauncherAppWidgetInfo;

    .line 1549
    .local v1, "widget":Lcom/android/launcher2/LauncherAppWidgetInfo;
    if-eqz v1, :cond_1

    .line 1550
    iget-wide v2, v1, Lcom/android/launcher2/LauncherAppWidgetInfo;->container:J

    const-wide/16 v4, -0x64

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, v1, Lcom/android/launcher2/LauncherAppWidgetInfo;->screen:I

    if-ne v2, p1, :cond_2

    .line 1552
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1554
    :cond_2
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1557
    .end local v1    # "widget":Lcom/android/launcher2/LauncherAppWidgetInfo;
    :cond_3
    return-void
.end method

.method private filterCurrentFolders(ILjava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 9
    .param p1, "currentScreen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/ItemInfo;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/FolderInfo;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/FolderInfo;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/FolderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1567
    .local p2, "itemsIdMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/ItemInfo;>;"
    .local p3, "folders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/FolderInfo;>;"
    .local p4, "currentScreenFolders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/FolderInfo;>;"
    .local p5, "otherScreenFolders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/FolderInfo;>;"
    if-gez p1, :cond_0

    .line 1568
    invoke-virtual {p4, p3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1571
    :cond_0
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1572
    .local v2, "id":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/ItemInfo;

    .line 1573
    .local v4, "info":Lcom/android/launcher2/ItemInfo;
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderInfo;

    .line 1574
    .local v0, "folder":Lcom/android/launcher2/FolderInfo;
    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    .line 1575
    iget-wide v5, v4, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v7, -0x64

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    iget v5, v4, Lcom/android/launcher2/ItemInfo;->screen:I

    if-ne v5, p1, :cond_2

    .line 1577
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1579
    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p5, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1582
    .end local v0    # "folder":Lcom/android/launcher2/FolderInfo;
    .end local v2    # "id":J
    .end local v4    # "info":Lcom/android/launcher2/ItemInfo;
    :cond_3
    return-void
.end method

.method private filterCurrentWorkspaceItems(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9
    .param p1, "currentScreen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1491
    .local p2, "allWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    .local p3, "currentScreenItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    .local p4, "otherScreenItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1492
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher2/ItemInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1493
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ItemInfo;

    .line 1494
    .local v0, "i":Lcom/android/launcher2/ItemInfo;
    if-nez v0, :cond_0

    .line 1495
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1501
    .end local v0    # "i":Lcom/android/launcher2/ItemInfo;
    :cond_1
    if-gez p1, :cond_2

    .line 1502
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1508
    :cond_2
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1509
    .local v3, "itemsOnScreen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v5, Lcom/android/launcher2/LauncherModel$LoaderTask$2;

    invoke-direct {v5, p0}, Lcom/android/launcher2/LauncherModel$LoaderTask$2;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;)V

    invoke-static {p2, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1515
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/ItemInfo;

    .line 1516
    .local v2, "info":Lcom/android/launcher2/ItemInfo;
    iget-wide v5, v2, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v7, -0x64

    cmp-long v5, v5, v7

    if-nez v5, :cond_4

    .line 1517
    iget v5, v2, Lcom/android/launcher2/ItemInfo;->screen:I

    if-ne v5, p1, :cond_3

    .line 1518
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1519
    iget-wide v5, v2, Lcom/android/launcher2/ItemInfo;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1521
    :cond_3
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1523
    :cond_4
    iget-wide v5, v2, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v7, -0x65

    cmp-long v5, v5, v7

    if-nez v5, :cond_5

    .line 1524
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1525
    iget-wide v5, v2, Lcom/android/launcher2/ItemInfo;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1527
    :cond_5
    iget-wide v5, v2, Lcom/android/launcher2/ItemInfo;->container:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1528
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1529
    iget-wide v5, v2, Lcom/android/launcher2/ItemInfo;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1531
    :cond_6
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1535
    .end local v2    # "info":Lcom/android/launcher2/ItemInfo;
    :cond_7
    return-void
.end method

.method private loadAllAppsByBatch()V
    .locals 29

    .prologue
    .line 1831
    const-wide/16 v20, 0x0

    .line 1835
    .local v20, "t":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/launcher2/LauncherModel;->access$600(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/LauncherModel$Callbacks;

    .line 1836
    .local v13, "oldCallbacks":Lcom/android/launcher2/LauncherModel$Callbacks;
    if-nez v13, :cond_1

    .line 1838
    const-string v24, "Launcher.Model"

    const-string v25, "LoaderTask running with no launcher (loadAllAppsByBatch)"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    :cond_0
    return-void

    .line 1842
    :cond_1
    new-instance v12, Landroid/content/Intent;

    const-string v24, "android.intent.action.MAIN"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1843
    .local v12, "mainIntent":Landroid/content/Intent;
    const-string v24, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 1846
    .local v14, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    .line 1848
    .local v6, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const v4, 0x7fffffff

    .line 1851
    .local v4, "N":I
    const/4 v10, 0x0

    .line 1852
    .local v10, "i":I
    const/4 v7, -0x1

    .line 1853
    .local v7, "batchSize":I
    :cond_2
    :goto_0
    if-ge v10, v4, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    move/from16 v24, v0

    if-nez v24, :cond_0

    .line 1854
    if-nez v10, :cond_3

    .line 1855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/launcher2/LauncherModel;->access$1500(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher2/AllAppsList;->clear()V

    .line 1856
    const-wide/16 v15, 0x0

    .line 1857
    .local v15, "qiaTime":J
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v14, v12, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 1862
    if-eqz v6, :cond_0

    .line 1865
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 1869
    if-eqz v4, :cond_0

    .line 1873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/launcher2/LauncherModel;->access$1700(Lcom/android/launcher2/LauncherModel;)I

    move-result v24

    if-nez v24, :cond_4

    .line 1874
    move v7, v4

    .line 1879
    :goto_1
    const-wide/16 v17, 0x0

    .line 1880
    .local v17, "sortTime":J
    new-instance v24, Lcom/android/launcher2/LauncherModel$ShortcutNameComparator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mLabelCache:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v14, v1}, Lcom/android/launcher2/LauncherModel$ShortcutNameComparator;-><init>(Landroid/content/pm/PackageManager;Ljava/util/HashMap;)V

    move-object/from16 v0, v24

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1888
    .end local v15    # "qiaTime":J
    .end local v17    # "sortTime":J
    :cond_3
    const-wide/16 v22, 0x0

    .line 1890
    .local v22, "t2":J
    move/from16 v19, v10

    .line 1891
    .local v19, "startIndex":I
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_2
    if-ge v10, v4, :cond_5

    if-ge v11, v7, :cond_5

    .line 1893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/launcher2/LauncherModel;->access$1500(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v25

    new-instance v26, Lcom/android/launcher2/ApplicationInfo;

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/launcher2/LauncherModel;->access$1800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/IconCache;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mLabelCache:Ljava/util/HashMap;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-direct {v0, v14, v1, v2, v3}, Lcom/android/launcher2/ApplicationInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/android/launcher2/IconCache;Ljava/util/HashMap;)V

    invoke-virtual/range {v25 .. v26}, Lcom/android/launcher2/AllAppsList;->add(Lcom/android/launcher2/ApplicationInfo;)V

    .line 1895
    add-int/lit8 v10, v10, 0x1

    .line 1891
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1876
    .end local v11    # "j":I
    .end local v19    # "startIndex":I
    .end local v22    # "t2":J
    .restart local v15    # "qiaTime":J
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/launcher2/LauncherModel;->access$1700(Lcom/android/launcher2/LauncherModel;)I

    move-result v7

    goto :goto_1

    .line 1898
    .end local v15    # "qiaTime":J
    .restart local v11    # "j":I
    .restart local v19    # "startIndex":I
    .restart local v22    # "t2":J
    :cond_5
    if-gt v10, v7, :cond_6

    const/4 v9, 0x1

    .line 1899
    .local v9, "first":Z
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/android/launcher2/LauncherModel$Callbacks;)Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v8

    .line 1900
    .local v8, "callbacks":Lcom/android/launcher2/LauncherModel$Callbacks;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/launcher2/LauncherModel;->access$1500(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    .line 1901
    .local v5, "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/launcher2/LauncherModel;->access$1500(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v24

    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    .line 1903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/launcher2/LauncherModel;->access$200(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v24

    new-instance v25, Lcom/android/launcher2/LauncherModel$LoaderTask$11;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8, v9, v5}, Lcom/android/launcher2/LauncherModel$LoaderTask$11;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/LauncherModel$Callbacks;ZLjava/util/ArrayList;)V

    invoke-virtual/range {v24 .. v25}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/launcher2/LauncherModel;->access$1900(Lcom/android/launcher2/LauncherModel;)I

    move-result v24

    if-lez v24, :cond_2

    if-ge v10, v4, :cond_2

    .line 1932
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/launcher2/LauncherModel;->access$1900(Lcom/android/launcher2/LauncherModel;)I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1933
    :catch_0
    move-exception v24

    goto/16 :goto_0

    .line 1898
    .end local v5    # "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    .end local v8    # "callbacks":Lcom/android/launcher2/LauncherModel$Callbacks;
    .end local v9    # "first":Z
    :cond_6
    const/4 v9, 0x0

    goto :goto_3
.end method

.method private loadAndBindAllApps()V
    .locals 2

    .prologue
    .line 1784
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$300(Lcom/android/launcher2/LauncherModel;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1785
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->loadAllAppsByBatch()V

    .line 1786
    monitor-enter p0

    .line 1787
    :try_start_0
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_0

    .line 1788
    monitor-exit p0

    .line 1795
    :goto_0
    return-void

    .line 1790
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherModel;->access$302(Lcom/android/launcher2/LauncherModel;Z)Z

    .line 1791
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1793
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->onlyBindAllApps()V

    goto :goto_0
.end method

.method private loadAndBindWorkspace()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 964
    iput-boolean v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsLoadingAndBindingWorkspace:Z

    .line 971
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$000(Lcom/android/launcher2/LauncherModel;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 972
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->loadWorkspace()V

    .line 973
    monitor-enter p0

    .line 974
    :try_start_0
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_0

    .line 975
    monitor-exit p0

    .line 983
    :goto_0
    return-void

    .line 977
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherModel;->access$002(Lcom/android/launcher2/LauncherModel;Z)Z

    .line 978
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 982
    :cond_1
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->bindWorkspace(I)V

    goto :goto_0

    .line 978
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private loadWorkspace()V
    .locals 52

    .prologue
    .line 1219
    const-wide/16 v48, 0x0

    .line 1221
    .local v48, "t":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 1222
    .local v13, "context":Landroid/content/Context;
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1223
    .local v3, "contentResolver":Landroid/content/ContentResolver;
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v41

    .line 1224
    .local v41, "manager":Landroid/content/pm/PackageManager;
    invoke-static {v13}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v50

    .line 1225
    .local v50, "widgets":Landroid/appwidget/AppWidgetManager;
    invoke-virtual/range {v41 .. v41}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v36

    .line 1228
    .local v36, "isSafeMode":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/LauncherApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/launcher2/LauncherProvider;->loadDefaultFavoritesIfNecessary(I)V

    .line 1230
    sget-object v51, Lcom/android/launcher2/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v51

    .line 1231
    :try_start_0
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1232
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sBgAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1233
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sBgFolders:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1234
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sBgItemsIdMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1235
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sBgDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1237
    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    .line 1239
    .local v39, "itemsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v4, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1245
    .local v8, "c":Landroid/database/Cursor;
    const/4 v4, 0x6

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$900()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$1000()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    filled-new-array {v4, v5, v7}, [I

    move-result-object v4

    const-class v5, Lcom/android/launcher2/ItemInfo;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, [[[Lcom/android/launcher2/ItemInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1249
    .local v43, "occupied":[[[Lcom/android/launcher2/ItemInfo;
    :try_start_1
    const-string v4, "_id"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v32

    .line 1250
    .local v32, "idIndex":I
    const-string v4, "intent"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v35

    .line 1252
    .local v35, "intentIndex":I
    const-string v4, "title"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 1254
    .local v10, "titleIndex":I
    const-string v4, "iconType"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1256
    .local v14, "iconTypeIndex":I
    const-string v4, "icon"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 1257
    .local v9, "iconIndex":I
    const-string v4, "iconPackage"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 1259
    .local v15, "iconPackageIndex":I
    const-string v4, "iconResource"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 1261
    .local v16, "iconResourceIndex":I
    const-string v4, "container"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 1263
    .local v26, "containerIndex":I
    const-string v4, "itemType"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v38

    .line 1265
    .local v38, "itemTypeIndex":I
    const-string v4, "appWidgetId"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 1267
    .local v20, "appWidgetIdIndex":I
    const-string v4, "screen"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v45

    .line 1269
    .local v45, "screenIndex":I
    const-string v4, "cellX"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 1271
    .local v22, "cellXIndex":I
    const-string v4, "cellY"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 1273
    .local v23, "cellYIndex":I
    const-string v4, "spanX"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v46

    .line 1275
    .local v46, "spanXIndex":I
    const-string v4, "spanY"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v47

    .line 1288
    .local v47, "spanYIndex":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v4, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_7

    .line 1290
    :try_start_2
    move/from16 v0, v38

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    .line 1292
    .local v37, "itemType":I
    packed-switch v37, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1295
    :pswitch_1
    move/from16 v0, v35

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v34

    .line 1297
    .local v34, "intentDescription":Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_3
    move-object/from16 v0, v34

    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    .line 1302
    .local v6, "intent":Landroid/content/Intent;
    if-nez v37, :cond_2

    .line 1303
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mLabelCache:Ljava/util/HashMap;

    move-object/from16 v5, v41

    move-object v7, v13

    invoke-virtual/range {v4 .. v11}, Lcom/android/launcher2/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;IILjava/util/HashMap;)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v33

    .line 1323
    .local v33, "info":Lcom/android/launcher2/ShortcutInfo;
    :cond_1
    :goto_1
    if-eqz v33, :cond_3

    .line 1324
    move-object/from16 v0, v33

    iput-object v6, v0, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 1325
    move/from16 v0, v32

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, v33

    iput-wide v4, v0, Lcom/android/launcher2/ShortcutInfo;->id:J

    .line 1326
    move/from16 v0, v26

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 1327
    .local v25, "container":I
    move/from16 v0, v25

    int-to-long v4, v0

    move-object/from16 v0, v33

    iput-wide v4, v0, Lcom/android/launcher2/ShortcutInfo;->container:J

    .line 1328
    move/from16 v0, v45

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v33

    iput v4, v0, Lcom/android/launcher2/ShortcutInfo;->screen:I

    .line 1329
    move/from16 v0, v22

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v33

    iput v4, v0, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    .line 1330
    move/from16 v0, v23

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v33

    iput v4, v0, Lcom/android/launcher2/ShortcutInfo;->cellY:I

    .line 1333
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$LoaderTask;->checkItemPlacement([[[Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/ItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1337
    packed-switch v25, :pswitch_data_1

    .line 1344
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sBgFolders:Ljava/util/HashMap;

    move/from16 v0, v25

    int-to-long v11, v0

    invoke-static {v4, v11, v12}, Lcom/android/launcher2/LauncherModel;->access$1200(Ljava/util/HashMap;J)Lcom/android/launcher2/FolderInfo;

    move-result-object v28

    .line 1346
    .local v28, "folderInfo":Lcom/android/launcher2/FolderInfo;
    move-object/from16 v0, v28

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderInfo;->add(Lcom/android/launcher2/ShortcutInfo;)V

    .line 1349
    .end local v28    # "folderInfo":Lcom/android/launcher2/FolderInfo;
    :goto_2
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sBgItemsIdMap:Ljava/util/HashMap;

    move-object/from16 v0, v33

    iget-wide v11, v0, Lcom/android/launcher2/ShortcutInfo;->id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1353
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    sget-object v5, Lcom/android/launcher2/LauncherModel;->sBgDbIconCache:Ljava/util/HashMap;

    move-object/from16 v0, v33

    invoke-virtual {v4, v5, v0, v8, v9}, Lcom/android/launcher2/LauncherModel;->queueIconToBeChecked(Ljava/util/HashMap;Lcom/android/launcher2/ShortcutInfo;Landroid/database/Cursor;I)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1439
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v25    # "container":I
    .end local v33    # "info":Lcom/android/launcher2/ShortcutInfo;
    .end local v34    # "intentDescription":Ljava/lang/String;
    .end local v37    # "itemType":I
    :catch_0
    move-exception v27

    .line 1440
    .local v27, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v4, "Launcher.Model"

    const-string v5, "Desktop items loading interrupted:"

    move-object/from16 v0, v27

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 1444
    .end local v9    # "iconIndex":I
    .end local v10    # "titleIndex":I
    .end local v14    # "iconTypeIndex":I
    .end local v15    # "iconPackageIndex":I
    .end local v16    # "iconResourceIndex":I
    .end local v20    # "appWidgetIdIndex":I
    .end local v22    # "cellXIndex":I
    .end local v23    # "cellYIndex":I
    .end local v26    # "containerIndex":I
    .end local v27    # "e":Ljava/lang/Exception;
    .end local v32    # "idIndex":I
    .end local v35    # "intentIndex":I
    .end local v38    # "itemTypeIndex":I
    .end local v45    # "screenIndex":I
    .end local v46    # "spanXIndex":I
    .end local v47    # "spanYIndex":I
    :catchall_0
    move-exception v4

    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v4

    .line 1481
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v39    # "itemsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v43    # "occupied":[[[Lcom/android/launcher2/ItemInfo;
    :catchall_1
    move-exception v4

    monitor-exit v51
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v4

    .line 1298
    .restart local v8    # "c":Landroid/database/Cursor;
    .restart local v9    # "iconIndex":I
    .restart local v10    # "titleIndex":I
    .restart local v14    # "iconTypeIndex":I
    .restart local v15    # "iconPackageIndex":I
    .restart local v16    # "iconResourceIndex":I
    .restart local v20    # "appWidgetIdIndex":I
    .restart local v22    # "cellXIndex":I
    .restart local v23    # "cellYIndex":I
    .restart local v26    # "containerIndex":I
    .restart local v32    # "idIndex":I
    .restart local v34    # "intentDescription":Ljava/lang/String;
    .restart local v35    # "intentIndex":I
    .restart local v37    # "itemType":I
    .restart local v38    # "itemTypeIndex":I
    .restart local v39    # "itemsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v43    # "occupied":[[[Lcom/android/launcher2/ItemInfo;
    .restart local v45    # "screenIndex":I
    .restart local v46    # "spanXIndex":I
    .restart local v47    # "spanYIndex":I
    :catch_1
    move-exception v27

    .local v27, "e":Ljava/net/URISyntaxException;
    goto/16 :goto_0

    .line 1306
    .end local v27    # "e":Ljava/net/URISyntaxException;
    .restart local v6    # "intent":Landroid/content/Intent;
    :cond_2
    :try_start_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object v12, v8

    move/from16 v17, v9

    move/from16 v18, v10

    invoke-static/range {v11 .. v18}, Lcom/android/launcher2/LauncherModel;->access$1100(Lcom/android/launcher2/LauncherModel;Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v33

    .line 1313
    .restart local v33    # "info":Lcom/android/launcher2/ShortcutInfo;
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v6}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v6}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v4

    const-string v5, "android.intent.category.LAUNCHER"

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1317
    const/high16 v4, 0x10200000

    invoke-virtual {v6, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_1

    .line 1340
    .restart local v25    # "container":I
    :pswitch_2
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1359
    .end local v25    # "container":I
    :cond_3
    move/from16 v0, v32

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    .line 1360
    .local v30, "id":J
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error loading shortcut "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v30

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", removing it"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    const/4 v4, 0x0

    move-wide/from16 v0, v30

    invoke-static {v0, v1, v4}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1367
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v30    # "id":J
    .end local v33    # "info":Lcom/android/launcher2/ShortcutInfo;
    .end local v34    # "intentDescription":Ljava/lang/String;
    :pswitch_3
    move/from16 v0, v32

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    .line 1368
    .restart local v30    # "id":J
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sBgFolders:Ljava/util/HashMap;

    move-wide/from16 v0, v30

    invoke-static {v4, v0, v1}, Lcom/android/launcher2/LauncherModel;->access$1200(Ljava/util/HashMap;J)Lcom/android/launcher2/FolderInfo;

    move-result-object v28

    .line 1370
    .restart local v28    # "folderInfo":Lcom/android/launcher2/FolderInfo;
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v28

    iput-object v4, v0, Lcom/android/launcher2/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 1371
    move-wide/from16 v0, v30

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/android/launcher2/FolderInfo;->id:J

    .line 1372
    move/from16 v0, v26

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 1373
    .restart local v25    # "container":I
    move/from16 v0, v25

    int-to-long v4, v0

    move-object/from16 v0, v28

    iput-wide v4, v0, Lcom/android/launcher2/FolderInfo;->container:J

    .line 1374
    move/from16 v0, v45

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v28

    iput v4, v0, Lcom/android/launcher2/FolderInfo;->screen:I

    .line 1375
    move/from16 v0, v22

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v28

    iput v4, v0, Lcom/android/launcher2/FolderInfo;->cellX:I

    .line 1376
    move/from16 v0, v23

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v28

    iput v4, v0, Lcom/android/launcher2/FolderInfo;->cellY:I

    .line 1379
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$LoaderTask;->checkItemPlacement([[[Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/ItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1382
    packed-switch v25, :pswitch_data_2

    .line 1389
    :goto_3
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sBgItemsIdMap:Ljava/util/HashMap;

    move-object/from16 v0, v28

    iget-wide v11, v0, Lcom/android/launcher2/FolderInfo;->id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1390
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sBgFolders:Ljava/util/HashMap;

    move-object/from16 v0, v28

    iget-wide v11, v0, Lcom/android/launcher2/FolderInfo;->id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1385
    :pswitch_4
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1395
    .end local v25    # "container":I
    .end local v28    # "folderInfo":Lcom/android/launcher2/FolderInfo;
    .end local v30    # "id":J
    :pswitch_5
    move/from16 v0, v20

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 1396
    .local v19, "appWidgetId":I
    move/from16 v0, v32

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    .line 1398
    .restart local v30    # "id":J
    move-object/from16 v0, v50

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v44

    .line 1401
    .local v44, "provider":Landroid/appwidget/AppWidgetProviderInfo;
    if-nez v36, :cond_5

    if-eqz v44, :cond_4

    move-object/from16 v0, v44

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v4, :cond_4

    move-object/from16 v0, v44

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    .line 1403
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleting widget that isn\'t installed anymore: id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v30

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " appWidgetId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    .line 1405
    .local v40, "log":Ljava/lang/String;
    const-string v4, "Launcher.Model"

    move-object/from16 v0, v40

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    sget-object v4, Lcom/android/launcher2/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1407
    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1409
    .end local v40    # "log":Ljava/lang/String;
    :cond_5
    new-instance v21, Lcom/android/launcher2/LauncherAppWidgetInfo;

    move-object/from16 v0, v44

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-direct {v0, v1, v4}, Lcom/android/launcher2/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    .line 1411
    .local v21, "appWidgetInfo":Lcom/android/launcher2/LauncherAppWidgetInfo;
    move-wide/from16 v0, v30

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/launcher2/LauncherAppWidgetInfo;->id:J

    .line 1412
    move/from16 v0, v45

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v21

    iput v4, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;->screen:I

    .line 1413
    move/from16 v0, v22

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v21

    iput v4, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;->cellX:I

    .line 1414
    move/from16 v0, v23

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v21

    iput v4, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;->cellY:I

    .line 1415
    move/from16 v0, v46

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v21

    iput v4, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanX:I

    .line 1416
    move/from16 v0, v47

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v21

    iput v4, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanY:I

    .line 1417
    move-object/from16 v0, v44

    invoke-static {v13, v0}, Lcom/android/launcher2/Launcher;->getMinSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v42

    .line 1418
    .local v42, "minSpan":[I
    const/4 v4, 0x0

    aget v4, v42, v4

    move-object/from16 v0, v21

    iput v4, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;->minSpanX:I

    .line 1419
    const/4 v4, 0x1

    aget v4, v42, v4

    move-object/from16 v0, v21

    iput v4, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;->minSpanY:I

    .line 1421
    move/from16 v0, v26

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 1422
    .restart local v25    # "container":I
    const/16 v4, -0x64

    move/from16 v0, v25

    if-eq v0, v4, :cond_6

    const/16 v4, -0x65

    move/from16 v0, v25

    if-eq v0, v4, :cond_6

    .line 1424
    const-string v4, "Launcher.Model"

    const-string v5, "Widget found where container != CONTAINER_DESKTOP nor CONTAINER_HOTSEAT - ignoring!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1428
    :cond_6
    move/from16 v0, v26

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    move-object/from16 v0, v21

    iput-wide v4, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;->container:J

    .line 1431
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$LoaderTask;->checkItemPlacement([[[Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/ItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1434
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sBgItemsIdMap:Ljava/util/HashMap;

    move-object/from16 v0, v21

    iget-wide v11, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;->id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1435
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sBgAppWidgets:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 1444
    .end local v19    # "appWidgetId":I
    .end local v21    # "appWidgetInfo":Lcom/android/launcher2/LauncherAppWidgetInfo;
    .end local v25    # "container":I
    .end local v30    # "id":J
    .end local v37    # "itemType":I
    .end local v42    # "minSpan":[I
    .end local v44    # "provider":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_7
    :try_start_8
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1447
    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_8

    .line 1448
    sget-object v4, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v24

    .line 1451
    .local v24, "client":Landroid/content/ContentProviderClient;
    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .local v29, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-wide v30

    .line 1457
    .restart local v30    # "id":J
    const/4 v4, 0x0

    :try_start_9
    move-wide/from16 v0, v30

    invoke-static {v0, v1, v4}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5, v7}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_4

    .line 1459
    :catch_2
    move-exception v27

    .line 1460
    .local v27, "e":Landroid/os/RemoteException;
    :try_start_a
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not remove id = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v30

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1481
    .end local v24    # "client":Landroid/content/ContentProviderClient;
    .end local v27    # "e":Landroid/os/RemoteException;
    .end local v29    # "i$":Ljava/util/Iterator;
    .end local v30    # "id":J
    :cond_8
    monitor-exit v51
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1482
    return-void

    .line 1292
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 1337
    :pswitch_data_1
    .packed-switch -0x65
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 1382
    :pswitch_data_2
    .packed-switch -0x65
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private onlyBindAllApps()V
    .locals 6

    .prologue
    .line 1798
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$600(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/LauncherModel$Callbacks;

    .line 1799
    .local v2, "oldCallbacks":Lcom/android/launcher2/LauncherModel$Callbacks;
    if-nez v2, :cond_0

    .line 1801
    const-string v4, "Launcher.Model"

    const-string v5, "LoaderTask running with no launcher (onlyBindAllApps)"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    :goto_0
    return-void

    .line 1807
    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$1500(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v4

    iget-object v4, v4, Lcom/android/launcher2/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1809
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    new-instance v3, Lcom/android/launcher2/LauncherModel$LoaderTask$10;

    invoke-direct {v3, p0, v2, v1}, Lcom/android/launcher2/LauncherModel$LoaderTask$10;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    .line 1822
    .local v3, "r":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$1600()Landroid/os/HandlerThread;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    if-eq v4, v5, :cond_1

    const/4 v0, 0x1

    .line 1823
    .local v0, "isRunningOnMainThread":Z
    :goto_1
    invoke-interface {v2}, Lcom/android/launcher2/LauncherModel$Callbacks;->isAllAppsVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    .line 1824
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1822
    .end local v0    # "isRunningOnMainThread":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1826
    .restart local v0    # "isRunningOnMainThread":Z
    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$200(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private sortWorkspaceItemsSpatially(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1588
    .local p1, "workspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    new-instance v0, Lcom/android/launcher2/LauncherModel$LoaderTask$3;

    invoke-direct {v0, p0}, Lcom/android/launcher2/LauncherModel$LoaderTask$3;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1602
    return-void
.end method

.method private waitForIdle()V
    .locals 4

    .prologue
    .line 989
    monitor-enter p0

    .line 990
    const-wide/16 v0, 0x0

    .line 992
    .local v0, "workspaceWaitTime":J
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->access$200(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v2

    new-instance v3, Lcom/android/launcher2/LauncherModel$LoaderTask$1;

    invoke-direct {v3, p0}, Lcom/android/launcher2/LauncherModel$LoaderTask$1;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher2/DeferredHandler;->postIdle(Ljava/lang/Runnable;)V

    .line 1004
    :goto_0
    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mLoadAndBindStepFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 1006
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1007
    :catch_0
    move-exception v2

    goto :goto_0

    .line 1016
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 1017
    return-void

    .line 1016
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method


# virtual methods
.method public dumpState()V
    .locals 4

    .prologue
    .line 1945
    sget-object v1, Lcom/android/launcher2/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1946
    :try_start_0
    const-string v0, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLoaderTask.mContext="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    const-string v0, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLoaderTask.mIsLaunching="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsLaunching:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    const-string v0, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLoaderTask.mStopped="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    const-string v0, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLoaderTask.mLoadAndBindStepFinished="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mLoadAndBindStepFinished:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    const-string v0, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mItems size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    monitor-exit v1

    .line 1952
    return-void

    .line 1951
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isLaunching()Z
    .locals 1

    .prologue
    .line 956
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsLaunching:Z

    return v0
.end method

.method isLoadingWorkspace()Z
    .locals 1

    .prologue
    .line 960
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsLoadingAndBindingWorkspace:Z

    return v0
.end method

.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/16 v6, 0xa

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1056
    iget-object v7, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v7}, Lcom/android/launcher2/LauncherModel;->access$400(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 1057
    :try_start_0
    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/launcher2/LauncherModel;->access$502(Lcom/android/launcher2/LauncherModel;Z)Z

    .line 1058
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1062
    iget-object v7, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v7}, Lcom/android/launcher2/LauncherModel;->access$600(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/LauncherModel$Callbacks;

    .line 1063
    .local v1, "cbk":Lcom/android/launcher2/LauncherModel$Callbacks;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/launcher2/LauncherModel$Callbacks;->isAllAppsVisible()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1068
    .local v4, "loadWorkspaceFirst":Z
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v7}, Lcom/android/launcher2/LauncherModel;->access$400(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 1071
    :try_start_1
    iget-boolean v8, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsLaunching:Z

    if-eqz v8, :cond_2

    :goto_1
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1073
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1074
    if-eqz v4, :cond_3

    .line 1076
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->loadAndBindWorkspace()V

    .line 1082
    :goto_2
    iget-boolean v5, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v5, :cond_4

    .line 1114
    :goto_3
    sget-object v7, Lcom/android/launcher2/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1115
    :try_start_2
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sBgDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1116
    .local v3, "key":Ljava/lang/Object;
    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v9, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    move-object v0, v3

    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    move-object v5, v0

    sget-object v6, Lcom/android/launcher2/LauncherModel;->sBgDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-virtual {v8, v9, v5, v6}, Lcom/android/launcher2/LauncherModel;->updateSavedIcon(Landroid/content/Context;Lcom/android/launcher2/ShortcutInfo;[B)V

    goto :goto_4

    .line 1119
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 1058
    .end local v1    # "cbk":Lcom/android/launcher2/LauncherModel$Callbacks;
    .end local v4    # "loadWorkspaceFirst":Z
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    .restart local v1    # "cbk":Lcom/android/launcher2/LauncherModel$Callbacks;
    :cond_1
    move v4, v5

    .line 1063
    goto :goto_0

    .restart local v4    # "loadWorkspaceFirst":Z
    :cond_2
    move v5, v6

    .line 1071
    goto :goto_1

    .line 1073
    :catchall_2
    move-exception v5

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v5

    .line 1079
    :cond_3
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->loadAndBindAllApps()V

    goto :goto_2

    .line 1088
    :cond_4
    iget-object v5, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v5}, Lcom/android/launcher2/LauncherModel;->access$400(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 1089
    :try_start_5
    iget-boolean v5, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsLaunching:Z

    if-eqz v5, :cond_5

    .line 1091
    const/16 v5, 0xa

    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1093
    :cond_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 1094
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->waitForIdle()V

    .line 1097
    if-eqz v4, :cond_6

    .line 1099
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->loadAndBindAllApps()V

    .line 1106
    :goto_5
    iget-object v5, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v5}, Lcom/android/launcher2/LauncherModel;->access$400(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 1107
    const/4 v5, 0x0

    :try_start_6
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1108
    monitor-exit v6

    goto :goto_3

    :catchall_3
    move-exception v5

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v5

    .line 1093
    :catchall_4
    move-exception v5

    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v5

    .line 1102
    :cond_6
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->loadAndBindWorkspace()V

    goto :goto_5

    .line 1118
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_7
    :try_start_8
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sBgDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 1119
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1123
    iput-object v10, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 1125
    iget-object v5, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v5}, Lcom/android/launcher2/LauncherModel;->access$400(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 1127
    :try_start_9
    iget-object v5, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v5}, Lcom/android/launcher2/LauncherModel;->access$700(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/LauncherModel$LoaderTask;

    move-result-object v5

    if-ne v5, p0, :cond_8

    .line 1128
    iget-object v5, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/android/launcher2/LauncherModel;->access$702(Lcom/android/launcher2/LauncherModel;Lcom/android/launcher2/LauncherModel$LoaderTask;)Lcom/android/launcher2/LauncherModel$LoaderTask;

    .line 1130
    :cond_8
    iget-object v5, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/android/launcher2/LauncherModel;->access$502(Lcom/android/launcher2/LauncherModel;Z)Z

    .line 1131
    monitor-exit v6

    .line 1132
    return-void

    .line 1131
    :catchall_5
    move-exception v5

    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw v5
.end method

.method runBindSynchronousPage(I)V
    .locals 3
    .param p1, "synchronousBindPage"    # I

    .prologue
    .line 1020
    if-gez p1, :cond_0

    .line 1022
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Should not call runBindSynchronousPage() without valid page index"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1025
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$300(Lcom/android/launcher2/LauncherModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$000(Lcom/android/launcher2/LauncherModel;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1028
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expecting AllApps and Workspace to be loaded"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1030
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$400(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1031
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$500(Lcom/android/launcher2/LauncherModel;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1034
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Error! Background loading is already running"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1036
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1045
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$200(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/DeferredHandler;->flush()V

    .line 1049
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherModel$LoaderTask;->bindWorkspace(I)V

    .line 1052
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->onlyBindAllApps()V

    .line 1053
    return-void
.end method

.method public stopLocked()V
    .locals 1

    .prologue
    .line 1135
    monitor-enter p0

    .line 1136
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    .line 1137
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 1138
    monitor-exit p0

    .line 1139
    return-void

    .line 1138
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method tryGetCallbacks(Lcom/android/launcher2/LauncherModel$Callbacks;)Lcom/android/launcher2/LauncherModel$Callbacks;
    .locals 5
    .param p1, "oldCallbacks"    # Lcom/android/launcher2/LauncherModel$Callbacks;

    .prologue
    const/4 v1, 0x0

    .line 1149
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->access$400(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1150
    :try_start_0
    iget-boolean v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v3, :cond_0

    .line 1151
    monitor-exit v2

    move-object v0, v1

    .line 1167
    :goto_0
    return-object v0

    .line 1154
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v3}, Lcom/android/launcher2/LauncherModel;->access$600(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1155
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 1158
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v3}, Lcom/android/launcher2/LauncherModel;->access$600(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherModel$Callbacks;

    .line 1159
    .local v0, "callbacks":Lcom/android/launcher2/LauncherModel$Callbacks;
    if-eq v0, p1, :cond_2

    .line 1160
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 1162
    :cond_2
    if-nez v0, :cond_3

    .line 1163
    const-string v3, "Launcher.Model"

    const-string v4, "no mCallbacks"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 1167
    :cond_3
    monitor-exit v2

    goto :goto_0

    .line 1168
    .end local v0    # "callbacks":Lcom/android/launcher2/LauncherModel$Callbacks;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

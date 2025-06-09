.class Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;
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
    name = "PackageUpdatedTask"
.end annotation


# static fields
.field public static final OP_ADD:I = 0x1

.field public static final OP_NONE:I = 0x0

.field public static final OP_REMOVE:I = 0x3

.field public static final OP_UNAVAILABLE:I = 0x4

.field public static final OP_UPDATE:I = 0x2


# instance fields
.field mOp:I

.field mPackages:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/launcher2/LauncherModel;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/LauncherModel;I[Ljava/lang/String;)V
    .locals 0
    .param p2, "op"    # I
    .param p3, "packages"    # [Ljava/lang/String;

    .prologue
    .line 1970
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1971
    iput p2, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mOp:I

    .line 1972
    iput-object p3, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    .line 1973
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 1976
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/LauncherApplication;

    move-result-object v4

    .line 1978
    .local v4, "context":Landroid/content/Context;
    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    .line 1979
    .local v8, "packages":[Ljava/lang/String;
    array-length v0, v8

    .line 1980
    .local v0, "N":I
    iget v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mOp:I

    packed-switch v11, :pswitch_data_0

    .line 2002
    :cond_0
    const/4 v1, 0x0

    .line 2003
    .local v1, "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    const/4 v6, 0x0

    .line 2005
    .local v6, "modified":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$1500(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v11

    iget-object v11, v11, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_1

    .line 2006
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$1500(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v11

    iget-object v11, v11, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-direct {v1, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2007
    .restart local v1    # "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$1500(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v11

    iget-object v11, v11, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2009
    :cond_1
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$1500(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v11

    iget-object v11, v11, Lcom/android/launcher2/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_2

    .line 2010
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "modified":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$1500(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v11

    iget-object v11, v11, Lcom/android/launcher2/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2011
    .restart local v6    # "modified":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$1500(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v11

    iget-object v11, v11, Lcom/android/launcher2/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2016
    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2017
    .local v10, "removedPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$1500(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v11

    iget-object v11, v11, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_3

    .line 2018
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$1500(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v11

    iget-object v11, v11, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2020
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_3

    .line 2021
    aget-object v11, v8, v5

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2020
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1982
    .end local v1    # "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    .end local v5    # "i":I
    .end local v6    # "modified":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    .end local v10    # "removedPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_0
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    if-ge v5, v0, :cond_0

    .line 1984
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$1500(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v11

    aget-object v12, v8, v5

    invoke-virtual {v11, v4, v12}, Lcom/android/launcher2/AllAppsList;->addPackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 1982
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1988
    .end local v5    # "i":I
    :pswitch_1
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    if-ge v5, v0, :cond_0

    .line 1990
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$1500(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v11

    aget-object v12, v8, v5

    invoke-virtual {v11, v4, v12}, Lcom/android/launcher2/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 1988
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1995
    .end local v5    # "i":I
    :pswitch_2
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_3
    if-ge v5, v0, :cond_0

    .line 1997
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$1500(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v11

    aget-object v12, v8, v5

    invoke-virtual {v11, v12}, Lcom/android/launcher2/AllAppsList;->removePackage(Ljava/lang/String;)V

    .line 1995
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2025
    .end local v5    # "i":I
    .restart local v1    # "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    .restart local v6    # "modified":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    .restart local v10    # "removedPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$600(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v11

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$600(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/LauncherModel$Callbacks;

    move-object v3, v11

    .line 2026
    .local v3, "callbacks":Lcom/android/launcher2/LauncherModel$Callbacks;
    :goto_4
    if-nez v3, :cond_5

    .line 2027
    const-string v11, "Launcher.Model"

    const-string v12, "Nobody to tell about the new app.  Launcher is probably loading."

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    :goto_5
    return-void

    .line 2025
    .end local v3    # "callbacks":Lcom/android/launcher2/LauncherModel$Callbacks;
    :cond_4
    const/4 v3, 0x0

    goto :goto_4

    .line 2031
    .restart local v3    # "callbacks":Lcom/android/launcher2/LauncherModel$Callbacks;
    :cond_5
    if-eqz v1, :cond_6

    .line 2032
    move-object v2, v1

    .line 2033
    .local v2, "addedFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$200(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v11

    new-instance v12, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$1;

    invoke-direct {v12, p0, v3, v2}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$1;-><init>(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;Lcom/android/launcher2/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    invoke-virtual {v11, v12}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 2042
    .end local v2    # "addedFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    :cond_6
    if-eqz v6, :cond_7

    .line 2043
    move-object v7, v6

    .line 2044
    .local v7, "modifiedFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$200(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v11

    new-instance v12, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$2;

    invoke-direct {v12, p0, v3, v7}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$2;-><init>(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;Lcom/android/launcher2/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    invoke-virtual {v11, v12}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 2053
    .end local v7    # "modifiedFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    :cond_7
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_8

    .line 2054
    iget v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mOp:I

    const/4 v12, 0x4

    if-eq v11, v12, :cond_9

    const/4 v9, 0x1

    .line 2055
    .local v9, "permanent":Z
    :goto_6
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$200(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v11

    new-instance v12, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$3;

    invoke-direct {v12, p0, v3, v10, v9}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$3;-><init>(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;Lcom/android/launcher2/LauncherModel$Callbacks;Ljava/util/ArrayList;Z)V

    invoke-virtual {v11, v12}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 2065
    .end local v9    # "permanent":Z
    :cond_8
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$200(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v11

    new-instance v12, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$4;

    invoke-direct {v12, p0, v3}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$4;-><init>(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    invoke-virtual {v11, v12}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 2054
    :cond_9
    const/4 v9, 0x0

    goto :goto_6

    .line 1980
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

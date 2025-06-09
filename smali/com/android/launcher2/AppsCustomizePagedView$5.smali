.class Lcom/android/launcher2/AppsCustomizePagedView$5;
.super Ljava/lang/Object;
.source "AppsCustomizePagedView.java"

# interfaces
.implements Lcom/android/launcher2/AsyncTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AppsCustomizePagedView;->prepareLoadWidgetPreviewsTask(ILjava/util/ArrayList;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/AppsCustomizePagedView;

.field final synthetic val$sleepMs:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/AppsCustomizePagedView;I)V
    .locals 0

    .prologue
    .line 1170
    iput-object p1, p0, Lcom/android/launcher2/AppsCustomizePagedView$5;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    iput p2, p0, Lcom/android/launcher2/AppsCustomizePagedView$5;->val$sleepMs:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/android/launcher2/AppsCustomizeAsyncTask;Lcom/android/launcher2/AsyncTaskPageData;)V
    .locals 3
    .param p1, "task"    # Lcom/android/launcher2/AppsCustomizeAsyncTask;
    .param p2, "data"    # Lcom/android/launcher2/AsyncTaskPageData;

    .prologue
    const/4 v2, 0x1

    .line 1175
    :try_start_0
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView$5;->val$sleepMs:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1177
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView$5;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-static {v0, p1, p2}, Lcom/android/launcher2/AppsCustomizePagedView;->access$100(Lcom/android/launcher2/AppsCustomizePagedView;Lcom/android/launcher2/AppsCustomizeAsyncTask;Lcom/android/launcher2/AsyncTaskPageData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1179
    invoke-virtual {p1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1180
    invoke-virtual {p2, v2}, Lcom/android/launcher2/AsyncTaskPageData;->cleanup(Z)V

    .line 1183
    :cond_0
    return-void

    .line 1179
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1180
    invoke-virtual {p2, v2}, Lcom/android/launcher2/AsyncTaskPageData;->cleanup(Z)V

    :cond_1
    throw v0

    .line 1176
    :catch_0
    move-exception v0

    goto :goto_0
.end method

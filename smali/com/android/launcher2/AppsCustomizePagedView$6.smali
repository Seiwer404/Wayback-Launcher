.class Lcom/android/launcher2/AppsCustomizePagedView$6;
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


# direct methods
.method constructor <init>(Lcom/android/launcher2/AppsCustomizePagedView;)V
    .locals 0

    .prologue
    .line 1185
    iput-object p1, p0, Lcom/android/launcher2/AppsCustomizePagedView$6;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/android/launcher2/AppsCustomizeAsyncTask;Lcom/android/launcher2/AsyncTaskPageData;)V
    .locals 1
    .param p1, "task"    # Lcom/android/launcher2/AppsCustomizeAsyncTask;
    .param p2, "data"    # Lcom/android/launcher2/AsyncTaskPageData;

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView$6;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    iget-object v0, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1189
    invoke-virtual {p1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1192
    :goto_0
    return-void

    .line 1191
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView$6;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-static {v0, p2}, Lcom/android/launcher2/AppsCustomizePagedView;->access$200(Lcom/android/launcher2/AppsCustomizePagedView;Lcom/android/launcher2/AsyncTaskPageData;)V

    goto :goto_0
.end method

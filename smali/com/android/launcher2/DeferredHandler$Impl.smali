.class Lcom/android/launcher2/DeferredHandler$Impl;
.super Landroid/os/Handler;
.source "DeferredHandler.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/DeferredHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Impl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/DeferredHandler;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/DeferredHandler;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/launcher2/DeferredHandler$Impl;->this$0:Lcom/android/launcher2/DeferredHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/DeferredHandler;Lcom/android/launcher2/DeferredHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher2/DeferredHandler;
    .param p2, "x1"    # Lcom/android/launcher2/DeferredHandler$1;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/launcher2/DeferredHandler$Impl;-><init>(Lcom/android/launcher2/DeferredHandler;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 43
    iget-object v2, p0, Lcom/android/launcher2/DeferredHandler$Impl;->this$0:Lcom/android/launcher2/DeferredHandler;

    invoke-static {v2}, Lcom/android/launcher2/DeferredHandler;->access$100(Lcom/android/launcher2/DeferredHandler;)Ljava/util/LinkedList;

    move-result-object v3

    monitor-enter v3

    .line 44
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/DeferredHandler$Impl;->this$0:Lcom/android/launcher2/DeferredHandler;

    invoke-static {v2}, Lcom/android/launcher2/DeferredHandler;->access$100(Lcom/android/launcher2/DeferredHandler;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 45
    monitor-exit v3

    .line 54
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/DeferredHandler$Impl;->this$0:Lcom/android/launcher2/DeferredHandler;

    invoke-static {v2}, Lcom/android/launcher2/DeferredHandler;->access$100(Lcom/android/launcher2/DeferredHandler;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 48
    .local v0, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Runnable;Ljava/lang/Integer;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    .line 49
    .local v1, "r":Ljava/lang/Runnable;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 51
    iget-object v2, p0, Lcom/android/launcher2/DeferredHandler$Impl;->this$0:Lcom/android/launcher2/DeferredHandler;

    invoke-static {v2}, Lcom/android/launcher2/DeferredHandler;->access$100(Lcom/android/launcher2/DeferredHandler;)Ljava/util/LinkedList;

    move-result-object v3

    monitor-enter v3

    .line 52
    :try_start_1
    iget-object v2, p0, Lcom/android/launcher2/DeferredHandler$Impl;->this$0:Lcom/android/launcher2/DeferredHandler;

    invoke-virtual {v2}, Lcom/android/launcher2/DeferredHandler;->scheduleNextLocked()V

    .line 53
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 49
    .end local v0    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Runnable;Ljava/lang/Integer;>;"
    .end local v1    # "r":Ljava/lang/Runnable;
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public queueIdle()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/DeferredHandler$Impl;->handleMessage(Landroid/os/Message;)V

    .line 58
    const/4 v0, 0x0

    return v0
.end method

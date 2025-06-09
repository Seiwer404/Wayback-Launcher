.class Lcom/android/launcher2/DeferredHandler$IdleRunnable;
.super Ljava/lang/Object;
.source "DeferredHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/DeferredHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleRunnable"
.end annotation


# instance fields
.field mRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/launcher2/DeferredHandler;


# direct methods
.method constructor <init>(Lcom/android/launcher2/DeferredHandler;Ljava/lang/Runnable;)V
    .locals 0
    .param p2, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/launcher2/DeferredHandler$IdleRunnable;->this$0:Lcom/android/launcher2/DeferredHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p2, p0, Lcom/android/launcher2/DeferredHandler$IdleRunnable;->mRunnable:Ljava/lang/Runnable;

    .line 67
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/launcher2/DeferredHandler$IdleRunnable;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 71
    return-void
.end method

.class Lcom/android/launcher2/LauncherModel$LoaderTask$9;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel$LoaderTask;->bindWorkspace(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

.field final synthetic val$oldCallbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

.field final synthetic val$t:J


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/LauncherModel$Callbacks;J)V
    .locals 0

    .prologue
    .line 1757
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$9;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$9;->val$oldCallbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

    iput-wide p3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$9;->val$t:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1759
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$9;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$9;->val$oldCallbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/android/launcher2/LauncherModel$Callbacks;)Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v0

    .line 1760
    .local v0, "callbacks":Lcom/android/launcher2/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    .line 1761
    invoke-interface {v0}, Lcom/android/launcher2/LauncherModel$Callbacks;->finishBindingItems()V

    .line 1770
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$9;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/launcher2/LauncherModel$LoaderTask;->access$1402(Lcom/android/launcher2/LauncherModel$LoaderTask;Z)Z

    .line 1771
    return-void
.end method

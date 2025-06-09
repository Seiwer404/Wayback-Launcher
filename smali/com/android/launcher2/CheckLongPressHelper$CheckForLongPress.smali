.class Lcom/android/launcher2/CheckLongPressHelper$CheckForLongPress;
.super Ljava/lang/Object;
.source "CheckLongPressHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/CheckLongPressHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckForLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/CheckLongPressHelper;


# direct methods
.method constructor <init>(Lcom/android/launcher2/CheckLongPressHelper;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/launcher2/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/android/launcher2/CheckLongPressHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/launcher2/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/android/launcher2/CheckLongPressHelper;

    invoke-static {v0}, Lcom/android/launcher2/CheckLongPressHelper;->access$000(Lcom/android/launcher2/CheckLongPressHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/android/launcher2/CheckLongPressHelper;

    invoke-static {v0}, Lcom/android/launcher2/CheckLongPressHelper;->access$000(Lcom/android/launcher2/CheckLongPressHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/android/launcher2/CheckLongPressHelper;

    invoke-static {v0}, Lcom/android/launcher2/CheckLongPressHelper;->access$100(Lcom/android/launcher2/CheckLongPressHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/android/launcher2/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/android/launcher2/CheckLongPressHelper;

    invoke-static {v0}, Lcom/android/launcher2/CheckLongPressHelper;->access$000(Lcom/android/launcher2/CheckLongPressHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performLongClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/android/launcher2/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/android/launcher2/CheckLongPressHelper;

    invoke-static {v0}, Lcom/android/launcher2/CheckLongPressHelper;->access$000(Lcom/android/launcher2/CheckLongPressHelper;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 32
    iget-object v0, p0, Lcom/android/launcher2/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/android/launcher2/CheckLongPressHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher2/CheckLongPressHelper;->access$102(Lcom/android/launcher2/CheckLongPressHelper;Z)Z

    .line 35
    :cond_0
    return-void
.end method

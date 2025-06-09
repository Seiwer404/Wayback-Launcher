.class Lcom/android/launcher2/AppsCustomizePagedView$4;
.super Ljava/lang/Object;
.source "AppsCustomizePagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AppsCustomizePagedView;->beginDragging(Landroid/view/View;)Z
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
    .line 851
    iput-object p1, p0, Lcom/android/launcher2/AppsCustomizePagedView$4;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 855
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView$4;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-static {v0}, Lcom/android/launcher2/AppsCustomizePagedView;->access$000(Lcom/android/launcher2/AppsCustomizePagedView;)Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getDragController()Lcom/android/launcher2/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView$4;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-static {v0}, Lcom/android/launcher2/AppsCustomizePagedView;->access$000(Lcom/android/launcher2/AppsCustomizePagedView;)Lcom/android/launcher2/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->dismissAllAppsCling(Landroid/view/View;)V

    .line 860
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView$4;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizePagedView;->resetDrawableState()V

    .line 863
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView$4;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-static {v0}, Lcom/android/launcher2/AppsCustomizePagedView;->access$000(Lcom/android/launcher2/AppsCustomizePagedView;)Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->enterSpringLoadedDragMode()V

    .line 865
    :cond_0
    return-void
.end method

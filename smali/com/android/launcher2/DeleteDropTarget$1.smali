.class Lcom/android/launcher2/DeleteDropTarget$1;
.super Ljava/lang/Object;
.source "DeleteDropTarget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/DeleteDropTarget;->animateToTrashAndCompleteDrop(Lcom/android/launcher2/DropTarget$DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/DeleteDropTarget;

.field final synthetic val$d:Lcom/android/launcher2/DropTarget$DragObject;


# direct methods
.method constructor <init>(Lcom/android/launcher2/DeleteDropTarget;Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/launcher2/DeleteDropTarget$1;->this$0:Lcom/android/launcher2/DeleteDropTarget;

    iput-object p2, p0, Lcom/android/launcher2/DeleteDropTarget$1;->val$d:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/launcher2/DeleteDropTarget$1;->this$0:Lcom/android/launcher2/DeleteDropTarget;

    iget-object v0, v0, Lcom/android/launcher2/DeleteDropTarget;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    invoke-virtual {v0}, Lcom/android/launcher2/SearchDropTargetBar;->onDragEnd()V

    .line 208
    iget-object v0, p0, Lcom/android/launcher2/DeleteDropTarget$1;->this$0:Lcom/android/launcher2/DeleteDropTarget;

    iget-object v0, v0, Lcom/android/launcher2/DeleteDropTarget;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->exitSpringLoadedDragMode()V

    .line 209
    iget-object v0, p0, Lcom/android/launcher2/DeleteDropTarget$1;->this$0:Lcom/android/launcher2/DeleteDropTarget;

    iget-object v1, p0, Lcom/android/launcher2/DeleteDropTarget$1;->val$d:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-static {v0, v1}, Lcom/android/launcher2/DeleteDropTarget;->access$000(Lcom/android/launcher2/DeleteDropTarget;Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 210
    return-void
.end method

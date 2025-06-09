.class Lcom/android/launcher2/FolderIcon$1;
.super Ljava/lang/Object;
.source "FolderIcon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/FolderIcon;->onDrop(Lcom/android/launcher2/ShortcutInfo;Lcom/android/launcher2/DragView;Landroid/graphics/Rect;FILjava/lang/Runnable;Lcom/android/launcher2/DropTarget$DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/FolderIcon;

.field final synthetic val$item:Lcom/android/launcher2/ShortcutInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher2/FolderIcon;Lcom/android/launcher2/ShortcutInfo;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/android/launcher2/FolderIcon$1;->this$0:Lcom/android/launcher2/FolderIcon;

    iput-object p2, p0, Lcom/android/launcher2/FolderIcon$1;->val$item:Lcom/android/launcher2/ShortcutInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon$1;->this$0:Lcom/android/launcher2/FolderIcon;

    invoke-static {v0}, Lcom/android/launcher2/FolderIcon;->access$300(Lcom/android/launcher2/FolderIcon;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/FolderIcon$1;->val$item:Lcom/android/launcher2/ShortcutInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 408
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon$1;->this$0:Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIcon;->invalidate()V

    .line 409
    return-void
.end method

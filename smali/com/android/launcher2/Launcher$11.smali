.class Lcom/android/launcher2/Launcher$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->shrinkAndFadeInFolderIcon(Lcom/android/launcher2/FolderIcon;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;

.field final synthetic val$cl:Lcom/android/launcher2/CellLayout;

.field final synthetic val$fi:Lcom/android/launcher2/FolderIcon;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/FolderIcon;)V
    .locals 0

    .prologue
    .line 2233
    iput-object p1, p0, Lcom/android/launcher2/Launcher$11;->this$0:Lcom/android/launcher2/Launcher;

    iput-object p2, p0, Lcom/android/launcher2/Launcher$11;->val$cl:Lcom/android/launcher2/CellLayout;

    iput-object p3, p0, Lcom/android/launcher2/Launcher$11;->val$fi:Lcom/android/launcher2/FolderIcon;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2236
    iget-object v0, p0, Lcom/android/launcher2/Launcher$11;->val$cl:Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_0

    .line 2237
    iget-object v0, p0, Lcom/android/launcher2/Launcher$11;->val$cl:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->clearFolderLeaveBehind()V

    .line 2239
    iget-object v0, p0, Lcom/android/launcher2/Launcher$11;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$1200(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Launcher$11;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v1}, Lcom/android/launcher2/Launcher;->access$2000(Lcom/android/launcher2/Launcher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragLayer;->removeView(Landroid/view/View;)V

    .line 2240
    iget-object v0, p0, Lcom/android/launcher2/Launcher$11;->val$fi:Lcom/android/launcher2/FolderIcon;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderIcon;->setVisibility(I)V

    .line 2242
    :cond_0
    return-void
.end method

.class Lcom/android/launcher2/PagedView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/PagedView;->hideScrollingIndicator(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private cancelled:Z

.field final synthetic this$0:Lcom/android/launcher2/PagedView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/PagedView;)V
    .locals 1

    .prologue
    .line 1802
    iput-object p1, p0, Lcom/android/launcher2/PagedView$2;->this$0:Lcom/android/launcher2/PagedView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1803
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView$2;->cancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1806
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView$2;->cancelled:Z

    .line 1807
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1810
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView$2;->cancelled:Z

    if-nez v0, :cond_0

    .line 1811
    iget-object v0, p0, Lcom/android/launcher2/PagedView$2;->this$0:Lcom/android/launcher2/PagedView;

    invoke-static {v0}, Lcom/android/launcher2/PagedView;->access$100(Lcom/android/launcher2/PagedView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1813
    :cond_0
    return-void
.end method

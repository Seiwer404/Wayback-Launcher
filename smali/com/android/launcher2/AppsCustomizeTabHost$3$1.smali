.class Lcom/android/launcher2/AppsCustomizeTabHost$3$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AppsCustomizeTabHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AppsCustomizeTabHost$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/AppsCustomizeTabHost$3;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AppsCustomizeTabHost$3;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3$1;->this$1:Lcom/android/launcher2/AppsCustomizeTabHost$3;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3$1;->this$1:Lcom/android/launcher2/AppsCustomizeTabHost$3;

    iget-object v0, v0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-static {v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$400(Lcom/android/launcher2/AppsCustomizeTabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3$1;->this$1:Lcom/android/launcher2/AppsCustomizeTabHost$3;

    iget-object v0, v0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-static {v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$400(Lcom/android/launcher2/AppsCustomizeTabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 276
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3$1;->this$1:Lcom/android/launcher2/AppsCustomizeTabHost$3;

    iget-object v0, v0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-static {v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$400(Lcom/android/launcher2/AppsCustomizeTabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3$1;->this$1:Lcom/android/launcher2/AppsCustomizeTabHost$3;

    iget-object v0, v0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-static {v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$400(Lcom/android/launcher2/AppsCustomizeTabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 271
    return-void
.end method

.class Lcom/android/launcher2/Launcher$13;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->showAppsCustomizeHelper(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field animationCancelled:Z

.field final synthetic this$0:Lcom/android/launcher2/Launcher;

.field final synthetic val$animated:Z

.field final synthetic val$fromView:Landroid/view/View;

.field final synthetic val$springLoaded:Z

.field final synthetic val$toView:Lcom/android/launcher2/AppsCustomizeTabHost;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/AppsCustomizeTabHost;Landroid/view/View;ZZ)V
    .locals 1

    .prologue
    .line 2538
    iput-object p1, p0, Lcom/android/launcher2/Launcher$13;->this$0:Lcom/android/launcher2/Launcher;

    iput-object p2, p0, Lcom/android/launcher2/Launcher$13;->val$toView:Lcom/android/launcher2/AppsCustomizeTabHost;

    iput-object p3, p0, Lcom/android/launcher2/Launcher$13;->val$fromView:Landroid/view/View;

    iput-boolean p4, p0, Lcom/android/launcher2/Launcher$13;->val$animated:Z

    iput-boolean p5, p0, Lcom/android/launcher2/Launcher$13;->val$springLoaded:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 2539
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher$13;->animationCancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2572
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher$13;->animationCancelled:Z

    .line 2573
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x0

    .line 2552
    iget-object v0, p0, Lcom/android/launcher2/Launcher$13;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v1, p0, Lcom/android/launcher2/Launcher$13;->val$fromView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/launcher2/Launcher$13;->val$animated:Z

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher2/Launcher;->access$2200(Lcom/android/launcher2/Launcher;Landroid/view/View;ZZ)V

    .line 2553
    iget-object v0, p0, Lcom/android/launcher2/Launcher$13;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v1, p0, Lcom/android/launcher2/Launcher$13;->val$toView:Lcom/android/launcher2/AppsCustomizeTabHost;

    iget-boolean v2, p0, Lcom/android/launcher2/Launcher$13;->val$animated:Z

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher2/Launcher;->access$2200(Lcom/android/launcher2/Launcher;Landroid/view/View;ZZ)V

    .line 2555
    iget-object v0, p0, Lcom/android/launcher2/Launcher$13;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$100(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Workspace;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher$13;->val$springLoaded:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2557
    iget-object v0, p0, Lcom/android/launcher2/Launcher$13;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$100(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Workspace;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->hideScrollingIndicator(Z)V

    .line 2558
    iget-object v0, p0, Lcom/android/launcher2/Launcher$13;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->hideDockDivider()V

    .line 2560
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher$13;->animationCancelled:Z

    if-nez v0, :cond_1

    .line 2561
    iget-object v0, p0, Lcom/android/launcher2/Launcher$13;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Launcher;->updateWallpaperVisibility(Z)V

    .line 2565
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher$13;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$2300(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/SearchDropTargetBar;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2566
    iget-object v0, p0, Lcom/android/launcher2/Launcher$13;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$2300(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/SearchDropTargetBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/SearchDropTargetBar;->hideSearchBar(Z)V

    .line 2568
    :cond_2
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 2543
    iget-object v0, p0, Lcom/android/launcher2/Launcher$13;->this$0:Lcom/android/launcher2/Launcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->updateWallpaperVisibility(Z)V

    .line 2545
    iget-object v0, p0, Lcom/android/launcher2/Launcher$13;->val$toView:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->setTranslationX(F)V

    .line 2546
    iget-object v0, p0, Lcom/android/launcher2/Launcher$13;->val$toView:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->setTranslationY(F)V

    .line 2547
    iget-object v0, p0, Lcom/android/launcher2/Launcher$13;->val$toView:Lcom/android/launcher2/AppsCustomizeTabHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppsCustomizeTabHost;->setVisibility(I)V

    .line 2548
    iget-object v0, p0, Lcom/android/launcher2/Launcher$13;->val$toView:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->bringToFront()V

    .line 2549
    return-void
.end method

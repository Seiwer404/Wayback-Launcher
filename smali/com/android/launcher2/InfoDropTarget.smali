.class public Lcom/android/launcher2/InfoDropTarget;
.super Lcom/android/launcher2/ButtonDropTarget;
.source "InfoDropTarget.java"


# instance fields
.field private mDrawable:Landroid/graphics/drawable/TransitionDrawable;

.field private mOriginalTextColor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/InfoDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/ButtonDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method private isFromAllApps(Lcom/android/launcher2/DragSource;)Z
    .locals 1
    .param p1, "source"    # Lcom/android/launcher2/DragSource;

    .prologue
    .line 66
    instance-of v0, p1, Lcom/android/launcher2/AppsCustomizePagedView;

    return v0
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher2/DropTarget$DragObject;)Z
    .locals 3
    .param p1, "d"    # Lcom/android/launcher2/DropTarget$DragObject;

    .prologue
    const/4 v2, 0x0

    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, "componentName":Landroid/content/ComponentName;
    iget-object v1, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/launcher2/ApplicationInfo;

    if-eqz v1, :cond_2

    .line 76
    iget-object v1, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher2/ApplicationInfo;

    iget-object v0, v1, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    .line 82
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 83
    iget-object v1, p0, Lcom/android/launcher2/InfoDropTarget;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Launcher;->startApplicationDetailsActivity(Landroid/content/ComponentName;)V

    .line 87
    :cond_1
    iput-boolean v2, p1, Lcom/android/launcher2/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 88
    return v2

    .line 77
    :cond_2
    iget-object v1, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/launcher2/ShortcutInfo;

    if-eqz v1, :cond_3

    .line 78
    iget-object v1, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher2/ShortcutInfo;

    iget-object v1, v1, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0

    .line 79
    :cond_3
    iget-object v1, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/launcher2/PendingAddItemInfo;

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher2/PendingAddItemInfo;

    iget-object v0, v1, Lcom/android/launcher2/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public onDragEnd()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Lcom/android/launcher2/ButtonDropTarget;->onDragEnd()V

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/InfoDropTarget;->mActive:Z

    .line 110
    return-void
.end method

.method public onDragEnter(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 2
    .param p1, "d"    # Lcom/android/launcher2/DropTarget$DragObject;

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/android/launcher2/ButtonDropTarget;->onDragEnter(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 115
    iget-object v0, p0, Lcom/android/launcher2/InfoDropTarget;->mDrawable:Landroid/graphics/drawable/TransitionDrawable;

    iget v1, p0, Lcom/android/launcher2/InfoDropTarget;->mTransitionDuration:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 116
    iget v0, p0, Lcom/android/launcher2/InfoDropTarget;->mHoverColor:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/InfoDropTarget;->setTextColor(I)V

    .line 117
    return-void
.end method

.method public onDragExit(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 1
    .param p1, "d"    # Lcom/android/launcher2/DropTarget$DragObject;

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/android/launcher2/ButtonDropTarget;->onDragExit(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 122
    iget-boolean v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragComplete:Z

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/launcher2/InfoDropTarget;->mDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 124
    iget-object v0, p0, Lcom/android/launcher2/InfoDropTarget;->mOriginalTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/InfoDropTarget;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 126
    :cond_0
    return-void
.end method

.method public onDragStart(Lcom/android/launcher2/DragSource;Ljava/lang/Object;I)V
    .locals 3
    .param p1, "source"    # Lcom/android/launcher2/DragSource;
    .param p2, "info"    # Ljava/lang/Object;
    .param p3, "dragAction"    # I

    .prologue
    .line 93
    const/4 v0, 0x1

    .line 96
    .local v0, "isVisible":Z
    invoke-direct {p0, p1}, Lcom/android/launcher2/InfoDropTarget;->isFromAllApps(Lcom/android/launcher2/DragSource;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    const/4 v0, 0x0

    .line 100
    :cond_0
    iput-boolean v0, p0, Lcom/android/launcher2/InfoDropTarget;->mActive:Z

    .line 101
    iget-object v1, p0, Lcom/android/launcher2/InfoDropTarget;->mDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 102
    iget-object v1, p0, Lcom/android/launcher2/InfoDropTarget;->mOriginalTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/InfoDropTarget;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/launcher2/InfoDropTarget;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 104
    return-void

    .line 103
    :cond_1
    const/16 v2, 0x8

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 46
    invoke-super {p0}, Lcom/android/launcher2/ButtonDropTarget;->onFinishInflate()V

    .line 48
    invoke-virtual {p0}, Lcom/android/launcher2/InfoDropTarget;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/InfoDropTarget;->mOriginalTextColor:Landroid/content/res/ColorStateList;

    .line 51
    invoke-virtual {p0}, Lcom/android/launcher2/InfoDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 52
    .local v1, "r":Landroid/content/res/Resources;
    const v2, 0x7f080001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/InfoDropTarget;->mHoverColor:I

    .line 53
    invoke-virtual {p0}, Lcom/android/launcher2/InfoDropTarget;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v2, p0, Lcom/android/launcher2/InfoDropTarget;->mDrawable:Landroid/graphics/drawable/TransitionDrawable;

    .line 54
    iget-object v2, p0, Lcom/android/launcher2/InfoDropTarget;->mDrawable:Landroid/graphics/drawable/TransitionDrawable;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 57
    invoke-virtual {p0}, Lcom/android/launcher2/InfoDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    .line 58
    .local v0, "orientation":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 59
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v2

    if-nez v2, :cond_0

    .line 60
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/android/launcher2/InfoDropTarget;->setText(Ljava/lang/CharSequence;)V

    .line 63
    :cond_0
    return-void
.end method

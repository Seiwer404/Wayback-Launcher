.class public Lcom/android/launcher2/DragLayer;
.super Landroid/widget/FrameLayout;
.source "DragLayer.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/DragLayer$LayoutParams;
    }
.end annotation


# static fields
.field public static final ANIMATION_END_DISAPPEAR:I = 0x0

.field public static final ANIMATION_END_FADE_OUT:I = 0x1

.field public static final ANIMATION_END_REMAIN_VISIBLE:I = 0x2


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mAnchorViewInitialScrollX:I

.field private mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

.field private mCurrentResizeFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

.field private mDragController:Lcom/android/launcher2/DragController;

.field private mDropAnim:Landroid/animation/ValueAnimator;

.field private mDropView:Lcom/android/launcher2/DragView;

.field private mFadeOutAnim:Landroid/animation/ValueAnimator;

.field private mHitRect:Landroid/graphics/Rect;

.field private mHoverPointClosesFolder:Z

.field private mInScrollArea:Z

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

.field private mQsbIndex:I

.field private final mResizeFrames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AppWidgetResizeFrame;",
            ">;"
        }
    .end annotation
.end field

.field private mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

.field private mTmpXY:[I

.field private mWorkspaceIndex:I

.field private mXDown:I

.field private mYDown:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 84
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/DragLayer;->mTmpXY:[I

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    .line 62
    iput-object v2, p0, Lcom/android/launcher2/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    .line 63
    iput-object v2, p0, Lcom/android/launcher2/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    .line 64
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/launcher2/DragLayer;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    .line 65
    iput-object v2, p0, Lcom/android/launcher2/DragLayer;->mDropView:Lcom/android/launcher2/DragView;

    .line 66
    iput v3, p0, Lcom/android/launcher2/DragLayer;->mAnchorViewInitialScrollX:I

    .line 67
    iput-object v2, p0, Lcom/android/launcher2/DragLayer;->mAnchorView:Landroid/view/View;

    .line 69
    iput-boolean v3, p0, Lcom/android/launcher2/DragLayer;->mHoverPointClosesFolder:Z

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DragLayer;->mHitRect:Landroid/graphics/Rect;

    .line 71
    iput v4, p0, Lcom/android/launcher2/DragLayer;->mWorkspaceIndex:I

    .line 72
    iput v4, p0, Lcom/android/launcher2/DragLayer;->mQsbIndex:I

    .line 87
    invoke-virtual {p0, v3}, Lcom/android/launcher2/DragLayer;->setMotionEventSplittingEnabled(Z)V

    .line 88
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/DragLayer;->setChildrenDrawingOrderEnabled(Z)V

    .line 89
    invoke-virtual {p0, p0}, Lcom/android/launcher2/DragLayer;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/launcher2/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/DragLayer;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    .line 92
    invoke-virtual {p0}, Lcom/android/launcher2/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/DragLayer;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/DragLayer;)Lcom/android/launcher2/DragView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/DragLayer;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mDropView:Lcom/android/launcher2/DragView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/launcher2/DragLayer;Lcom/android/launcher2/DragView;)Lcom/android/launcher2/DragView;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/DragLayer;
    .param p1, "x1"    # Lcom/android/launcher2/DragView;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/launcher2/DragLayer;->mDropView:Lcom/android/launcher2/DragView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/launcher2/DragLayer;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/DragLayer;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mAnchorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/DragLayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/DragLayer;

    .prologue
    .line 49
    iget v0, p0, Lcom/android/launcher2/DragLayer;->mAnchorViewInitialScrollX:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/DragLayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/DragLayer;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/launcher2/DragLayer;->fadeOutDragView()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher2/DragLayer;)Lcom/android/launcher2/DragController;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/DragLayer;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mDragController:Lcom/android/launcher2/DragController;

    return-object v0
.end method

.method private fadeOutDragView()V
    .locals 3

    .prologue
    .line 668
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    .line 669
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 670
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 671
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 672
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher2/DragLayer$4;

    invoke-direct {v1, p0}, Lcom/android/launcher2/DragLayer$4;-><init>(Lcom/android/launcher2/DragLayer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 680
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher2/DragLayer$5;

    invoke-direct {v1, p0}, Lcom/android/launcher2/DragLayer$5;-><init>(Lcom/android/launcher2/DragLayer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 689
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 690
    return-void

    .line 670
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private handleTouchDown(Landroid/view/MotionEvent;Z)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "intercept"    # Z

    .prologue
    const/4 v6, 0x1

    .line 122
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 123
    .local v2, "hitRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v4, v7

    .line 124
    .local v4, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v5, v7

    .line 126
    .local v5, "y":I
    iget-object v7, p0, Lcom/android/launcher2/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppWidgetResizeFrame;

    .line 127
    .local v0, "child":Lcom/android/launcher2/AppWidgetResizeFrame;
    invoke-virtual {v0, v2}, Lcom/android/launcher2/AppWidgetResizeFrame;->getHitRect(Landroid/graphics/Rect;)V

    .line 128
    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 129
    invoke-virtual {v0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getLeft()I

    move-result v7

    sub-int v7, v4, v7

    invoke-virtual {v0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getTop()I

    move-result v8

    sub-int v8, v5, v8

    invoke-virtual {v0, v7, v8}, Lcom/android/launcher2/AppWidgetResizeFrame;->beginResizeIfPointInRegion(II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 130
    iput-object v0, p0, Lcom/android/launcher2/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    .line 131
    iput v4, p0, Lcom/android/launcher2/DragLayer;->mXDown:I

    .line 132
    iput v5, p0, Lcom/android/launcher2/DragLayer;->mYDown:I

    .line 133
    invoke-virtual {p0, v6}, Lcom/android/launcher2/DragLayer;->requestDisallowInterceptTouchEvent(Z)V

    .line 154
    .end local v0    # "child":Lcom/android/launcher2/AppWidgetResizeFrame;
    :goto_0
    return v6

    .line 139
    :cond_1
    iget-object v7, p0, Lcom/android/launcher2/DragLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v1

    .line 140
    .local v1, "currentFolder":Lcom/android/launcher2/Folder;
    if-eqz v1, :cond_3

    iget-object v7, p0, Lcom/android/launcher2/DragLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->isFolderClingVisible()Z

    move-result v7

    if-nez v7, :cond_3

    if-eqz p2, :cond_3

    .line 141
    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 142
    invoke-direct {p0, v1, p1}, Lcom/android/launcher2/DragLayer;->isEventOverFolderTextRegion(Lcom/android/launcher2/Folder;Landroid/view/MotionEvent;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 143
    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->dismissEditingName()V

    goto :goto_0

    .line 148
    :cond_2
    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 149
    invoke-direct {p0, v1, p1}, Lcom/android/launcher2/DragLayer;->isEventOverFolder(Lcom/android/launcher2/Folder;Landroid/view/MotionEvent;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 150
    iget-object v7, p0, Lcom/android/launcher2/DragLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->closeFolder()V

    goto :goto_0

    .line 154
    :cond_3
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private isEventOverFolder(Lcom/android/launcher2/Folder;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "folder"    # Lcom/android/launcher2/Folder;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 115
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const/4 v0, 0x1

    .line 118
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEventOverFolderTextRegion(Lcom/android/launcher2/Folder;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "folder"    # Lcom/android/launcher2/Folder;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 106
    invoke-virtual {p1}, Lcom/android/launcher2/Folder;->getEditTextRegion()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/DragLayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 107
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const/4 v0, 0x1

    .line 110
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendTapOutsideFolderAccessibilityEvent(Z)V
    .locals 5
    .param p1, "isEditingName"    # Z

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/android/launcher2/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "accessibility"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 214
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 215
    if-eqz p1, :cond_1

    const v2, 0x7f0d0058

    .line 216
    .local v2, "stringId":I
    :goto_0
    const/16 v3, 0x8

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 218
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v1}, Lcom/android/launcher2/DragLayer;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 219
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher2/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 222
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v2    # "stringId":I
    :cond_0
    return-void

    .line 215
    :cond_1
    const v2, 0x7f0d0057

    goto :goto_0
.end method

.method private updateChildIndices()V
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/DragLayer;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/DragLayer;->mWorkspaceIndex:I

    .line 705
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getSearchBar()Lcom/android/launcher2/SearchDropTargetBar;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/DragLayer;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/DragLayer;->mQsbIndex:I

    .line 707
    :cond_0
    return-void
.end method


# virtual methods
.method public addResizeFrame(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/CellLayout;)V
    .locals 4
    .param p1, "itemInfo"    # Lcom/android/launcher2/ItemInfo;
    .param p2, "widget"    # Lcom/android/launcher2/LauncherAppWidgetHostView;
    .param p3, "cellLayout"    # Lcom/android/launcher2/CellLayout;

    .prologue
    const/4 v3, -0x1

    .line 416
    new-instance v1, Lcom/android/launcher2/AppWidgetResizeFrame;

    invoke-virtual {p0}, Lcom/android/launcher2/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p2, p3, p0}, Lcom/android/launcher2/AppWidgetResizeFrame;-><init>(Landroid/content/Context;Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/DragLayer;)V

    .line 419
    .local v1, "resizeFrame":Lcom/android/launcher2/AppWidgetResizeFrame;
    new-instance v0, Lcom/android/launcher2/DragLayer$LayoutParams;

    invoke-direct {v0, v3, v3}, Lcom/android/launcher2/DragLayer$LayoutParams;-><init>(II)V

    .line 420
    .local v0, "lp":Lcom/android/launcher2/DragLayer$LayoutParams;
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/launcher2/DragLayer$LayoutParams;->customPosition:Z

    .line 422
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/DragLayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    iget-object v2, p0, Lcom/android/launcher2/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/AppWidgetResizeFrame;->snapToWidget(Z)V

    .line 426
    return-void
.end method

.method public animateView(Lcom/android/launcher2/DragView;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;ILandroid/view/View;)V
    .locals 3
    .param p1, "view"    # Lcom/android/launcher2/DragView;
    .param p2, "updateCb"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/animation/TimeInterpolator;
    .param p5, "onCompleteRunnable"    # Ljava/lang/Runnable;
    .param p6, "animationEndStyle"    # I
    .param p7, "anchorView"    # Landroid/view/View;

    .prologue
    .line 612
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 616
    :cond_1
    iput-object p1, p0, Lcom/android/launcher2/DragLayer;->mDropView:Lcom/android/launcher2/DragView;

    .line 617
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mDropView:Lcom/android/launcher2/DragView;

    invoke-virtual {v0}, Lcom/android/launcher2/DragView;->cancelAnimation()V

    .line 618
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mDropView:Lcom/android/launcher2/DragView;

    invoke-virtual {v0}, Lcom/android/launcher2/DragView;->resetLayoutParams()V

    .line 621
    if-eqz p7, :cond_2

    .line 622
    invoke-virtual {p7}, Landroid/view/View;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/DragLayer;->mAnchorViewInitialScrollX:I

    .line 624
    :cond_2
    iput-object p7, p0, Lcom/android/launcher2/DragLayer;->mAnchorView:Landroid/view/View;

    .line 627
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    .line 628
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 629
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 630
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 631
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 632
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher2/DragLayer$3;

    invoke-direct {v1, p0, p5, p6}, Lcom/android/launcher2/DragLayer$3;-><init>(Lcom/android/launcher2/DragLayer;Ljava/lang/Runnable;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 649
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 650
    return-void

    .line 630
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public animateView(Lcom/android/launcher2/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V
    .locals 24
    .param p1, "view"    # Lcom/android/launcher2/DragView;
    .param p2, "from"    # Landroid/graphics/Rect;
    .param p3, "to"    # Landroid/graphics/Rect;
    .param p4, "finalAlpha"    # F
    .param p5, "initScaleX"    # F
    .param p6, "initScaleY"    # F
    .param p7, "finalScaleX"    # F
    .param p8, "finalScaleY"    # F
    .param p9, "duration"    # I
    .param p10, "motionInterpolator"    # Landroid/view/animation/Interpolator;
    .param p11, "alphaInterpolator"    # Landroid/view/animation/Interpolator;
    .param p12, "onCompleteRunnable"    # Ljava/lang/Runnable;
    .param p13, "animationEndStyle"    # I
    .param p14, "anchorView"    # Landroid/view/View;

    .prologue
    .line 546
    move-object/from16 v0, p3

    iget v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    move-object/from16 v0, p3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    move/from16 v21, v0

    .line 548
    .local v21, "dist":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .line 549
    .local v23, "res":Landroid/content/res/Resources;
    const v2, 0x7f0a0016

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v0, v2

    move/from16 v22, v0

    .line 552
    .local v22, "maxDist":F
    if-gez p9, :cond_1

    .line 553
    const v2, 0x7f0a0014

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p9

    .line 554
    cmpg-float v2, v21, v22

    if-gez v2, :cond_0

    .line 555
    move/from16 v0, p9

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/DragLayer;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    div-float v4, v21, v22

    invoke-interface {v3, v4}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 p9, v0

    .line 557
    :cond_0
    const v2, 0x7f0a0013

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move/from16 v0, p9

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result p9

    .line 561
    :cond_1
    const/16 v17, 0x0

    .line 562
    .local v17, "interpolator":Landroid/animation/TimeInterpolator;
    if-eqz p11, :cond_2

    if-nez p10, :cond_3

    .line 563
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragLayer;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    move-object/from16 v17, v0

    .line 567
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragView;->getAlpha()F

    move-result v12

    .line 568
    .local v12, "initAlpha":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragView;->getScaleX()F

    move-result v7

    .line 569
    .local v7, "dropViewScale":F
    new-instance v1, Lcom/android/launcher2/DragLayer$2;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p11

    move-object/from16 v5, p10

    move/from16 v6, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p4

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    invoke-direct/range {v1 .. v14}, Lcom/android/launcher2/DragLayer$2;-><init>(Lcom/android/launcher2/DragLayer;Lcom/android/launcher2/DragView;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;FFFFFFFLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .local v1, "updateCb":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object v15, v1

    move/from16 v16, p9

    move-object/from16 v18, p12

    move/from16 v19, p13

    move-object/from16 v20, p14

    .line 604
    invoke-virtual/range {v13 .. v20}, Lcom/android/launcher2/DragLayer;->animateView(Lcom/android/launcher2/DragView;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    .line 606
    return-void
.end method

.method public animateViewIntoPosition(Lcom/android/launcher2/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V
    .locals 17
    .param p1, "view"    # Lcom/android/launcher2/DragView;
    .param p2, "fromX"    # I
    .param p3, "fromY"    # I
    .param p4, "toX"    # I
    .param p5, "toY"    # I
    .param p6, "finalAlpha"    # F
    .param p7, "initScaleX"    # F
    .param p8, "initScaleY"    # F
    .param p9, "finalScaleX"    # F
    .param p10, "finalScaleY"    # F
    .param p11, "onCompleteRunnable"    # Ljava/lang/Runnable;
    .param p12, "animationEndStyle"    # I
    .param p13, "duration"    # I
    .param p14, "anchorView"    # Landroid/view/View;

    .prologue
    .line 511
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragView;->getMeasuredWidth()I

    move-result v2

    add-int v2, v2, p2

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragView;->getMeasuredHeight()I

    move-result v3

    add-int v3, v3, p3

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 513
    .local v4, "from":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragView;->getMeasuredWidth()I

    move-result v2

    add-int v2, v2, p4

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragView;->getMeasuredHeight()I

    move-result v3

    add-int v3, v3, p5

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 514
    .local v5, "to":Landroid/graphics/Rect;
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p13

    move-object/from16 v14, p11

    move/from16 v15, p12

    move-object/from16 v16, p14

    invoke-virtual/range {v2 .. v16}, Lcom/android/launcher2/DragLayer;->animateView(Lcom/android/launcher2/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    .line 516
    return-void
.end method

.method public animateViewIntoPosition(Lcom/android/launcher2/DragView;Landroid/view/View;)V
    .locals 1
    .param p1, "dragView"    # Lcom/android/launcher2/DragView;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 429
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/DragLayer;->animateViewIntoPosition(Lcom/android/launcher2/DragView;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 430
    return-void
.end method

.method public animateViewIntoPosition(Lcom/android/launcher2/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V
    .locals 24
    .param p1, "dragView"    # Lcom/android/launcher2/DragView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "duration"    # I
    .param p4, "onFinishAnimationRunnable"    # Ljava/lang/Runnable;
    .param p5, "anchorView"    # Landroid/view/View;

    .prologue
    .line 451
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v21

    check-cast v21, Lcom/android/launcher2/ShortcutAndWidgetContainer;

    .line 452
    .local v21, "parentChildren":Lcom/android/launcher2/ShortcutAndWidgetContainer;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 453
    .local v20, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    .line 455
    new-instance v22, Landroid/graphics/Rect;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Rect;-><init>()V

    .line 456
    .local v22, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 458
    const/4 v3, 0x2

    new-array v0, v3, [I

    move-object/from16 v19, v0

    .line 459
    .local v19, "coord":[I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScaleX()F

    move-result v18

    .line 460
    .local v18, "childScale":F
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v10, v10, v18

    mul-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v4, v9

    aput v4, v19, v3

    .line 461
    const/4 v3, 0x1

    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v10, v10, v18

    mul-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v4, v9

    aput v4, v19, v3

    .line 465
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Lcom/android/launcher2/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v12

    .line 468
    .local v12, "scale":F
    mul-float v12, v12, v18

    .line 469
    const/4 v3, 0x0

    aget v7, v19, v3

    .line 470
    .local v7, "toX":I
    const/4 v3, 0x1

    aget v8, v19, v3

    .line 471
    .local v8, "toY":I
    move-object/from16 v0, p2

    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move-object/from16 v23, p2

    .line 472
    check-cast v23, Landroid/widget/TextView;

    .line 477
    .local v23, "tv":Landroid/widget/TextView;
    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v12

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v8, v3

    .line 478
    int-to-float v3, v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragView;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v9, v12

    mul-float/2addr v4, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v4, v9

    sub-float/2addr v3, v4

    float-to-int v8, v3

    .line 479
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v12

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v7, v3

    .line 492
    .end local v23    # "tv":Landroid/widget/TextView;
    :goto_0
    move-object/from16 v0, v22

    iget v5, v0, Landroid/graphics/Rect;->left:I

    .line 493
    .local v5, "fromX":I
    move-object/from16 v0, v22

    iget v6, v0, Landroid/graphics/Rect;->top:I

    .line 494
    .local v6, "fromY":I
    const/4 v3, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 495
    new-instance v14, Lcom/android/launcher2/DragLayer$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v14, v0, v1, v2}, Lcom/android/launcher2/DragLayer$1;-><init>(Lcom/android/launcher2/DragLayer;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 503
    .local v14, "onCompleteRunnable":Ljava/lang/Runnable;
    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move v13, v12

    move/from16 v16, p3

    move-object/from16 v17, p5

    invoke-virtual/range {v3 .. v17}, Lcom/android/launcher2/DragLayer;->animateViewIntoPosition(Lcom/android/launcher2/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V

    .line 505
    return-void

    .line 480
    .end local v5    # "fromX":I
    .end local v6    # "fromY":I
    .end local v14    # "onCompleteRunnable":Ljava/lang/Runnable;
    :cond_0
    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/android/launcher2/FolderIcon;

    if-eqz v3, :cond_1

    .line 482
    int-to-float v3, v8

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v12

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v4, v9

    sub-float/2addr v3, v4

    float-to-int v8, v3

    .line 483
    int-to-float v3, v8

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragView;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v4, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v4, v9

    sub-float/2addr v3, v4

    float-to-int v8, v3

    .line 485
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v12

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v7, v3

    goto :goto_0

    .line 487
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragView;->getHeight()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v12

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v8, v3

    .line 488
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v12

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v7, v3

    goto/16 :goto_0
.end method

.method public animateViewIntoPosition(Lcom/android/launcher2/DragView;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "dragView"    # Lcom/android/launcher2/DragView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "onFinishAnimationRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 446
    const/4 v3, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/DragLayer;->animateViewIntoPosition(Lcom/android/launcher2/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    .line 447
    return-void
.end method

.method public animateViewIntoPosition(Lcom/android/launcher2/DragView;[IFFFILjava/lang/Runnable;I)V
    .locals 19
    .param p1, "dragView"    # Lcom/android/launcher2/DragView;
    .param p2, "pos"    # [I
    .param p3, "alpha"    # F
    .param p4, "scaleX"    # F
    .param p5, "scaleY"    # F
    .param p6, "animationEndStyle"    # I
    .param p7, "onFinishRunnable"    # Ljava/lang/Runnable;
    .param p8, "duration"    # I

    .prologue
    .line 435
    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    .line 436
    .local v18, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 437
    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->left:I

    .line 438
    .local v5, "fromX":I
    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/Rect;->top:I

    .line 440
    .local v6, "fromY":I
    const/4 v3, 0x0

    aget v7, p2, v3

    const/4 v3, 0x1

    aget v8, p2, v3

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v9, p3

    move/from16 v12, p4

    move/from16 v13, p5

    move-object/from16 v14, p7

    move/from16 v15, p6

    move/from16 v16, p8

    invoke-virtual/range {v3 .. v17}, Lcom/android/launcher2/DragLayer;->animateViewIntoPosition(Lcom/android/launcher2/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V

    .line 442
    return-void
.end method

.method public clearAllResizeFrames()V
    .locals 3

    .prologue
    .line 397
    iget-object v2, p0, Lcom/android/launcher2/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 398
    iget-object v2, p0, Lcom/android/launcher2/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppWidgetResizeFrame;

    .line 399
    .local v0, "frame":Lcom/android/launcher2/AppWidgetResizeFrame;
    invoke-virtual {v0}, Lcom/android/launcher2/AppWidgetResizeFrame;->commitResize()V

    .line 400
    invoke-virtual {p0, v0}, Lcom/android/launcher2/DragLayer;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 402
    .end local v0    # "frame":Lcom/android/launcher2/AppWidgetResizeFrame;
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 404
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public clearAnimatedView()V
    .locals 2

    .prologue
    .line 653
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 656
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mDropView:Lcom/android/launcher2/DragView;

    if-eqz v0, :cond_1

    .line 657
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mDragController:Lcom/android/launcher2/DragController;

    iget-object v1, p0, Lcom/android/launcher2/DragLayer;->mDropView:Lcom/android/launcher2/DragView;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragController;->onDeferredEndDrag(Lcom/android/launcher2/DragView;)V

    .line 659
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/DragLayer;->mDropView:Lcom/android/launcher2/DragView;

    .line 660
    invoke-virtual {p0}, Lcom/android/launcher2/DragLayer;->invalidate()V

    .line 661
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x0

    .line 747
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 749
    iget-boolean v6, p0, Lcom/android/launcher2/DragLayer;->mInScrollArea:Z

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v6

    if-nez v6, :cond_0

    .line 750
    iget-object v6, p0, Lcom/android/launcher2/DragLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v5

    .line 751
    .local v5, "workspace":Lcom/android/launcher2/Workspace;
    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getWidth()I

    move-result v4

    .line 752
    .local v4, "width":I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 753
    .local v0, "childRect":Landroid/graphics/Rect;
    invoke-virtual {v5, v10}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6, v0}, Lcom/android/launcher2/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 755
    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getNextPage()I

    move-result v2

    .line 756
    .local v2, "page":I
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v5, v6}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 757
    .local v1, "leftPage":Lcom/android/launcher2/CellLayout;
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    .line 759
    .local v3, "rightPage":Lcom/android/launcher2/CellLayout;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getIsDragOverlapping()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 760
    iget-object v6, p0, Lcom/android/launcher2/DragLayer;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    iget v7, v0, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/android/launcher2/DragLayer;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6, v10, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 762
    iget-object v6, p0, Lcom/android/launcher2/DragLayer;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 769
    .end local v0    # "childRect":Landroid/graphics/Rect;
    .end local v1    # "leftPage":Lcom/android/launcher2/CellLayout;
    .end local v2    # "page":I
    .end local v3    # "rightPage":Lcom/android/launcher2/CellLayout;
    .end local v4    # "width":I
    .end local v5    # "workspace":Lcom/android/launcher2/Workspace;
    :cond_0
    :goto_0
    return-void

    .line 763
    .restart local v0    # "childRect":Landroid/graphics/Rect;
    .restart local v1    # "leftPage":Lcom/android/launcher2/CellLayout;
    .restart local v2    # "page":I
    .restart local v3    # "rightPage":Lcom/android/launcher2/CellLayout;
    .restart local v4    # "width":I
    .restart local v5    # "workspace":Lcom/android/launcher2/Workspace;
    :cond_1
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getIsDragOverlapping()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 764
    iget-object v6, p0, Lcom/android/launcher2/DragLayer;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/android/launcher2/DragLayer;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    sub-int v7, v4, v7

    iget v8, v0, Landroid/graphics/Rect;->top:I

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6, v7, v8, v4, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 766
    iget-object v6, p0, Lcom/android/launcher2/DragLayer;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/DragController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/DragController;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public getAnimatedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mDropView:Lcom/android/launcher2/DragView;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 0
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 716
    return p2
.end method

.method public getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F
    .locals 9
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "coord"    # [I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 297
    const/high16 v1, 0x3f800000    # 1.0f

    .line 298
    .local v1, "scale":F
    const/4 v4, 0x2

    new-array v0, v4, [F

    aget v4, p2, v7

    int-to-float v4, v4

    aput v4, v0, v7

    aget v4, p2, v8

    int-to-float v4, v4

    aput v4, v0, v8

    .line 299
    .local v0, "pt":[F
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 300
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v4

    mul-float/2addr v1, v4

    .line 301
    aget v4, v0, v7

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v7

    .line 302
    aget v4, v0, v8

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v8

    .line 303
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 304
    .local v3, "viewParent":Landroid/view/ViewParent;
    :goto_0
    instance-of v4, v3, Landroid/view/View;

    if-eqz v4, :cond_0

    if-eq v3, p0, :cond_0

    move-object v2, v3

    .line 305
    check-cast v2, Landroid/view/View;

    .line 306
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 307
    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v4

    mul-float/2addr v1, v4

    .line 308
    aget v4, v0, v7

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v7

    .line 309
    aget v4, v0, v8

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v8

    .line 310
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 311
    goto :goto_0

    .line 312
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    aget v4, v0, v7

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, p2, v7

    .line 313
    aget v4, v0, v8

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, p2, v8

    .line 314
    return v1
.end method

.method public getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F
    .locals 6
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "r"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 272
    iget-object v1, p0, Lcom/android/launcher2/DragLayer;->mTmpXY:[I

    aput v4, v1, v4

    .line 273
    iget-object v1, p0, Lcom/android/launcher2/DragLayer;->mTmpXY:[I

    aput v4, v1, v5

    .line 274
    iget-object v1, p0, Lcom/android/launcher2/DragLayer;->mTmpXY:[I

    invoke-virtual {p0, p1, v1}, Lcom/android/launcher2/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v0

    .line 275
    .local v0, "scale":F
    iget-object v1, p0, Lcom/android/launcher2/DragLayer;->mTmpXY:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/android/launcher2/DragLayer;->mTmpXY:[I

    aget v2, v2, v5

    iget-object v3, p0, Lcom/android/launcher2/DragLayer;->mTmpXY:[I

    aget v3, v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher2/DragLayer;->mTmpXY:[I

    aget v4, v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 277
    return v0
.end method

.method public getLocationInDragLayer(Landroid/view/View;[I)F
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "loc"    # [I

    .prologue
    const/4 v1, 0x0

    .line 281
    aput v1, p2, v1

    .line 282
    const/4 v0, 0x1

    aput v1, p2, v0

    .line 283
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v0

    return v0
.end method

.method public getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "r"    # Landroid/graphics/Rect;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 318
    const/4 v7, 0x2

    new-array v1, v7, [I

    .line 319
    .local v1, "loc":[I
    invoke-virtual {p0, v1}, Lcom/android/launcher2/DragLayer;->getLocationInWindow([I)V

    .line 320
    aget v5, v1, v8

    .line 321
    .local v5, "x":I
    aget v6, v1, v9

    .line 323
    .local v6, "y":I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 324
    aget v3, v1, v8

    .line 325
    .local v3, "vX":I
    aget v4, v1, v9

    .line 327
    .local v4, "vY":I
    sub-int v0, v3, v5

    .line 328
    .local v0, "left":I
    sub-int v2, v4, v6

    .line 329
    .local v2, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {p2, v0, v2, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 330
    return-void
.end method

.method public hasResizeFrames()Z
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWidgetBeingResized()Z
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 694
    invoke-direct {p0}, Lcom/android/launcher2/DragLayer;->updateChildIndices()V

    .line 695
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 699
    invoke-direct {p0}, Lcom/android/launcher2/DragLayer;->updateChildIndices()V

    .line 700
    return-void
.end method

.method onEnterScrollArea(I)V
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 736
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/DragLayer;->mInScrollArea:Z

    .line 737
    invoke-virtual {p0}, Lcom/android/launcher2/DragLayer;->invalidate()V

    .line 738
    return-void
.end method

.method onExitScrollArea()V
    .locals 1

    .prologue
    .line 741
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/DragLayer;->mInScrollArea:Z

    .line 742
    invoke-virtual {p0}, Lcom/android/launcher2/DragLayer;->invalidate()V

    .line 743
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 170
    iget-object v6, p0, Lcom/android/launcher2/DragLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher2/DragLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v6

    if-nez v6, :cond_1

    .line 208
    :cond_0
    :goto_0
    return v4

    .line 173
    :cond_1
    iget-object v6, p0, Lcom/android/launcher2/DragLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v2

    .line 174
    .local v2, "currentFolder":Lcom/android/launcher2/Folder;
    if-eqz v2, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/android/launcher2/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "accessibility"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 179
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 180
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 182
    .local v1, "action":I
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 195
    :goto_1
    :pswitch_1
    invoke-direct {p0, v2, p1}, Lcom/android/launcher2/DragLayer;->isEventOverFolder(Lcom/android/launcher2/Folder;Landroid/view/MotionEvent;)Z

    move-result v3

    .line 196
    .local v3, "isOverFolder":Z
    if-nez v3, :cond_4

    iget-boolean v6, p0, Lcom/android/launcher2/DragLayer;->mHoverPointClosesFolder:Z

    if-nez v6, :cond_4

    .line 197
    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/launcher2/DragLayer;->sendTapOutsideFolderAccessibilityEvent(Z)V

    .line 198
    iput-boolean v5, p0, Lcom/android/launcher2/DragLayer;->mHoverPointClosesFolder:Z

    move v4, v5

    .line 199
    goto :goto_0

    .line 184
    .end local v3    # "isOverFolder":Z
    :pswitch_2
    invoke-direct {p0, v2, p1}, Lcom/android/launcher2/DragLayer;->isEventOverFolder(Lcom/android/launcher2/Folder;Landroid/view/MotionEvent;)Z

    move-result v3

    .line 185
    .restart local v3    # "isOverFolder":Z
    if-nez v3, :cond_2

    .line 186
    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/launcher2/DragLayer;->sendTapOutsideFolderAccessibilityEvent(Z)V

    .line 187
    iput-boolean v5, p0, Lcom/android/launcher2/DragLayer;->mHoverPointClosesFolder:Z

    move v4, v5

    .line 188
    goto :goto_0

    .line 189
    :cond_2
    if-eqz v3, :cond_3

    .line 190
    iput-boolean v4, p0, Lcom/android/launcher2/DragLayer;->mHoverPointClosesFolder:Z

    goto :goto_1

    :cond_3
    move v4, v5

    .line 192
    goto :goto_0

    .line 200
    :cond_4
    if-eqz v3, :cond_5

    .line 201
    iput-boolean v4, p0, Lcom/android/launcher2/DragLayer;->mHoverPointClosesFolder:Z

    goto :goto_0

    :cond_5
    move v4, v5

    .line 203
    goto :goto_0

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 159
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 160
    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/DragLayer;->handleTouchDown(Landroid/view/MotionEvent;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    :goto_0
    return v0

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/DragLayer;->clearAllResizeFrames()V

    .line 165
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/DragController;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 382
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 383
    invoke-virtual {p0}, Lcom/android/launcher2/DragLayer;->getChildCount()I

    move-result v1

    .line 384
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 385
    invoke-virtual {p0, v3}, Lcom/android/launcher2/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 386
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 387
    .local v2, "flp":Landroid/widget/FrameLayout$LayoutParams;
    instance-of v5, v2, Lcom/android/launcher2/DragLayer$LayoutParams;

    if-eqz v5, :cond_0

    move-object v4, v2

    .line 388
    check-cast v4, Lcom/android/launcher2/DragLayer$LayoutParams;

    .line 389
    .local v4, "lp":Lcom/android/launcher2/DragLayer$LayoutParams;
    iget-boolean v5, v4, Lcom/android/launcher2/DragLayer$LayoutParams;->customPosition:Z

    if-eqz v5, :cond_0

    .line 390
    iget v5, v4, Lcom/android/launcher2/DragLayer$LayoutParams;->x:I

    iget v6, v4, Lcom/android/launcher2/DragLayer$LayoutParams;->y:I

    iget v7, v4, Lcom/android/launcher2/DragLayer$LayoutParams;->x:I

    iget v8, v4, Lcom/android/launcher2/DragLayer$LayoutParams;->width:I

    add-int/2addr v7, v8

    iget v8, v4, Lcom/android/launcher2/DragLayer$LayoutParams;->y:I

    iget v9, v4, Lcom/android/launcher2/DragLayer$LayoutParams;->height:I

    add-int/2addr v8, v9

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 384
    .end local v4    # "lp":Lcom/android/launcher2/DragLayer$LayoutParams;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 394
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "flp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 233
    const/4 v1, 0x0

    .line 234
    .local v1, "handled":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 236
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v2, v5

    .line 237
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v3, v5

    .line 239
    .local v3, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_1

    .line 240
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_1

    .line 241
    const/4 v5, 0x0

    invoke-direct {p0, p1, v5}, Lcom/android/launcher2/DragLayer;->handleTouchDown(Landroid/view/MotionEvent;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 261
    :cond_0
    :goto_0
    return v4

    .line 247
    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    if-eqz v5, :cond_2

    .line 248
    const/4 v1, 0x1

    .line 249
    packed-switch v0, :pswitch_data_0

    .line 260
    :cond_2
    :goto_1
    if-nez v1, :cond_0

    .line 261
    iget-object v4, p0, Lcom/android/launcher2/DragLayer;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v4, p1}, Lcom/android/launcher2/DragController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0

    .line 251
    :pswitch_0
    iget-object v5, p0, Lcom/android/launcher2/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    iget v6, p0, Lcom/android/launcher2/DragLayer;->mXDown:I

    sub-int v6, v2, v6

    iget v7, p0, Lcom/android/launcher2/DragLayer;->mYDown:I

    sub-int v7, v3, v7

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher2/AppWidgetResizeFrame;->visualizeResizeForDelta(II)V

    goto :goto_1

    .line 255
    :pswitch_1
    iget-object v5, p0, Lcom/android/launcher2/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    iget v6, p0, Lcom/android/launcher2/DragLayer;->mXDown:I

    sub-int v6, v2, v6

    iget v7, p0, Lcom/android/launcher2/DragLayer;->mYDown:I

    sub-int v7, v3, v7

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher2/AppWidgetResizeFrame;->visualizeResizeForDelta(II)V

    .line 256
    iget-object v5, p0, Lcom/android/launcher2/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    invoke-virtual {v5}, Lcom/android/launcher2/AppWidgetResizeFrame;->onTouchUp()V

    .line 257
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/launcher2/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    goto :goto_1

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setup(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/DragController;)V
    .locals 0
    .param p1, "launcher"    # Lcom/android/launcher2/Launcher;
    .param p2, "controller"    # Lcom/android/launcher2/DragController;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/launcher2/DragLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 97
    iput-object p2, p0, Lcom/android/launcher2/DragLayer;->mDragController:Lcom/android/launcher2/DragController;

    .line 98
    return-void
.end method

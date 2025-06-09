.class public Lcom/android/launcher2/DragController;
.super Ljava/lang/Object;
.source "DragController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/DragController$ScrollRunnable;,
        Lcom/android/launcher2/DragController$DragListener;
    }
.end annotation


# static fields
.field public static DRAG_ACTION_COPY:I = 0x0

.field public static DRAG_ACTION_MOVE:I = 0x0

.field private static final MAX_FLING_DEGREES:F = 35.0f

.field private static final PROFILE_DRAWING_DURING_DRAG:Z = false

.field private static final RESCROLL_DELAY:I = 0x2ee

.field private static final SCROLL_DELAY:I = 0x1f4

.field static final SCROLL_LEFT:I = 0x0

.field static final SCROLL_NONE:I = -0x1

.field private static final SCROLL_OUTSIDE_ZONE:I = 0x0

.field static final SCROLL_RIGHT:I = 0x1

.field private static final SCROLL_WAITING_IN_ZONE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Launcher.DragController"

.field private static final VIBRATE_DURATION:I = 0xf


# instance fields
.field private final mCoordinatesTemp:[I

.field private mDistanceSinceScroll:I

.field private mDragLayerRect:Landroid/graphics/Rect;

.field private mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

.field private mDragScroller:Lcom/android/launcher2/DragScroller;

.field private mDragging:Z

.field private mDropTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/DropTarget;",
            ">;"
        }
    .end annotation
.end field

.field private mFlingToDeleteDropTarget:Lcom/android/launcher2/DropTarget;

.field protected mFlingToDeleteThresholdVelocity:I

.field private mHandler:Landroid/os/Handler;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mLastDropTarget:Lcom/android/launcher2/DropTarget;

.field private mLastTouch:[I

.field private mLastTouchUpTime:J

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/DragController$DragListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMotionDownX:I

.field private mMotionDownY:I

.field private mMoveTarget:Landroid/view/View;

.field private mRectTemp:Landroid/graphics/Rect;

.field private mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

.field private mScrollState:I

.field private mScrollView:Landroid/view/View;

.field private mScrollZone:I

.field private mTmpPoint:[I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVibrator:Landroid/os/Vibrator;

.field private mWindowToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput v0, Lcom/android/launcher2/DragController;->DRAG_ACTION_MOVE:I

    .line 50
    const/4 v0, 0x1

    sput v0, Lcom/android/launcher2/DragController;->DRAG_ACTION_COPY:I

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 6
    .param p1, "launcher"    # Lcom/android/launcher2/Launcher;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/DragController;->mRectTemp:Landroid/graphics/Rect;

    .line 73
    new-array v2, v4, [I

    iput-object v2, p0, Lcom/android/launcher2/DragController;->mCoordinatesTemp:[I

    .line 92
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/DragController;->mDropTargets:Ljava/util/ArrayList;

    .line 93
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/DragController;->mListeners:Ljava/util/ArrayList;

    .line 105
    iput v5, p0, Lcom/android/launcher2/DragController;->mScrollState:I

    .line 106
    new-instance v2, Lcom/android/launcher2/DragController$ScrollRunnable;

    invoke-direct {v2, p0}, Lcom/android/launcher2/DragController$ScrollRunnable;-><init>(Lcom/android/launcher2/DragController;)V

    iput-object v2, p0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    .line 112
    new-array v2, v4, [I

    iput-object v2, p0, Lcom/android/launcher2/DragController;->mLastTouch:[I

    .line 113
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/launcher2/DragController;->mLastTouchUpTime:J

    .line 114
    iput v5, p0, Lcom/android/launcher2/DragController;->mDistanceSinceScroll:I

    .line 116
    new-array v2, v4, [I

    iput-object v2, p0, Lcom/android/launcher2/DragController;->mTmpPoint:[I

    .line 117
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    .line 149
    invoke-virtual {p1}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 150
    .local v1, "r":Landroid/content/res/Resources;
    iput-object p1, p0, Lcom/android/launcher2/DragController;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 151
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/DragController;->mHandler:Landroid/os/Handler;

    .line 152
    const v2, 0x7f0b002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/DragController;->mScrollZone:I

    .line 153
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 154
    const-string v2, "vibrator"

    invoke-virtual {p1, v2}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, p0, Lcom/android/launcher2/DragController;->mVibrator:Landroid/os/Vibrator;

    .line 156
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 157
    .local v0, "density":F
    const/high16 v2, 0x7f0a0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Lcom/android/launcher2/DragController;->mFlingToDeleteThresholdVelocity:I

    .line 159
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/DragController;)Lcom/android/launcher2/DragScroller;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/DragController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDragScroller:Lcom/android/launcher2/DragScroller;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/launcher2/DragController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/DragController;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/android/launcher2/DragController;->mScrollState:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/launcher2/DragController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/DragController;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/android/launcher2/DragController;->mDistanceSinceScroll:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/launcher2/DragController;)Lcom/android/launcher2/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/DragController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mLauncher:Lcom/android/launcher2/Launcher;

    return-object v0
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 754
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 755
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 757
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 758
    return-void
.end method

.method private clearScrollRunnable()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 472
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 473
    iget v0, p0, Lcom/android/launcher2/DragController;->mScrollState:I

    if-ne v0, v2, :cond_0

    .line 474
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/DragController;->mScrollState:I

    .line 475
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/DragController$ScrollRunnable;->setDirection(I)V

    .line 476
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDragScroller:Lcom/android/launcher2/DragScroller;

    invoke-interface {v0}, Lcom/android/launcher2/DragScroller;->onExitScrollArea()Z

    .line 477
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/DragLayer;->onExitScrollArea()V

    .line 479
    :cond_0
    return-void
.end method

.method private drop(FF)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 658
    iget-object v1, p0, Lcom/android/launcher2/DragController;->mCoordinatesTemp:[I

    .line 659
    .local v1, "coordinates":[I
    float-to-int v3, p1

    float-to-int v4, p2

    invoke-direct {p0, v3, v4, v1}, Lcom/android/launcher2/DragController;->findDropTarget(II[I)Lcom/android/launcher2/DropTarget;

    move-result-object v2

    .line 661
    .local v2, "dropTarget":Lcom/android/launcher2/DropTarget;
    iget-object v3, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    aget v4, v1, v5

    iput v4, v3, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    .line 662
    iget-object v3, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    aget v4, v1, v6

    iput v4, v3, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    .line 663
    const/4 v0, 0x0

    .line 664
    .local v0, "accepted":Z
    if-eqz v2, :cond_0

    .line 665
    iget-object v3, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iput-boolean v6, v3, Lcom/android/launcher2/DropTarget$DragObject;->dragComplete:Z

    .line 666
    iget-object v3, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {v2, v3}, Lcom/android/launcher2/DropTarget;->onDragExit(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 667
    iget-object v3, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {v2, v3}, Lcom/android/launcher2/DropTarget;->acceptDrop(Lcom/android/launcher2/DropTarget$DragObject;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 668
    iget-object v3, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {v2, v3}, Lcom/android/launcher2/DropTarget;->onDrop(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 669
    const/4 v0, 0x1

    .line 672
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iget-object v3, v3, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    check-cast v2, Landroid/view/View;

    .end local v2    # "dropTarget":Lcom/android/launcher2/DropTarget;
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {v3, v2, v4, v5, v0}, Lcom/android/launcher2/DragSource;->onDropCompleted(Landroid/view/View;Lcom/android/launcher2/DropTarget$DragObject;ZZ)V

    .line 673
    return-void
.end method

.method private dropOnFlingToDeleteTarget(FFLandroid/graphics/PointF;)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "vel"    # Landroid/graphics/PointF;

    .prologue
    const/4 v6, 0x1

    .line 630
    iget-object v1, p0, Lcom/android/launcher2/DragController;->mCoordinatesTemp:[I

    .line 632
    .local v1, "coordinates":[I
    iget-object v2, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    const/4 v3, 0x0

    aget v3, v1, v3

    iput v3, v2, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    .line 633
    iget-object v2, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    aget v3, v1, v6

    iput v3, v2, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    .line 637
    iget-object v2, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/DragController;->mFlingToDeleteDropTarget:Lcom/android/launcher2/DropTarget;

    iget-object v3, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    if-eq v2, v3, :cond_0

    .line 638
    iget-object v2, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    iget-object v3, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {v2, v3}, Lcom/android/launcher2/DropTarget;->onDragExit(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 642
    :cond_0
    const/4 v0, 0x0

    .line 643
    .local v0, "accepted":Z
    iget-object v2, p0, Lcom/android/launcher2/DragController;->mFlingToDeleteDropTarget:Lcom/android/launcher2/DropTarget;

    iget-object v3, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {v2, v3}, Lcom/android/launcher2/DropTarget;->onDragEnter(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 646
    iget-object v2, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iput-boolean v6, v2, Lcom/android/launcher2/DropTarget$DragObject;->dragComplete:Z

    .line 647
    iget-object v2, p0, Lcom/android/launcher2/DragController;->mFlingToDeleteDropTarget:Lcom/android/launcher2/DropTarget;

    iget-object v3, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {v2, v3}, Lcom/android/launcher2/DropTarget;->onDragExit(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 648
    iget-object v2, p0, Lcom/android/launcher2/DragController;->mFlingToDeleteDropTarget:Lcom/android/launcher2/DropTarget;

    iget-object v3, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {v2, v3}, Lcom/android/launcher2/DropTarget;->acceptDrop(Lcom/android/launcher2/DropTarget$DragObject;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 649
    iget-object v2, p0, Lcom/android/launcher2/DragController;->mFlingToDeleteDropTarget:Lcom/android/launcher2/DropTarget;

    iget-object v3, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iget-object v4, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iget v4, v4, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    iget-object v5, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iget v5, v5, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    invoke-interface {v2, v3, v4, v5, p3}, Lcom/android/launcher2/DropTarget;->onFlingToDelete(Lcom/android/launcher2/DropTarget$DragObject;IILandroid/graphics/PointF;)V

    .line 651
    const/4 v0, 0x1

    .line 653
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iget-object v3, v2, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    iget-object v2, p0, Lcom/android/launcher2/DragController;->mFlingToDeleteDropTarget:Lcom/android/launcher2/DropTarget;

    check-cast v2, Landroid/view/View;

    iget-object v4, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {v3, v2, v4, v6, v0}, Lcom/android/launcher2/DragSource;->onDropCompleted(Landroid/view/View;Lcom/android/launcher2/DropTarget$DragObject;ZZ)V

    .line 655
    return-void
.end method

.method private endDrag()V
    .locals 5

    .prologue
    .line 351
    iget-boolean v3, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    if-eqz v3, :cond_2

    .line 352
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    .line 353
    invoke-direct {p0}, Lcom/android/launcher2/DragController;->clearScrollRunnable()V

    .line 354
    const/4 v1, 0x0

    .line 355
    .local v1, "isDeferred":Z
    iget-object v3, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iget-object v3, v3, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    if-eqz v3, :cond_1

    .line 356
    iget-object v3, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iget-boolean v1, v3, Lcom/android/launcher2/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 357
    if-nez v1, :cond_0

    .line 358
    iget-object v3, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iget-object v3, v3, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v3}, Lcom/android/launcher2/DragView;->remove()V

    .line 360
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    .line 364
    :cond_1
    if-nez v1, :cond_2

    .line 365
    iget-object v3, p0, Lcom/android/launcher2/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/DragController$DragListener;

    .line 366
    .local v2, "listener":Lcom/android/launcher2/DragController$DragListener;
    invoke-interface {v2}, Lcom/android/launcher2/DragController$DragListener;->onDragEnd()V

    goto :goto_0

    .line 371
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "isDeferred":Z
    .end local v2    # "listener":Lcom/android/launcher2/DragController$DragListener;
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher2/DragController;->releaseVelocityTracker()V

    .line 372
    return-void
.end method

.method private findDropTarget(II[I)Lcom/android/launcher2/DropTarget;
    .locals 11
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "dropCoordinates"    # [I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 676
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mRectTemp:Landroid/graphics/Rect;

    .line 678
    .local v4, "r":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/launcher2/DragController;->mDropTargets:Ljava/util/ArrayList;

    .line 679
    .local v2, "dropTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/DropTarget;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 680
    .local v0, "count":I
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_3

    .line 681
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/DropTarget;

    .line 682
    .local v5, "target":Lcom/android/launcher2/DropTarget;
    invoke-interface {v5}, Lcom/android/launcher2/DropTarget;->isDropEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 680
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 685
    :cond_1
    invoke-interface {v5, v4}, Lcom/android/launcher2/DropTarget;->getHitRect(Landroid/graphics/Rect;)V

    .line 688
    invoke-interface {v5, p3}, Lcom/android/launcher2/DropTarget;->getLocationInDragLayer([I)V

    .line 689
    aget v6, p3, v9

    invoke-interface {v5}, Lcom/android/launcher2/DropTarget;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    aget v7, p3, v10

    invoke-interface {v5}, Lcom/android/launcher2/DropTarget;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 691
    iget-object v6, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iput p1, v6, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    .line 692
    iget-object v6, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iput p2, v6, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    .line 693
    invoke-virtual {v4, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 694
    iget-object v6, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {v5, v6}, Lcom/android/launcher2/DropTarget;->getDropTargetDelegate(Lcom/android/launcher2/DropTarget$DragObject;)Lcom/android/launcher2/DropTarget;

    move-result-object v1

    .line 695
    .local v1, "delegate":Lcom/android/launcher2/DropTarget;
    if-eqz v1, :cond_2

    .line 696
    move-object v5, v1

    .line 697
    invoke-interface {v5, p3}, Lcom/android/launcher2/DropTarget;->getLocationInDragLayer([I)V

    .line 701
    :cond_2
    aget v6, p3, v9

    sub-int v6, p1, v6

    aput v6, p3, v9

    .line 702
    aget v6, p3, v10

    sub-int v6, p2, v6

    aput v6, p3, v10

    .line 707
    .end local v1    # "delegate":Lcom/android/launcher2/DropTarget;
    .end local v5    # "target":Lcom/android/launcher2/DropTarget;
    :goto_1
    return-object v5

    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private getClampedDragLayerPos(FF)[I
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragLayer;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 395
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mTmpPoint:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher2/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher2/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-static {p1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    .line 396
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mTmpPoint:[I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/launcher2/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher2/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-static {p2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    .line 397
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mTmpPoint:[I

    return-object v0
.end method

.method private handleMoveEvent(II)V
    .locals 13
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 482
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iget-object v5, v5, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v5, p1, p2}, Lcom/android/launcher2/DragView;->move(II)V

    .line 485
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mCoordinatesTemp:[I

    .line 486
    .local v0, "coordinates":[I
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/DragController;->findDropTarget(II[I)Lcom/android/launcher2/DropTarget;

    move-result-object v3

    .line 487
    .local v3, "dropTarget":Lcom/android/launcher2/DropTarget;
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    const/4 v6, 0x0

    aget v6, v0, v6

    iput v6, v5, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    .line 488
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    const/4 v6, 0x1

    aget v6, v0, v6

    iput v6, v5, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    .line 489
    if-eqz v3, :cond_5

    .line 490
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {v3, v5}, Lcom/android/launcher2/DropTarget;->getDropTargetDelegate(Lcom/android/launcher2/DropTarget$DragObject;)Lcom/android/launcher2/DropTarget;

    move-result-object v2

    .line 491
    .local v2, "delegate":Lcom/android/launcher2/DropTarget;
    if-eqz v2, :cond_0

    .line 492
    move-object v3, v2

    .line 495
    :cond_0
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    if-eq v5, v3, :cond_2

    .line 496
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    if-eqz v5, :cond_1

    .line 497
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    iget-object v6, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {v5, v6}, Lcom/android/launcher2/DropTarget;->onDragExit(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 499
    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {v3, v5}, Lcom/android/launcher2/DropTarget;->onDragEnter(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 501
    :cond_2
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {v3, v5}, Lcom/android/launcher2/DropTarget;->onDragOver(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 507
    .end local v2    # "delegate":Lcom/android/launcher2/DropTarget;
    :cond_3
    :goto_0
    iput-object v3, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    .line 511
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v4

    .line 512
    .local v4, "slop":I
    iget v5, p0, Lcom/android/launcher2/DragController;->mDistanceSinceScroll:I

    int-to-double v5, v5

    iget-object v7, p0, Lcom/android/launcher2/DragController;->mLastTouch:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    sub-int/2addr v7, p1

    int-to-double v7, v7

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    iget-object v9, p0, Lcom/android/launcher2/DragController;->mLastTouch:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-int/2addr v9, p2

    int-to-double v9, v9

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    add-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, p0, Lcom/android/launcher2/DragController;->mDistanceSinceScroll:I

    .line 514
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mLastTouch:[I

    const/4 v6, 0x0

    aput p1, v5, v6

    .line 515
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mLastTouch:[I

    const/4 v6, 0x1

    aput p2, v5, v6

    .line 516
    iget v5, p0, Lcom/android/launcher2/DragController;->mDistanceSinceScroll:I

    if-ge v5, v4, :cond_6

    const/16 v1, 0x2ee

    .line 518
    .local v1, "delay":I
    :goto_1
    iget v5, p0, Lcom/android/launcher2/DragController;->mScrollZone:I

    if-ge p1, v5, :cond_7

    .line 519
    iget v5, p0, Lcom/android/launcher2/DragController;->mScrollState:I

    if-nez v5, :cond_4

    .line 520
    const/4 v5, 0x1

    iput v5, p0, Lcom/android/launcher2/DragController;->mScrollState:I

    .line 521
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mDragScroller:Lcom/android/launcher2/DragScroller;

    const/4 v6, 0x0

    invoke-interface {v5, p1, p2, v6}, Lcom/android/launcher2/DragScroller;->onEnterScrollArea(III)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 522
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/launcher2/DragLayer;->onEnterScrollArea(I)V

    .line 523
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/launcher2/DragController$ScrollRunnable;->setDirection(I)V

    .line 524
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    int-to-long v7, v1

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 539
    :cond_4
    :goto_2
    return-void

    .line 503
    .end local v1    # "delay":I
    .end local v4    # "slop":I
    :cond_5
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    if-eqz v5, :cond_3

    .line 504
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    iget-object v6, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {v5, v6}, Lcom/android/launcher2/DropTarget;->onDragExit(Lcom/android/launcher2/DropTarget$DragObject;)V

    goto :goto_0

    .line 516
    .restart local v4    # "slop":I
    :cond_6
    const/16 v1, 0x1f4

    goto :goto_1

    .line 527
    .restart local v1    # "delay":I
    :cond_7
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mScrollView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/android/launcher2/DragController;->mScrollZone:I

    sub-int/2addr v5, v6

    if-le p1, v5, :cond_8

    .line 528
    iget v5, p0, Lcom/android/launcher2/DragController;->mScrollState:I

    if-nez v5, :cond_4

    .line 529
    const/4 v5, 0x1

    iput v5, p0, Lcom/android/launcher2/DragController;->mScrollState:I

    .line 530
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mDragScroller:Lcom/android/launcher2/DragScroller;

    const/4 v6, 0x1

    invoke-interface {v5, p1, p2, v6}, Lcom/android/launcher2/DragScroller;->onEnterScrollArea(III)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 531
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/launcher2/DragLayer;->onEnterScrollArea(I)V

    .line 532
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/launcher2/DragController$ScrollRunnable;->setDirection(I)V

    .line 533
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    int-to-long v7, v1

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 537
    :cond_8
    invoke-direct {p0}, Lcom/android/launcher2/DragController;->clearScrollRunnable()V

    goto :goto_2
.end method

.method private isFlingingToDelete(Lcom/android/launcher2/DragSource;)Landroid/graphics/PointF;
    .locals 9
    .param p1, "source"    # Lcom/android/launcher2/DragSource;

    .prologue
    const/4 v4, 0x0

    .line 609
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mFlingToDeleteDropTarget:Lcom/android/launcher2/DropTarget;

    if-nez v5, :cond_1

    move-object v3, v4

    .line 626
    :cond_0
    :goto_0
    return-object v3

    .line 610
    :cond_1
    invoke-interface {p1}, Lcom/android/launcher2/DragSource;->supportsFlingToDelete()Z

    move-result v5

    if-nez v5, :cond_2

    move-object v3, v4

    goto :goto_0

    .line 612
    :cond_2
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 613
    .local v0, "config":Landroid/view/ViewConfiguration;
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v6, 0x3e8

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 615
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    iget v6, p0, Lcom/android/launcher2/DragController;->mFlingToDeleteThresholdVelocity:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    .line 617
    new-instance v3, Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/android/launcher2/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    iget-object v6, p0, Lcom/android/launcher2/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v6

    invoke-direct {v3, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 619
    .local v3, "vel":Landroid/graphics/PointF;
    new-instance v2, Landroid/graphics/PointF;

    const/4 v5, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    invoke-direct {v2, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 620
    .local v2, "upVec":Landroid/graphics/PointF;
    iget v5, v3, Landroid/graphics/PointF;->x:F

    iget v6, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v6

    iget v6, v3, Landroid/graphics/PointF;->y:F

    iget v7, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v3}, Landroid/graphics/PointF;->length()F

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/PointF;->length()F

    move-result v7

    mul-float/2addr v6, v7

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->acos(D)D

    move-result-wide v5

    double-to-float v1, v5

    .line 622
    .local v1, "theta":F
    float-to-double v5, v1

    const-wide v7, 0x4041800000000000L    # 35.0

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    cmpg-double v5, v5, v7

    if-lez v5, :cond_0

    .end local v1    # "theta":F
    .end local v2    # "upVec":Landroid/graphics/PointF;
    .end local v3    # "vel":Landroid/graphics/PointF;
    :cond_3
    move-object v3, v4

    .line 626
    goto :goto_0
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .prologue
    .line 761
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 763
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 765
    :cond_0
    return-void
.end method


# virtual methods
.method public addDragListener(Lcom/android/launcher2/DragController$DragListener;)V
    .locals 1
    .param p1, "l"    # Lcom/android/launcher2/DragController$DragListener;

    .prologue
    .line 722
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 723
    return-void
.end method

.method public addDropTarget(Lcom/android/launcher2/DropTarget;)V
    .locals 1
    .param p1, "target"    # Lcom/android/launcher2/DropTarget;

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 737
    return-void
.end method

.method public cancelDrag()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 318
    iget-boolean v0, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    if-eqz v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    iget-object v1, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {v0, v1}, Lcom/android/launcher2/DropTarget;->onDragExit(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iput-boolean v3, v0, Lcom/android/launcher2/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 323
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iput-boolean v2, v0, Lcom/android/launcher2/DropTarget$DragObject;->cancelled:Z

    .line 324
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iput-boolean v2, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragComplete:Z

    .line 325
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {v0, v1, v2, v3, v3}, Lcom/android/launcher2/DragSource;->onDropCompleted(Landroid/view/View;Lcom/android/launcher2/DropTarget$DragObject;ZZ)V

    .line 327
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/DragController;->endDrag()V

    .line 328
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    return v0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mMoveTarget:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/DragController;->mMoveTarget:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dragging()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    return v0
.end method

.method public forceMoveEvent()V
    .locals 2

    .prologue
    .line 542
    iget-boolean v0, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iget v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    iget-object v1, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iget v1, v1, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/DragController;->handleMoveEvent(II)V

    .line 545
    :cond_0
    return-void
.end method

.method getDragView()Lcom/android/launcher2/DragView;
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    return-object v0
.end method

.method getLastGestureUpTime()J
    .locals 2

    .prologue
    .line 401
    iget-boolean v0, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    if-eqz v0, :cond_0

    .line 402
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 404
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/android/launcher2/DragController;->mLastTouchUpTime:J

    goto :goto_0
.end method

.method getViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 262
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 263
    invoke-virtual {p1, v5}, Landroid/view/View;->setPressed(Z)V

    .line 265
    invoke-virtual {p1}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v4

    .line 266
    .local v4, "willNotCache":Z
    invoke-virtual {p1, v5}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 270
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCacheBackgroundColor()I

    move-result v3

    .line 271
    .local v3, "color":I
    invoke-virtual {p1, v5}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 272
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    .line 273
    .local v0, "alpha":F
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 275
    if-eqz v3, :cond_0

    .line 276
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 278
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->buildDrawingCache()V

    .line 279
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 280
    .local v2, "cacheBitmap":Landroid/graphics/Bitmap;
    if-nez v2, :cond_1

    .line 281
    const-string v5, "Launcher.DragController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed getViewBitmap("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 282
    const/4 v1, 0x0

    .line 293
    :goto_0
    return-object v1

    .line 285
    :cond_1
    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 288
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 289
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 290
    invoke-virtual {p1, v4}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 291
    invoke-virtual {p1, v3}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_0
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    return v0
.end method

.method public onAppsRemoved(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 331
    .local p1, "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    if-eqz v5, :cond_1

    .line 332
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iget-object v4, v5, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 333
    .local v4, "rawDragInfo":Ljava/lang/Object;
    instance-of v5, v4, Lcom/android/launcher2/ShortcutInfo;

    if-eqz v5, :cond_1

    move-object v0, v4

    .line 334
    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    .line 335
    .local v0, "dragInfo":Lcom/android/launcher2/ShortcutInfo;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 337
    .local v3, "pn":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v5, v0, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz v5, :cond_0

    .line 339
    invoke-virtual {v0}, Lcom/android/launcher2/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 340
    .local v2, "isSamePackage":Z
    if-eqz v2, :cond_0

    .line 341
    invoke-virtual {p0}, Lcom/android/launcher2/DragController;->cancelDrag()V

    .line 348
    .end local v0    # "dragInfo":Lcom/android/launcher2/ShortcutInfo;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "isSamePackage":Z
    .end local v3    # "pn":Ljava/lang/String;
    .end local v4    # "rawDragInfo":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method onDeferredEndDrag(Lcom/android/launcher2/DragView;)V
    .locals 3
    .param p1, "dragView"    # Lcom/android/launcher2/DragView;

    .prologue
    .line 378
    invoke-virtual {p1}, Lcom/android/launcher2/DragView;->remove()V

    .line 381
    iget-object v2, p0, Lcom/android/launcher2/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/DragController$DragListener;

    .line 382
    .local v1, "listener":Lcom/android/launcher2/DragController$DragListener;
    invoke-interface {v1}, Lcom/android/launcher2/DragController$DragListener;->onDragEnd()V

    goto :goto_0

    .line 384
    .end local v1    # "listener":Lcom/android/launcher2/DragController$DragListener;
    :cond_0
    return-void
.end method

.method onDeferredEndFling(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 1
    .param p1, "d"    # Lcom/android/launcher2/DropTarget$DragObject;

    .prologue
    .line 387
    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    invoke-interface {v0}, Lcom/android/launcher2/DragSource;->onFlingToDeleteCompleted()V

    .line 388
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 417
    const/4 v1, 0x0

    .line 424
    .local v1, "debug":Z
    invoke-direct {p0, p1}, Lcom/android/launcher2/DragController;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 426
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 427
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/android/launcher2/DragController;->getClampedDragLayerPos(FF)[I

    move-result-object v2

    .line 428
    .local v2, "dragLayerPos":[I
    const/4 v6, 0x0

    aget v3, v2, v6

    .line 429
    .local v3, "dragLayerX":I
    const/4 v6, 0x1

    aget v4, v2, v6

    .line 431
    .local v4, "dragLayerY":I
    packed-switch v0, :pswitch_data_0

    .line 457
    :goto_0
    :pswitch_0
    iget-boolean v6, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    return v6

    .line 436
    :pswitch_1
    iput v3, p0, Lcom/android/launcher2/DragController;->mMotionDownX:I

    .line 437
    iput v4, p0, Lcom/android/launcher2/DragController;->mMotionDownY:I

    .line 438
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    goto :goto_0

    .line 441
    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/launcher2/DragController;->mLastTouchUpTime:J

    .line 442
    iget-boolean v6, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    if-eqz v6, :cond_0

    .line 443
    iget-object v6, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iget-object v6, v6, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    invoke-direct {p0, v6}, Lcom/android/launcher2/DragController;->isFlingingToDelete(Lcom/android/launcher2/DragSource;)Landroid/graphics/PointF;

    move-result-object v5

    .line 444
    .local v5, "vec":Landroid/graphics/PointF;
    if-eqz v5, :cond_1

    .line 445
    int-to-float v6, v3

    int-to-float v7, v4

    invoke-direct {p0, v6, v7, v5}, Lcom/android/launcher2/DragController;->dropOnFlingToDeleteTarget(FFLandroid/graphics/PointF;)V

    .line 450
    .end local v5    # "vec":Landroid/graphics/PointF;
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/launcher2/DragController;->endDrag()V

    goto :goto_0

    .line 447
    .restart local v5    # "vec":Landroid/graphics/PointF;
    :cond_1
    int-to-float v6, v3

    int-to-float v7, v4

    invoke-direct {p0, v6, v7}, Lcom/android/launcher2/DragController;->drop(FF)V

    goto :goto_1

    .line 453
    .end local v5    # "vec":Landroid/graphics/PointF;
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/launcher2/DragController;->cancelDrag()V

    goto :goto_0

    .line 431
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 551
    iget-boolean v7, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    if-nez v7, :cond_0

    .line 600
    :goto_0
    return v5

    .line 556
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher2/DragController;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 558
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 559
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/android/launcher2/DragController;->getClampedDragLayerPos(FF)[I

    move-result-object v1

    .line 560
    .local v1, "dragLayerPos":[I
    aget v2, v1, v5

    .line 561
    .local v2, "dragLayerX":I
    aget v3, v1, v6

    .line 563
    .local v3, "dragLayerY":I
    packed-switch v0, :pswitch_data_0

    :goto_1
    move v5, v6

    .line 600
    goto :goto_0

    .line 566
    :pswitch_0
    iput v2, p0, Lcom/android/launcher2/DragController;->mMotionDownX:I

    .line 567
    iput v3, p0, Lcom/android/launcher2/DragController;->mMotionDownY:I

    .line 569
    iget v7, p0, Lcom/android/launcher2/DragController;->mScrollZone:I

    if-lt v2, v7, :cond_1

    iget-object v7, p0, Lcom/android/launcher2/DragController;->mScrollView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    iget v8, p0, Lcom/android/launcher2/DragController;->mScrollZone:I

    sub-int/2addr v7, v8

    if-le v2, v7, :cond_2

    .line 570
    :cond_1
    iput v6, p0, Lcom/android/launcher2/DragController;->mScrollState:I

    .line 571
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    const-wide/16 v8, 0x1f4

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 573
    :cond_2
    iput v5, p0, Lcom/android/launcher2/DragController;->mScrollState:I

    goto :goto_1

    .line 577
    :pswitch_1
    invoke-direct {p0, v2, v3}, Lcom/android/launcher2/DragController;->handleMoveEvent(II)V

    goto :goto_1

    .line 581
    :pswitch_2
    invoke-direct {p0, v2, v3}, Lcom/android/launcher2/DragController;->handleMoveEvent(II)V

    .line 582
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 584
    iget-boolean v5, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    if-eqz v5, :cond_3

    .line 585
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iget-object v5, v5, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    invoke-direct {p0, v5}, Lcom/android/launcher2/DragController;->isFlingingToDelete(Lcom/android/launcher2/DragSource;)Landroid/graphics/PointF;

    move-result-object v4

    .line 586
    .local v4, "vec":Landroid/graphics/PointF;
    if-eqz v4, :cond_4

    .line 587
    int-to-float v5, v2

    int-to-float v7, v3

    invoke-direct {p0, v5, v7, v4}, Lcom/android/launcher2/DragController;->dropOnFlingToDeleteTarget(FFLandroid/graphics/PointF;)V

    .line 592
    .end local v4    # "vec":Landroid/graphics/PointF;
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/android/launcher2/DragController;->endDrag()V

    goto :goto_1

    .line 589
    .restart local v4    # "vec":Landroid/graphics/PointF;
    :cond_4
    int-to-float v5, v2

    int-to-float v7, v3

    invoke-direct {p0, v5, v7}, Lcom/android/launcher2/DragController;->drop(FF)V

    goto :goto_2

    .line 595
    .end local v4    # "vec":Landroid/graphics/PointF;
    :pswitch_3
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 596
    invoke-virtual {p0}, Lcom/android/launcher2/DragController;->cancelDrag()V

    goto :goto_1

    .line 563
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public removeDragListener(Lcom/android/launcher2/DragController$DragListener;)V
    .locals 1
    .param p1, "l"    # Lcom/android/launcher2/DragController$DragListener;

    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 730
    return-void
.end method

.method public removeDropTarget(Lcom/android/launcher2/DropTarget;)V
    .locals 1
    .param p1, "target"    # Lcom/android/launcher2/DropTarget;

    .prologue
    .line 743
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 744
    return-void
.end method

.method resetLastGestureUpTime()V
    .locals 2

    .prologue
    .line 409
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher2/DragController;->mLastTouchUpTime:J

    .line 410
    return-void
.end method

.method public setDragScoller(Lcom/android/launcher2/DragScroller;)V
    .locals 0
    .param p1, "scroller"    # Lcom/android/launcher2/DragScroller;

    .prologue
    .line 711
    iput-object p1, p0, Lcom/android/launcher2/DragController;->mDragScroller:Lcom/android/launcher2/DragScroller;

    .line 712
    return-void
.end method

.method public setFlingToDeleteDropTarget(Lcom/android/launcher2/DropTarget;)V
    .locals 0
    .param p1, "target"    # Lcom/android/launcher2/DropTarget;

    .prologue
    .line 750
    iput-object p1, p0, Lcom/android/launcher2/DragController;->mFlingToDeleteDropTarget:Lcom/android/launcher2/DropTarget;

    .line 751
    return-void
.end method

.method setMoveTarget(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 464
    iput-object p1, p0, Lcom/android/launcher2/DragController;->mMoveTarget:Landroid/view/View;

    .line 465
    return-void
.end method

.method public setScrollView(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 771
    iput-object p1, p0, Lcom/android/launcher2/DragController;->mScrollView:Landroid/view/View;

    .line 772
    return-void
.end method

.method public setWindowToken(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 715
    iput-object p1, p0, Lcom/android/launcher2/DragController;->mWindowToken:Landroid/os/IBinder;

    .line 716
    return-void
.end method

.method public startDrag(Landroid/graphics/Bitmap;IILcom/android/launcher2/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;F)V
    .locals 19
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "dragLayerX"    # I
    .param p3, "dragLayerY"    # I
    .param p4, "source"    # Lcom/android/launcher2/DragSource;
    .param p5, "dragInfo"    # Ljava/lang/Object;
    .param p6, "dragAction"    # I
    .param p7, "dragOffset"    # Landroid/graphics/Point;
    .param p8, "dragRegion"    # Landroid/graphics/Rect;
    .param p9, "initialDragViewScale"    # F

    .prologue
    .line 216
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v5, :cond_0

    .line 217
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/DragController;->mLauncher:Lcom/android/launcher2/Launcher;

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher2/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 220
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/DragController;->mWindowToken:Landroid/os/IBinder;

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v9}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 222
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/launcher2/DragController$DragListener;

    .line 223
    .local v17, "listener":Lcom/android/launcher2/DragController$DragListener;
    move-object/from16 v0, v17

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move/from16 v3, p6

    invoke-interface {v0, v1, v2, v3}, Lcom/android/launcher2/DragController$DragListener;->onDragStart(Lcom/android/launcher2/DragSource;Ljava/lang/Object;I)V

    goto :goto_0

    .line 226
    .end local v17    # "listener":Lcom/android/launcher2/DragController$DragListener;
    :cond_1
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/DragController;->mMotionDownX:I

    sub-int v7, v5, p2

    .line 227
    .local v7, "registrationX":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/DragController;->mMotionDownY:I

    sub-int v8, v5, p3

    .line 229
    .local v8, "registrationY":I
    if-nez p8, :cond_4

    const/4 v14, 0x0

    .line 230
    .local v14, "dragRegionLeft":I
    :goto_1
    if-nez p8, :cond_5

    const/4 v15, 0x0

    .line 232
    .local v15, "dragRegionTop":I
    :goto_2
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/launcher2/DragController;->mDragging:Z

    .line 234
    new-instance v5, Lcom/android/launcher2/DropTarget$DragObject;

    invoke-direct {v5}, Lcom/android/launcher2/DropTarget$DragObject;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    .line 236
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/launcher2/DropTarget$DragObject;->dragComplete:Z

    .line 237
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/DragController;->mMotionDownX:I

    add-int v9, p2, v14

    sub-int/2addr v6, v9

    iput v6, v5, Lcom/android/launcher2/DropTarget$DragObject;->xOffset:I

    .line 238
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/DragController;->mMotionDownY:I

    add-int v9, p3, v15

    sub-int/2addr v6, v9

    iput v6, v5, Lcom/android/launcher2/DropTarget$DragObject;->yOffset:I

    .line 239
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    move-object/from16 v0, p4

    iput-object v0, v5, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    .line 240
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    move-object/from16 v0, p5

    iput-object v0, v5, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 242
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/DragController;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v9, 0xf

    invoke-virtual {v5, v9, v10}, Landroid/os/Vibrator;->vibrate(J)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    move-object/from16 v18, v0

    new-instance v4, Lcom/android/launcher2/DragView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/DragController;->mLauncher:Lcom/android/launcher2/Launcher;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    move-object/from16 v6, p1

    move/from16 v13, p9

    invoke-direct/range {v4 .. v13}, Lcom/android/launcher2/DragView;-><init>(Lcom/android/launcher2/Launcher;Landroid/graphics/Bitmap;IIIIIIF)V

    move-object/from16 v0, v18

    iput-object v4, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    .line 247
    .local v4, "dragView":Lcom/android/launcher2/DragView;
    if-eqz p7, :cond_2

    .line 248
    new-instance v5, Landroid/graphics/Point;

    move-object/from16 v0, p7

    invoke-direct {v5, v0}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher2/DragView;->setDragVisualizeOffset(Landroid/graphics/Point;)V

    .line 250
    :cond_2
    if-eqz p8, :cond_3

    .line 251
    new-instance v5, Landroid/graphics/Rect;

    move-object/from16 v0, p8

    invoke-direct {v5, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher2/DragView;->setDragRegion(Landroid/graphics/Rect;)V

    .line 254
    :cond_3
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/DragController;->mMotionDownX:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/DragController;->mMotionDownY:I

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher2/DragView;->show(II)V

    .line 255
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/DragController;->mMotionDownX:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/DragController;->mMotionDownY:I

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/launcher2/DragController;->handleMoveEvent(II)V

    .line 256
    return-void

    .line 229
    .end local v4    # "dragView":Lcom/android/launcher2/DragView;
    .end local v14    # "dragRegionLeft":I
    .end local v15    # "dragRegionTop":I
    :cond_4
    move-object/from16 v0, p8

    iget v14, v0, Landroid/graphics/Rect;->left:I

    goto/16 :goto_1

    .line 230
    .restart local v14    # "dragRegionLeft":I
    :cond_5
    move-object/from16 v0, p8

    iget v15, v0, Landroid/graphics/Rect;->top:I

    goto/16 :goto_2
.end method

.method public startDrag(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/android/launcher2/DragSource;Ljava/lang/Object;ILandroid/graphics/Rect;F)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "bmp"    # Landroid/graphics/Bitmap;
    .param p3, "source"    # Lcom/android/launcher2/DragSource;
    .param p4, "dragInfo"    # Ljava/lang/Object;
    .param p5, "dragAction"    # I
    .param p6, "dragRegion"    # Landroid/graphics/Rect;
    .param p7, "initialDragViewScale"    # F

    .prologue
    .line 179
    iget-object v11, p0, Lcom/android/launcher2/DragController;->mCoordinatesTemp:[I

    .line 180
    .local v11, "loc":[I
    iget-object v1, p0, Lcom/android/launcher2/DragController;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v1

    invoke-virtual {v1, p1, v11}, Lcom/android/launcher2/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    .line 181
    const/4 v1, 0x0

    aget v1, v11, v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p7

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v2, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    float-to-int v2, v2

    add-int v3, v1, v2

    .line 183
    .local v3, "dragLayerX":I
    const/4 v1, 0x1

    aget v1, v11, v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p7

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v2, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    float-to-int v2, v2

    add-int v4, v1, v2

    .line 186
    .local v4, "dragLayerY":I
    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v1 .. v10}, Lcom/android/launcher2/DragController;->startDrag(Landroid/graphics/Bitmap;IILcom/android/launcher2/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;F)V

    .line 189
    sget v1, Lcom/android/launcher2/DragController;->DRAG_ACTION_MOVE:I

    move/from16 v0, p5

    if-ne v0, v1, :cond_0

    .line 190
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 192
    :cond_0
    return-void
.end method

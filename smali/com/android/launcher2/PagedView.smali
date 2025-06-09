.class public abstract Lcom/android/launcher2/PagedView;
.super Landroid/view/ViewGroup;
.source "PagedView.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/PagedView$SavedState;,
        Lcom/android/launcher2/PagedView$ScrollInterpolator;,
        Lcom/android/launcher2/PagedView$PageSwitchListener;
    }
.end annotation


# static fields
.field protected static final ALPHA_QUANTIZE_LEVEL:F = 1.0E-4f

.field static final AUTOMATIC_PAGE_SPACING:I = -0x1

.field private static final DEBUG:Z = false

.field private static final FLING_THRESHOLD_VELOCITY:I = 0x1f4

.field protected static final INVALID_PAGE:I = -0x1

.field protected static final INVALID_POINTER:I = -0x1

.field protected static final MAX_PAGE_SNAP_DURATION:I = 0x2ee

.field private static final MIN_FLING_VELOCITY:I = 0xfa

.field private static final MIN_LENGTH_FOR_FLING:I = 0x19

.field private static final MIN_SNAP_VELOCITY:I = 0x5dc

.field protected static final NANOTIME_DIV:F = 1.0E9f

.field private static final OVERSCROLL_ACCELERATE_FACTOR:F = 2.0f

.field private static final OVERSCROLL_DAMP_FACTOR:F = 0.14f

.field protected static final PAGE_SNAP_ANIMATION_DURATION:I = 0x226

.field private static final RETURN_TO_ORIGINAL_PAGE_THRESHOLD:F = 0.33f

.field private static final SIGNIFICANT_MOVE_THRESHOLD:F = 0.4f

.field protected static final SLOW_PAGE_SNAP_ANIMATION_DURATION:I = 0x3b6

.field private static final TAG:Ljava/lang/String; = "PagedView"

.field protected static final TOUCH_STATE_NEXT_PAGE:I = 0x3

.field protected static final TOUCH_STATE_PREV_PAGE:I = 0x2

.field protected static final TOUCH_STATE_REST:I = 0x0

.field protected static final TOUCH_STATE_SCROLLING:I = 0x1

.field protected static final sScrollIndicatorFadeInDuration:I = 0x96

.field protected static final sScrollIndicatorFadeOutDuration:I = 0x28a

.field protected static final sScrollIndicatorFlashDuration:I = 0x28a


# instance fields
.field hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

.field protected mActivePointerId:I

.field protected mAllowLongPress:Z

.field protected mAllowOverScroll:Z

.field protected mCellCountX:I

.field protected mCellCountY:I

.field protected mCenterPagesVertically:Z

.field private mChildOffsets:[I

.field private mChildOffsetsWithLayoutScale:[I

.field private mChildRelativeOffsets:[I

.field protected mContentIsRefreshable:Z

.field protected mCurrentPage:I

.field private mDeferLoadAssociatedPagesUntilScrollCompletes:Z

.field protected mDeferScrollUpdate:Z

.field protected mDensity:F

.field protected mDirtyPageContent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDownMotionX:F

.field protected mFadeInAdjacentScreens:Z

.field protected mFirstLayout:Z

.field protected mFlingThresholdVelocity:I

.field protected mForceDrawAllChildrenNextFrame:Z

.field protected mForceScreenScrolled:Z

.field private mHasScrollIndicator:Z

.field protected mIsDataReady:Z

.field protected mIsPageMoving:Z

.field protected mLastMotionX:F

.field protected mLastMotionXRemainder:F

.field protected mLastMotionY:F

.field private mLastScreenCenter:I

.field protected mLayoutScale:F

.field protected mLongClickListener:Landroid/view/View$OnLongClickListener;

.field protected mMaxScrollX:I

.field private mMaximumVelocity:I

.field protected mMinFlingVelocity:I

.field protected mMinSnapVelocity:I

.field private mMinimumWidth:I

.field protected mNextPage:I

.field protected mOverScrollX:I

.field protected mPageLayoutHeightGap:I

.field protected mPageLayoutPaddingBottom:I

.field protected mPageLayoutPaddingLeft:I

.field protected mPageLayoutPaddingRight:I

.field protected mPageLayoutPaddingTop:I

.field protected mPageLayoutWidthGap:I

.field protected mPageSpacing:I

.field private mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

.field private mPagingTouchSlop:I

.field private mScrollIndicator:Landroid/view/View;

.field private mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

.field private mScrollIndicatorPaddingLeft:I

.field private mScrollIndicatorPaddingRight:I

.field protected mScroller:Landroid/widget/Scroller;

.field private mScrollingPaused:Z

.field private mShouldShowScrollIndicator:Z

.field private mShouldShowScrollIndicatorImmediately:Z

.field protected mSmoothingTime:F

.field protected mTempVisiblePagesRange:[I

.field protected mTotalMotionX:F

.field protected mTouchSlop:I

.field protected mTouchState:I

.field protected mTouchX:F

.field protected mUnboundedScrollX:I

.field protected mUsePagingTouchSlop:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 196
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 199
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 200
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 203
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    iput-boolean v3, p0, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    .line 92
    iput v4, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 102
    iput v4, p0, Lcom/android/launcher2/PagedView;->mLastScreenCenter:I

    .line 113
    iput v2, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 114
    iput-boolean v2, p0, Lcom/android/launcher2/PagedView;->mForceScreenScrolled:Z

    .line 118
    iput-boolean v3, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    .line 131
    iput v2, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    .line 132
    iput v2, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    .line 134
    iput-boolean v3, p0, Lcom/android/launcher2/PagedView;->mAllowOverScroll:Z

    .line 136
    new-array v1, v5, [I

    iput-object v1, p0, Lcom/android/launcher2/PagedView;->mTempVisiblePagesRange:[I

    .line 145
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/launcher2/PagedView;->mLayoutScale:F

    .line 149
    iput v4, p0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    .line 156
    iput-boolean v3, p0, Lcom/android/launcher2/PagedView;->mContentIsRefreshable:Z

    .line 159
    iput-boolean v3, p0, Lcom/android/launcher2/PagedView;->mFadeInAdjacentScreens:Z

    .line 163
    iput-boolean v3, p0, Lcom/android/launcher2/PagedView;->mUsePagingTouchSlop:Z

    .line 167
    iput-boolean v2, p0, Lcom/android/launcher2/PagedView;->mDeferScrollUpdate:Z

    .line 169
    iput-boolean v2, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    .line 172
    iput-boolean v2, p0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    .line 179
    iput-boolean v3, p0, Lcom/android/launcher2/PagedView;->mHasScrollIndicator:Z

    .line 180
    iput-boolean v2, p0, Lcom/android/launcher2/PagedView;->mShouldShowScrollIndicator:Z

    .line 181
    iput-boolean v2, p0, Lcom/android/launcher2/PagedView;->mShouldShowScrollIndicatorImmediately:Z

    .line 185
    iput-boolean v2, p0, Lcom/android/launcher2/PagedView;->mScrollingPaused:Z

    .line 1746
    new-instance v1, Lcom/android/launcher2/PagedView$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/PagedView$1;-><init>(Lcom/android/launcher2/PagedView;)V

    iput-object v1, p0, Lcom/android/launcher2/PagedView;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    .line 205
    sget-object v1, Lcom/android/launcher/R$styleable;->PagedView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 207
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->setPageSpacing(I)V

    .line 208
    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingTop:I

    .line 210
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingBottom:I

    .line 212
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingLeft:I

    .line 214
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingRight:I

    .line 216
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mPageLayoutWidthGap:I

    .line 218
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mPageLayoutHeightGap:I

    .line 220
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorPaddingLeft:I

    .line 222
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorPaddingRight:I

    .line 224
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 226
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->setHapticFeedbackEnabled(Z)V

    .line 227
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->init()V

    .line 228
    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher2/PagedView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/PagedView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    return-object v0
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1360
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1362
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1363
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1373
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 1375
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1376
    .local v1, "pointerId":I
    iget v3, p0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 1380
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1381
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/android/launcher2/PagedView;->mDownMotionX:F

    iput v3, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    .line 1382
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/android/launcher2/PagedView;->mLastMotionY:F

    .line 1383
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    .line 1384
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    .line 1385
    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 1386
    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1389
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 1380
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private overScrollInfluenceCurve(F)F
    .locals 2
    .param p1, "f"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1116
    sub-float/2addr p1, v1

    .line 1117
    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1367
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1368
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1370
    :cond_0
    return-void
.end method

.method private updateScrollingIndicator()V
    .locals 2

    .prologue
    .line 1829
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 1839
    :cond_0
    :goto_0
    return-void

    .line 1830
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1832
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollingIndicator()Landroid/view/View;

    .line 1833
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1834
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->updateScrollingIndicatorPosition()V

    .line 1836
    :cond_2
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mShouldShowScrollIndicator:Z

    if-eqz v0, :cond_0

    .line 1837
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mShouldShowScrollIndicatorImmediately:Z

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->showScrollingIndicator(Z)V

    goto :goto_0
.end method

.method private updateScrollingIndicatorPosition()V
    .locals 14

    .prologue
    .line 1842
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v10

    if-nez v10, :cond_1

    .line 1865
    :cond_0
    :goto_0
    return-void

    .line 1843
    :cond_1
    iget-object v10, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v10, :cond_0

    .line 1844
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v6

    .line 1845
    .local v6, "numPages":I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v8

    .line 1846
    .local v8, "pageWidth":I
    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1847
    .local v4, "lastChildIndex":I
    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v10

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v11

    sub-int v5, v10, v11

    .line 1848
    .local v5, "maxScrollX":I
    iget v10, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorPaddingLeft:I

    sub-int v10, v8, v10

    iget v11, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorPaddingRight:I

    sub-int v9, v10, v11

    .line 1849
    .local v9, "trackWidth":I
    iget-object v10, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget-object v11, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    sub-int v3, v10, v11

    .line 1852
    .local v3, "indicatorWidth":I
    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v12

    int-to-float v12, v12

    int-to-float v13, v5

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 1853
    .local v7, "offset":F
    div-int v2, v9, v6

    .line 1854
    .local v2, "indicatorSpace":I
    sub-int v10, v9, v2

    int-to-float v10, v10

    mul-float/2addr v10, v7

    float-to-int v10, v10

    iget v11, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorPaddingLeft:I

    add-int v1, v10, v11

    .line 1855
    .local v1, "indicatorPos":I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->hasElasticScrollIndicator()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1856
    iget-object v10, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    if-eq v10, v2, :cond_2

    .line 1857
    iget-object v10, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iput v2, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1858
    iget-object v10, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->requestLayout()V

    .line 1864
    :cond_2
    :goto_1
    iget-object v10, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    int-to-float v11, v1

    invoke-virtual {v10, v11}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 1861
    :cond_3
    div-int/lit8 v10, v2, 0x2

    div-int/lit8 v11, v3, 0x2

    sub-int v0, v10, v11

    .line 1862
    .local v0, "indicatorCenterOffset":I
    add-int/2addr v1, v0

    goto :goto_1
.end method


# virtual methods
.method protected acceleratedOverScroll(F)V
    .locals 6
    .param p1, "amount"    # F

    .prologue
    const/4 v5, 0x0

    .line 1121
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v2

    .line 1125
    .local v2, "screenSize":I
    const/high16 v3, 0x40000000    # 2.0f

    int-to-float v4, v2

    div-float v4, p1, v4

    mul-float v0, v3, v4

    .line 1127
    .local v0, "f":F
    cmpl-float v3, v0, v5

    if-nez v3, :cond_0

    .line 1143
    :goto_0
    return-void

    .line 1130
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 1131
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v0, v3

    .line 1134
    :cond_1
    int-to-float v3, v2

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1135
    .local v1, "overScrollAmount":I
    cmpg-float v3, p1, v5

    if-gez v3, :cond_2

    .line 1136
    iput v1, p0, Lcom/android/launcher2/PagedView;->mOverScrollX:I

    .line 1137
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 1142
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    goto :goto_0

    .line 1139
    :cond_2
    iget v3, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/launcher2/PagedView;->mOverScrollX:I

    .line 1140
    iget v3, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_1
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 873
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 874
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 876
    :cond_0
    const/16 v0, 0x11

    if-ne p2, v0, :cond_2

    .line 877
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-lez v0, :cond_1

    .line 878
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 885
    :cond_1
    :goto_0
    return-void

    .line 880
    :cond_2
    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    .line 881
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 882
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_0
.end method

.method public allowLongPress()Z
    .locals 1

    .prologue
    .line 1584
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    return v0
.end method

.method protected cancelCurrentPageLongPress()V
    .locals 2

    .prologue
    .line 1088
    iget-boolean v1, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    if-eqz v1, :cond_0

    .line 1089
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    .line 1093
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1094
    .local v0, "currentPage":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1095
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 1098
    .end local v0    # "currentPage":Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected cancelScrollingIndicatorAnimations()V
    .locals 1

    .prologue
    .line 1782
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1783
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1785
    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 0

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->computeScrollHelper()Z

    .line 470
    return-void
.end method

.method protected computeScrollHelper()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v6, -0x1

    const/4 v3, 0x0

    .line 427
    iget-object v4, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 429
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/android/launcher2/PagedView;->mOverScrollX:I

    iget-object v4, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 432
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher2/PagedView;->scrollTo(II)V

    .line 434
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    .line 464
    :cond_2
    :goto_0
    return v2

    .line 436
    :cond_3
    iget v4, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    if-eq v4, v6, :cond_6

    .line 437
    iget v4, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 438
    iput v6, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 439
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->notifyPageSwitchListener()V

    .line 442
    iget-boolean v4, p0, Lcom/android/launcher2/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    if-eqz v4, :cond_4

    .line 443
    iget v4, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(I)V

    .line 444
    iput-boolean v3, p0, Lcom/android/launcher2/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    .line 449
    :cond_4
    iget v3, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-nez v3, :cond_5

    .line 450
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->pageEndMoving()V

    .line 454
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "accessibility"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 456
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 457
    const/16 v3, 0x1000

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 459
    .local v1, "ev":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    .end local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .end local v1    # "ev":Landroid/view/accessibility/AccessibilityEvent;
    :cond_6
    move v2, v3

    .line 464
    goto :goto_0
.end method

.method protected dampedOverScroll(F)V
    .locals 6
    .param p1, "amount"    # F

    .prologue
    const/4 v5, 0x0

    .line 1146
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v2

    .line 1148
    .local v2, "screenSize":I
    int-to-float v3, v2

    div-float v0, p1, v3

    .line 1150
    .local v0, "f":F
    cmpl-float v3, v0, v5

    if-nez v3, :cond_0

    .line 1167
    :goto_0
    return-void

    .line 1151
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float v3, v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/launcher2/PagedView;->overScrollInfluenceCurve(F)F

    move-result v4

    mul-float v0, v3, v4

    .line 1154
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 1155
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v0, v3

    .line 1158
    :cond_1
    const v3, 0x3e0f5c29    # 0.14f

    mul-float/2addr v3, v0

    int-to-float v4, v2

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1159
    .local v1, "overScrollAmount":I
    cmpg-float v3, p1, v5

    if-gez v3, :cond_2

    .line 1160
    iput v1, p0, Lcom/android/launcher2/PagedView;->mOverScrollX:I

    .line 1161
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 1166
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    goto :goto_0

    .line 1163
    :cond_2
    iget v3, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/launcher2/PagedView;->mOverScrollX:I

    .line 1164
    iget v3, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_1
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1045
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    .line 1046
    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;F)V
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "touchSlopScale"    # F

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 1057
    iget v10, p0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1058
    .local v0, "pointerIndex":I
    const/4 v10, -0x1

    if-ne v0, v10, :cond_1

    .line 1085
    :cond_0
    :goto_0
    return-void

    .line 1061
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 1062
    .local v2, "x":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 1063
    .local v6, "y":F
    iget v10, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    sub-float v10, v2, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v3, v10

    .line 1064
    .local v3, "xDiff":I
    iget v10, p0, Lcom/android/launcher2/PagedView;->mLastMotionY:F

    sub-float v10, v6, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v7, v10

    .line 1066
    .local v7, "yDiff":I
    iget v10, p0, Lcom/android/launcher2/PagedView;->mTouchSlop:I

    int-to-float v10, v10

    mul-float/2addr v10, p2

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1067
    .local v1, "touchSlop":I
    iget v10, p0, Lcom/android/launcher2/PagedView;->mPagingTouchSlop:I

    if-le v3, v10, :cond_5

    move v5, v9

    .line 1068
    .local v5, "xPaged":Z
    :goto_1
    if-le v3, v1, :cond_6

    move v4, v9

    .line 1069
    .local v4, "xMoved":Z
    :goto_2
    if-le v7, v1, :cond_2

    move v8, v9

    .line 1071
    .local v8, "yMoved":Z
    :cond_2
    if-nez v4, :cond_3

    if-nez v5, :cond_3

    if-eqz v8, :cond_0

    .line 1072
    :cond_3
    iget-boolean v10, p0, Lcom/android/launcher2/PagedView;->mUsePagingTouchSlop:Z

    if-eqz v10, :cond_7

    if-eqz v5, :cond_4

    .line 1074
    :goto_3
    iput v9, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 1075
    iget v9, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    iget v10, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    sub-float/2addr v10, v2

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    add-float/2addr v9, v10

    iput v9, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 1076
    iput v2, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    .line 1077
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    .line 1078
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v9

    int-to-float v9, v9

    iput v9, p0, Lcom/android/launcher2/PagedView;->mTouchX:F

    .line 1079
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    long-to-float v9, v9

    const v10, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v9, v10

    iput v9, p0, Lcom/android/launcher2/PagedView;->mSmoothingTime:F

    .line 1080
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->pageBeginMoving()V

    .line 1083
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->cancelCurrentPageLongPress()V

    goto :goto_0

    .end local v4    # "xMoved":Z
    .end local v5    # "xPaged":Z
    .end local v8    # "yMoved":Z
    :cond_5
    move v5, v8

    .line 1067
    goto :goto_1

    .restart local v5    # "xPaged":Z
    :cond_6
    move v4, v8

    .line 1068
    goto :goto_2

    .line 1072
    .restart local v4    # "xMoved":Z
    .restart local v8    # "yMoved":Z
    :cond_7
    if-eqz v4, :cond_4

    goto :goto_3
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 791
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v9

    div-int/lit8 v2, v9, 0x2

    .line 794
    .local v2, "halfScreenSize":I
    iget v9, p0, Lcom/android/launcher2/PagedView;->mOverScrollX:I

    add-int v7, v9, v2

    .line 796
    .local v7, "screenCenter":I
    iget v9, p0, Lcom/android/launcher2/PagedView;->mLastScreenCenter:I

    if-ne v7, v9, :cond_0

    iget-boolean v9, p0, Lcom/android/launcher2/PagedView;->mForceScreenScrolled:Z

    if-eqz v9, :cond_1

    .line 799
    :cond_0
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/launcher2/PagedView;->mForceScreenScrolled:Z

    .line 800
    invoke-virtual {p0, v7}, Lcom/android/launcher2/PagedView;->screenScrolled(I)V

    .line 801
    iput v7, p0, Lcom/android/launcher2/PagedView;->mLastScreenCenter:I

    .line 805
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v5

    .line 806
    .local v5, "pageCount":I
    if-lez v5, :cond_5

    .line 807
    iget-object v9, p0, Lcom/android/launcher2/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v9}, Lcom/android/launcher2/PagedView;->getVisiblePages([I)V

    .line 808
    iget-object v9, p0, Lcom/android/launcher2/PagedView;->mTempVisiblePagesRange:[I

    const/4 v10, 0x0

    aget v4, v9, v10

    .line 809
    .local v4, "leftScreen":I
    iget-object v9, p0, Lcom/android/launcher2/PagedView;->mTempVisiblePagesRange:[I

    const/4 v10, 0x1

    aget v6, v9, v10

    .line 810
    .local v6, "rightScreen":I
    const/4 v9, -0x1

    if-eq v4, v9, :cond_5

    const/4 v9, -0x1

    if-eq v6, v9, :cond_5

    .line 811
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getDrawingTime()J

    move-result-wide v0

    .line 813
    .local v0, "drawingTime":J
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 814
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v11

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getRight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getLeft()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v12

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getBottom()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getTop()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 817
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_4

    .line 818
    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    .line 819
    .local v8, "v":Landroid/view/View;
    iget-boolean v9, p0, Lcom/android/launcher2/PagedView;->mForceDrawAllChildrenNextFrame:Z

    if-nez v9, :cond_2

    if-gt v4, v3, :cond_3

    if-gt v3, v6, :cond_3

    invoke-virtual {p0, v8}, Lcom/android/launcher2/PagedView;->shouldDrawChild(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 821
    :cond_2
    invoke-virtual {p0, p1, v8, v0, v1}, Lcom/android/launcher2/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 817
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 824
    .end local v8    # "v":Landroid/view/View;
    :cond_4
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/launcher2/PagedView;->mForceDrawAllChildrenNextFrame:Z

    .line 825
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 828
    .end local v0    # "drawingTime":J
    .end local v3    # "i":I
    .end local v4    # "leftScreen":I
    .end local v6    # "rightScreen":I
    :cond_5
    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    const/4 v0, 0x1

    .line 857
    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    .line 858
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    if-lez v1, :cond_1

    .line 859
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 868
    :goto_0
    return v0

    .line 862
    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 863
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 864
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    goto :goto_0

    .line 868
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 1462
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 1463
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 1464
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method protected flashScrollingIndicator(Z)V
    .locals 3
    .param p1, "animated"    # Z

    .prologue
    .line 1753
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1754
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->showScrollingIndicator(Z)V

    .line 1755
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x28a

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/PagedView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1756
    return-void

    .line 1754
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 4
    .param p1, "focused"    # Landroid/view/View;

    .prologue
    .line 896
    iget v3, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 897
    .local v0, "current":Landroid/view/View;
    move-object v2, p1

    .line 899
    .local v2, "v":Landroid/view/View;
    :goto_0
    if-ne v2, v0, :cond_1

    .line 900
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 910
    :cond_0
    return-void

    .line 903
    :cond_1
    if-eq v2, p0, :cond_0

    .line 906
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 907
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 908
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2    # "v":Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .restart local v2    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method protected getAssociatedLowerPageBound(I)I
    .locals 2
    .param p1, "page"    # I

    .prologue
    .line 1663
    const/4 v0, 0x0

    add-int/lit8 v1, p1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected getAssociatedUpperPageBound(I)I
    .locals 3
    .param p1, "page"    # I

    .prologue
    .line 1666
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    .line 1667
    .local v0, "count":I
    add-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method protected getChildIndexForRelativeOffset(I)I
    .locals 5
    .param p1, "relativeOffset"    # I

    .prologue
    .line 1403
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    .line 1406
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1407
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    .line 1408
    .local v2, "left":I
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v4

    add-int v3, v2, v4

    .line 1409
    .local v3, "right":I
    if-gt v2, p1, :cond_0

    if-gt p1, v3, :cond_0

    .line 1413
    .end local v1    # "i":I
    .end local v2    # "left":I
    .end local v3    # "right":I
    :goto_1
    return v1

    .line 1406
    .restart local v1    # "i":I
    .restart local v2    # "left":I
    .restart local v3    # "right":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1413
    .end local v2    # "left":I
    .end local v3    # "right":I
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method protected getChildOffset(I)I
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 713
    iget v3, p0, Lcom/android/launcher2/PagedView;->mLayoutScale:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mChildOffsets:[I

    .line 716
    .local v0, "childOffsets":[I
    :goto_0
    if-eqz v0, :cond_2

    aget v3, v0, p1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 717
    aget v2, v0, p1

    .line 729
    :cond_0
    :goto_1
    return v2

    .line 713
    .end local v0    # "childOffsets":[I
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mChildOffsetsWithLayoutScale:[I

    goto :goto_0

    .line 719
    .restart local v0    # "childOffsets":[I
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_0

    .line 722
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    .line 723
    .local v2, "offset":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, p1, :cond_3

    .line 724
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v3

    iget v4, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 723
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 726
    :cond_3
    if-eqz v0, :cond_0

    .line 727
    aput v2, v0, p1

    goto :goto_1
.end method

.method protected getChildWidth(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 1419
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1420
    .local v0, "measuredWidth":I
    iget v1, p0, Lcom/android/launcher2/PagedView;->mMinimumWidth:I

    .line 1421
    .local v1, "minWidth":I
    if-le v1, v0, :cond_0

    .end local v1    # "minWidth":I
    :goto_0
    return v1

    .restart local v1    # "minWidth":I
    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method getCurrentPage()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    return v0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1920
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0048

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getNextPage()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNextPage()I
    .locals 2

    .prologue
    .line 279
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    goto :goto_0
.end method

.method getPageAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 287
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getPageCount()I
    .locals 1

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPageForView(Landroid/view/View;)I
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1567
    const/4 v2, -0x1

    .line 1568
    .local v2, "result":I
    if-eqz p1, :cond_1

    .line 1569
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 1570
    .local v3, "vp":Landroid/view/ViewParent;
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    .line 1571
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1572
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 1577
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "vp":Landroid/view/ViewParent;
    :goto_1
    return v1

    .line 1571
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v3    # "vp":Landroid/view/ViewParent;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "vp":Landroid/view/ViewParent;
    :cond_1
    move v1, v2

    .line 1577
    goto :goto_1
.end method

.method getPageNearestToCenterOfScreen()I
    .locals 12

    .prologue
    .line 1425
    const v7, 0x7fffffff

    .line 1426
    .local v7, "minDistanceFromScreenCenter":I
    const/4 v8, -0x1

    .line 1427
    .local v8, "minDistanceFromScreenCenterIndex":I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int v9, v10, v11

    .line 1428
    .local v9, "screenCenter":I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v1

    .line 1429
    .local v1, "childCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_1

    .line 1430
    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    .line 1431
    .local v6, "layout":Landroid/view/View;
    invoke-virtual {p0, v6}, Lcom/android/launcher2/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v2

    .line 1432
    .local v2, "childWidth":I
    div-int/lit8 v4, v2, 0x2

    .line 1433
    .local v4, "halfChildWidth":I
    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v10

    add-int v0, v10, v4

    .line 1434
    .local v0, "childCenter":I
    sub-int v10, v0, v9

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1435
    .local v3, "distanceFromScreenCenter":I
    if-ge v3, v7, :cond_0

    .line 1436
    move v7, v3

    .line 1437
    move v8, v5

    .line 1429
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1440
    .end local v0    # "childCenter":I
    .end local v2    # "childWidth":I
    .end local v3    # "distanceFromScreenCenter":I
    .end local v4    # "halfChildWidth":I
    .end local v6    # "layout":Landroid/view/View;
    :cond_1
    return v8
.end method

.method protected getRelativeChildOffset(I)I
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 734
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mChildRelativeOffsets:[I

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mChildRelativeOffsets:[I

    aget v2, v2, p1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 735
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mChildRelativeOffsets:[I

    aget v0, v2, p1

    .line 743
    :cond_0
    :goto_0
    return v0

    .line 737
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPaddingRight()I

    move-result v3

    add-int v1, v2, v3

    .line 738
    .local v1, "padding":I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getChildWidth(I)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .line 740
    .local v0, "offset":I
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mChildRelativeOffsets:[I

    if-eqz v2, :cond_0

    .line 741
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mChildRelativeOffsets:[I

    aput v0, v2, p1

    goto :goto_0
.end method

.method protected getScaledMeasuredWidth(Landroid/view/View;)I
    .locals 5
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 750
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 751
    .local v1, "measuredWidth":I
    iget v2, p0, Lcom/android/launcher2/PagedView;->mMinimumWidth:I

    .line 752
    .local v2, "minWidth":I
    if-le v2, v1, :cond_0

    move v0, v2

    .line 753
    .local v0, "maxWidth":I
    :goto_0
    int-to-float v3, v0

    iget v4, p0, Lcom/android/launcher2/PagedView;->mLayoutScale:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    return v3

    .end local v0    # "maxWidth":I
    :cond_0
    move v0, v1

    .line 752
    goto :goto_0
.end method

.method protected getScrollProgress(ILandroid/view/View;I)F
    .locals 7
    .param p1, "screenCenter"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "page"    # I

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 1101
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v1, v4, 0x2

    .line 1103
    .local v1, "halfScreenSize":I
    invoke-virtual {p0, p2}, Lcom/android/launcher2/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v4

    iget v5, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    add-int v3, v4, v5

    .line 1104
    .local v3, "totalDistance":I
    invoke-virtual {p0, p3}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v4

    invoke-virtual {p0, p3}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v4, v1

    sub-int v0, p1, v4

    .line 1107
    .local v0, "delta":I
    int-to-float v4, v0

    int-to-float v5, v3

    mul-float/2addr v5, v6

    div-float v2, v4, v5

    .line 1108
    .local v2, "scrollProgress":F
    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1109
    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1110
    return v2
.end method

.method protected getScrollingIndicator()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1729
    iget-boolean v1, p0, Lcom/android/launcher2/PagedView;->mHasScrollIndicator:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    if-nez v1, :cond_0

    .line 1730
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1731
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 1732
    const v1, 0x7f07000b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    .line 1733
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/launcher2/PagedView;->mHasScrollIndicator:Z

    .line 1734
    iget-boolean v1, p0, Lcom/android/launcher2/PagedView;->mHasScrollIndicator:Z

    if-eqz v1, :cond_0

    .line 1735
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1739
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    return-object v1

    .restart local v0    # "parent":Landroid/view/ViewGroup;
    :cond_1
    move v1, v2

    .line 1733
    goto :goto_0
.end method

.method protected getVisiblePages([I)V
    .locals 9
    .param p1, "range"    # [I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v5, -0x1

    .line 757
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v2

    .line 759
    .local v2, "pageCount":I
    if-lez v2, :cond_2

    .line 760
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v4

    .line 761
    .local v4, "screenWidth":I
    const/4 v1, 0x0

    .line 762
    .local v1, "leftScreen":I
    const/4 v3, 0x0

    .line 763
    .local v3, "rightScreen":I
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 766
    .local v0, "currPage":Landroid/view/View;
    :goto_0
    add-int/lit8 v5, v2, -0x1

    if-ge v1, v5, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    .line 767
    add-int/lit8 v1, v1, 0x1

    .line 768
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 770
    :cond_0
    move v3, v1

    .line 771
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 773
    :goto_1
    add-int/lit8 v5, v2, -0x1

    if-ge v3, v5, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v6

    add-int/2addr v6, v4

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 774
    add-int/lit8 v3, v3, 0x1

    .line 775
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 777
    :cond_1
    aput v1, p1, v7

    .line 778
    aput v3, p1, v8

    .line 783
    .end local v0    # "currPage":Landroid/view/View;
    .end local v1    # "leftScreen":I
    .end local v3    # "rightScreen":I
    .end local v4    # "screenWidth":I
    :goto_2
    return-void

    .line 780
    :cond_2
    aput v5, p1, v7

    .line 781
    aput v5, p1, v8

    goto :goto_2
.end method

.method protected hasElasticScrollIndicator()Z
    .locals 1

    .prologue
    .line 1825
    const/4 v0, 0x1

    return v0
.end method

.method public hideScrollIndicatorTrack()V
    .locals 0

    .prologue
    .line 1871
    return-void
.end method

.method protected hideScrollingIndicator(Z)V
    .locals 5
    .param p1, "immediately"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1788
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    if-gt v0, v2, :cond_1

    .line 1818
    :cond_0
    :goto_0
    return-void

    .line 1789
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1791
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollingIndicator()Landroid/view/View;

    .line 1792
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1794
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->updateScrollingIndicatorPosition()V

    .line 1795
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->cancelScrollingIndicatorAnimations()V

    .line 1796
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mScrollingPaused:Z

    if-eqz v0, :cond_3

    .line 1797
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1798
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 1800
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    const-string v1, "alpha"

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    .line 1801
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x28a

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1802
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher2/PagedView$2;

    invoke-direct {v1, p0}, Lcom/android/launcher2/PagedView$2;-><init>(Lcom/android/launcher2/PagedView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1815
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method protected hitsNextPage(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 940
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hitsPreviousPage(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 933
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected indexToPage(I)I
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 291
    return p1
.end method

.method protected init()V
    .locals 4

    .prologue
    .line 234
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    .line 235
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 236
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/launcher2/PagedView$ScrollInterpolator;

    invoke-direct {v3}, Lcom/android/launcher2/PagedView$ScrollInterpolator;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    .line 237
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 238
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/PagedView;->mCenterPagesVertically:Z

    .line 240
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 241
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mTouchSlop:I

    .line 242
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mPagingTouchSlop:I

    .line 243
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mMaximumVelocity:I

    .line 244
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/android/launcher2/PagedView;->mDensity:F

    .line 246
    const/high16 v1, 0x43fa0000    # 500.0f

    iget v2, p0, Lcom/android/launcher2/PagedView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mFlingThresholdVelocity:I

    .line 247
    const/high16 v1, 0x437a0000    # 250.0f

    iget v2, p0, Lcom/android/launcher2/PagedView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mMinFlingVelocity:I

    .line 248
    const v1, 0x44bb8000    # 1500.0f

    iget v2, p0, Lcom/android/launcher2/PagedView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mMinSnapVelocity:I

    .line 249
    invoke-virtual {p0, p0}, Lcom/android/launcher2/PagedView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 250
    return-void
.end method

.method protected invalidateCachedOffsets()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 694
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    .line 695
    .local v0, "count":I
    if-nez v0, :cond_1

    .line 696
    iput-object v2, p0, Lcom/android/launcher2/PagedView;->mChildOffsets:[I

    .line 697
    iput-object v2, p0, Lcom/android/launcher2/PagedView;->mChildRelativeOffsets:[I

    .line 698
    iput-object v2, p0, Lcom/android/launcher2/PagedView;->mChildOffsetsWithLayoutScale:[I

    .line 710
    :cond_0
    return-void

    .line 702
    :cond_1
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/launcher2/PagedView;->mChildOffsets:[I

    .line 703
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/launcher2/PagedView;->mChildRelativeOffsets:[I

    .line 704
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/launcher2/PagedView;->mChildOffsetsWithLayoutScale:[I

    .line 705
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 706
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mChildOffsets:[I

    aput v3, v2, v1

    .line 707
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mChildRelativeOffsets:[I

    aput v3, v2, v1

    .line 708
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mChildOffsetsWithLayoutScale:[I

    aput v3, v2, v1

    .line 705
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected invalidatePageData()V
    .locals 2

    .prologue
    .line 1685
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedView;->invalidatePageData(IZ)V

    .line 1686
    return-void
.end method

.method protected invalidatePageData(I)V
    .locals 1
    .param p1, "currentPage"    # I

    .prologue
    .line 1688
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PagedView;->invalidatePageData(IZ)V

    .line 1689
    return-void
.end method

.method protected invalidatePageData(IZ)V
    .locals 7
    .param p1, "currentPage"    # I
    .param p2, "immediateAndOnly"    # Z

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 1691
    iget-boolean v2, p0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    if-nez v2, :cond_1

    .line 1724
    :cond_0
    :goto_0
    return-void

    .line 1695
    :cond_1
    iget-boolean v2, p0, Lcom/android/launcher2/PagedView;->mContentIsRefreshable:Z

    if-eqz v2, :cond_0

    .line 1697
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v5}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1698
    iput v4, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 1701
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->syncPages()V

    .line 1705
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/PagedView;->measure(II)V

    .line 1709
    if-le p1, v4, :cond_2

    .line 1710
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    .line 1714
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    .line 1715
    .local v0, "count":I
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1716
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 1717
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1716
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1721
    :cond_3
    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v2, p2}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(IZ)V

    .line 1722
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->requestLayout()V

    goto :goto_0
.end method

.method protected isDataReady()Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    return v0
.end method

.method protected isPageMoving()Z
    .locals 1

    .prologue
    .line 372
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    return v0
.end method

.method protected isScrollingIndicatorEnabled()Z
    .locals 1

    .prologue
    .line 1743
    const/4 v0, 0x1

    return v0
.end method

.method protected loadAssociatedPages(I)V
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 1626
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(IZ)V

    .line 1627
    return-void
.end method

.method protected loadAssociatedPages(IZ)V
    .locals 9
    .param p1, "page"    # I
    .param p2, "immediateAndOnly"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1629
    iget-boolean v5, p0, Lcom/android/launcher2/PagedView;->mContentIsRefreshable:Z

    if-eqz v5, :cond_7

    .line 1630
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    .line 1631
    .local v0, "count":I
    if-ge p1, v0, :cond_7

    .line 1632
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getAssociatedLowerPageBound(I)I

    move-result v3

    .line 1633
    .local v3, "lowerPageBound":I
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getAssociatedUpperPageBound(I)I

    move-result v4

    .line 1637
    .local v4, "upperPageBound":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 1638
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Page;

    .line 1639
    .local v2, "layout":Lcom/android/launcher2/Page;
    if-lt v1, v3, :cond_0

    if-le v1, v4, :cond_2

    .line 1640
    :cond_0
    invoke-interface {v2}, Lcom/android/launcher2/Page;->getPageChildCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 1641
    invoke-interface {v2}, Lcom/android/launcher2/Page;->removeAllViewsOnPage()V

    .line 1643
    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v1, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1637
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1647
    .end local v2    # "layout":Lcom/android/launcher2/Page;
    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_7

    .line 1648
    if-eq v1, p1, :cond_5

    if-eqz p2, :cond_5

    .line 1647
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1651
    :cond_5
    if-gt v3, v1, :cond_4

    if-gt v1, v4, :cond_4

    .line 1652
    iget-object v5, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1653
    if-ne v1, p1, :cond_6

    if-eqz p2, :cond_6

    move v5, v6

    :goto_3
    invoke-virtual {p0, v1, v5}, Lcom/android/launcher2/PagedView;->syncPageItems(IZ)V

    .line 1654
    iget-object v5, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v1, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    move v5, v7

    .line 1653
    goto :goto_3

    .line 1660
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "lowerPageBound":I
    .end local v4    # "upperPageBound":I
    :cond_7
    return-void
.end method

.method protected maxOverScroll()F
    .locals 3

    .prologue
    .line 1176
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1177
    .local v0, "f":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float v1, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/launcher2/PagedView;->overScrollInfluenceCurve(F)F

    move-result v2

    mul-float v0, v1, v2

    .line 1178
    const v1, 0x3e0f5c29    # 0.14f

    mul-float/2addr v1, v0

    return v1
.end method

.method protected notifyPageSwitchListener()V
    .locals 3

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-interface {v0, v1, v2}, Lcom/android/launcher2/PagedView$PageSwitchListener;->onPageSwitch(Landroid/view/View;I)V

    .line 355
    :cond_0
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 684
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mForceScreenScrolled:Z

    .line 685
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    .line 686
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidateCachedOffsets()V

    .line 687
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 691
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x0

    .line 1331
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 1332
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1355
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_0
    return v2

    .line 1337
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 1338
    const/4 v1, 0x0

    .line 1339
    .local v1, "vscroll":F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 1344
    .local v0, "hscroll":F
    :goto_1
    cmpl-float v2, v0, v3

    if-nez v2, :cond_1

    cmpl-float v2, v1, v3

    if-eqz v2, :cond_0

    .line 1345
    :cond_1
    cmpl-float v2, v0, v3

    if-gtz v2, :cond_2

    cmpl-float v2, v1, v3

    if-lez v2, :cond_4

    .line 1346
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->scrollRight()V

    .line 1350
    :goto_2
    const/4 v2, 0x1

    goto :goto_0

    .line 1341
    .end local v0    # "hscroll":F
    .end local v1    # "vscroll":F
    :cond_3
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    neg-float v1, v2

    .line 1342
    .restart local v1    # "vscroll":F
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .restart local v0    # "hscroll":F
    goto :goto_1

    .line 1348
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->scrollLeft()V

    goto :goto_2

    .line 1332
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1926
    const/4 v0, 0x1

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1888
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1889
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1890
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    .line 1891
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 1892
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 1893
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 1895
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v0, 0x1

    .line 1876
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1877
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    if-le v1, v0, :cond_2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1878
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 1879
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1881
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v0

    if-lez v0, :cond_1

    .line 1882
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1884
    :cond_1
    return-void

    .line 1877
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 950
    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 953
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v7

    if-gtz v7, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 1041
    :cond_0
    :goto_0
    return v5

    .line 960
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 961
    .local v0, "action":I
    if-ne v0, v9, :cond_2

    iget v7, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-eq v7, v5, :cond_0

    .line 966
    :cond_2
    and-int/lit16 v7, v0, 0xff

    packed-switch v7, :pswitch_data_0

    .line 1041
    :cond_3
    :goto_1
    :pswitch_0
    iget v7, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-nez v7, :cond_0

    move v5, v6

    goto :goto_0

    .line 972
    :pswitch_1
    iget v7, p0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    if-eq v7, v10, :cond_4

    .line 973
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 984
    :cond_4
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 985
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 987
    .local v4, "y":F
    iput v2, p0, Lcom/android/launcher2/PagedView;->mDownMotionX:F

    .line 988
    iput v2, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    .line 989
    iput v4, p0, Lcom/android/launcher2/PagedView;->mLastMotionY:F

    .line 990
    iput v8, p0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    .line 991
    iput v8, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 992
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    .line 993
    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    .line 1000
    iget-object v7, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getFinalX()I

    move-result v7

    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrX()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1001
    .local v3, "xDist":I
    iget-object v7, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->isFinished()Z

    move-result v7

    if-nez v7, :cond_5

    iget v7, p0, Lcom/android/launcher2/PagedView;->mTouchSlop:I

    if-ge v3, v7, :cond_6

    :cond_5
    move v1, v5

    .line 1002
    .local v1, "finishedScrolling":Z
    :goto_2
    if-eqz v1, :cond_7

    .line 1003
    iput v6, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 1004
    iget-object v7, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1011
    :goto_3
    iget v7, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-eq v7, v9, :cond_3

    iget v7, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_3

    .line 1012
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_3

    .line 1013
    invoke-virtual {p0, v2, v4}, Lcom/android/launcher2/PagedView;->hitsPreviousPage(FF)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1014
    iput v9, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    goto :goto_1

    .end local v1    # "finishedScrolling":Z
    :cond_6
    move v1, v6

    .line 1001
    goto :goto_2

    .line 1006
    .restart local v1    # "finishedScrolling":Z
    :cond_7
    iput v5, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    goto :goto_3

    .line 1015
    :cond_8
    invoke-virtual {p0, v2, v4}, Lcom/android/launcher2/PagedView;->hitsNextPage(FF)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1016
    const/4 v7, 0x3

    iput v7, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    goto :goto_1

    .line 1025
    .end local v1    # "finishedScrolling":Z
    .end local v2    # "x":F
    .end local v3    # "xDist":I
    .end local v4    # "y":F
    :pswitch_3
    iput v6, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 1026
    iput-boolean v6, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    .line 1027
    iput v10, p0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    .line 1028
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->releaseVelocityTracker()V

    goto :goto_1

    .line 1032
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1033
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_1

    .line 966
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 627
    iget-boolean v8, p0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    if-nez v8, :cond_1

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 632
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPaddingBottom()I

    move-result v9

    add-int v7, v8, v9

    .line 633
    .local v7, "verticalPadding":I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v1

    .line 634
    .local v1, "childCount":I
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v3

    .line 636
    .local v3, "childLeft":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v1, :cond_4

    .line 637
    invoke-virtual {p0, v6}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 638
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_3

    .line 639
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v5

    .line 640
    .local v5, "childWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 641
    .local v2, "childHeight":I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPaddingTop()I

    move-result v4

    .line 642
    .local v4, "childTop":I
    iget-boolean v8, p0, Lcom/android/launcher2/PagedView;->mCenterPagesVertically:Z

    if-eqz v8, :cond_2

    .line 643
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v8, v7

    sub-int/2addr v8, v2

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v4, v8

    .line 647
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v3

    add-int v9, v4, v2

    invoke-virtual {v0, v3, v4, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 649
    iget v8, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    add-int/2addr v8, v5

    add-int/2addr v3, v8

    .line 636
    .end local v2    # "childHeight":I
    .end local v4    # "childTop":I
    .end local v5    # "childWidth":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 653
    .end local v0    # "child":Landroid/view/View;
    :cond_4
    iget-boolean v8, p0, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ltz v8, :cond_0

    iget v8, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v9

    if-ge v8, v9, :cond_0

    .line 654
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/launcher2/PagedView;->setHorizontalScrollBarEnabled(Z)V

    .line 655
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->updateCurrentPageScroll()V

    .line 656
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/launcher2/PagedView;->setHorizontalScrollBarEnabled(Z)V

    .line 657
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 21
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 474
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 475
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 573
    :goto_0
    return-void

    .line 479
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 480
    .local v17, "widthMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    .line 481
    .local v18, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 482
    .local v8, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 483
    .local v9, "heightSize":I
    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 484
    new-instance v19, Ljava/lang/IllegalStateException;

    const-string v20, "Workspace can only be used in EXACTLY mode."

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 488
    :cond_1
    if-lez v18, :cond_2

    if-gtz v9, :cond_3

    .line 489
    :cond_2
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    goto :goto_0

    .line 498
    :cond_3
    const/4 v13, 0x0

    .line 500
    .local v13, "maxChildHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getPaddingTop()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getPaddingBottom()I

    move-result v20

    add-int v16, v19, v20

    .line 501
    .local v16, "verticalPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getPaddingLeft()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getPaddingRight()I

    move-result v20

    add-int v10, v19, v20

    .line 507
    .local v10, "horizontalPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v3

    .line 508
    .local v3, "childCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v3, :cond_6

    .line 510
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    .line 511
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 514
    .local v12, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v0, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v19, v0

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 515
    const/high16 v7, -0x80000000

    .line 521
    .local v7, "childWidthMode":I
    :goto_2
    iget v0, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v19, v0

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 522
    const/high16 v5, -0x80000000

    .line 527
    .local v5, "childHeightMode":I
    :goto_3
    sub-int v19, v18, v10

    move/from16 v0, v19

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 529
    .local v6, "childWidthMeasureSpec":I
    sub-int v19, v9, v16

    move/from16 v0, v19

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 532
    .local v4, "childHeightMeasureSpec":I
    invoke-virtual {v2, v6, v4}, Landroid/view/View;->measure(II)V

    .line 533
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 508
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 517
    .end local v4    # "childHeightMeasureSpec":I
    .end local v5    # "childHeightMode":I
    .end local v6    # "childWidthMeasureSpec":I
    .end local v7    # "childWidthMode":I
    :cond_4
    const/high16 v7, 0x40000000    # 2.0f

    .restart local v7    # "childWidthMode":I
    goto :goto_2

    .line 524
    :cond_5
    const/high16 v5, 0x40000000    # 2.0f

    .restart local v5    # "childHeightMode":I
    goto :goto_3

    .line 538
    .end local v2    # "child":Landroid/view/View;
    .end local v5    # "childHeightMode":I
    .end local v7    # "childWidthMode":I
    .end local v12    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    const/high16 v19, -0x80000000

    move/from16 v0, v19

    if-ne v8, v0, :cond_7

    .line 539
    add-int v9, v13, v16

    .line 542
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v9}, Lcom/android/launcher2/PagedView;->setMeasuredDimension(II)V

    .line 547
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->invalidateCachedOffsets()V

    .line 549
    if-lez v3, :cond_8

    .line 554
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 559
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v14

    .line 560
    .local v14, "offset":I
    sub-int v19, v18, v14

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v0, v19

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 562
    .local v15, "spacing":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/launcher2/PagedView;->setPageSpacing(I)V

    .line 566
    .end local v14    # "offset":I
    .end local v15    # "spacing":I
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->updateScrollingIndicatorPosition()V

    .line 568
    if-lez v3, :cond_9

    .line 569
    add-int/lit8 v19, v3, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v19

    add-int/lit8 v20, v3, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    goto/16 :goto_0

    .line 571
    :cond_9
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    goto/16 :goto_0
.end method

.method protected onPageBeginMoving()V
    .locals 0

    .prologue
    .line 377
    return-void
.end method

.method protected onPageEndMoving()V
    .locals 0

    .prologue
    .line 381
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 843
    iget v2, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 844
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 848
    .local v0, "focusablePage":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 849
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 850
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    .line 852
    :goto_1
    return v2

    .line 846
    .end local v0    # "focusablePage":I
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .restart local v0    # "focusablePage":I
    goto :goto_0

    .line 852
    .restart local v1    # "v":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1184
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v14

    if-gtz v14, :cond_0

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v14

    .line 1326
    :goto_0
    return v14

    .line 1186
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1188
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 1190
    .local v1, "action":I
    and-int/lit16 v14, v1, 0xff

    packed-switch v14, :pswitch_data_0

    .line 1326
    :cond_1
    :goto_1
    :pswitch_0
    const/4 v14, 0x1

    goto :goto_0

    .line 1196
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->isFinished()Z

    move-result v14

    if-nez v14, :cond_2

    .line 1197
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1201
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher2/PagedView;->mDownMotionX:F

    .line 1202
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    .line 1203
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 1204
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    .line 1205
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    .line 1206
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->pageBeginMoving()V

    goto :goto_1

    .line 1211
    :pswitch_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    .line 1213
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    .line 1214
    .local v9, "pointerIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    .line 1215
    .local v13, "x":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    add-float/2addr v14, v15

    sub-float v3, v14, v13

    .line 1217
    .local v3, "deltaX":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v15

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 1222
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_4

    .line 1223
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PagedView;->mTouchX:F

    add-float/2addr v14, v3

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher2/PagedView;->mTouchX:F

    .line 1224
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    long-to-float v14, v14

    const v15, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher2/PagedView;->mSmoothingTime:F

    .line 1225
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/launcher2/PagedView;->mDeferScrollUpdate:Z

    if-nez v14, :cond_3

    .line 1226
    float-to-int v14, v3

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/launcher2/PagedView;->scrollBy(II)V

    .line 1231
    :goto_2
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    .line 1232
    float-to-int v14, v3

    int-to-float v14, v14

    sub-float v14, v3, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    goto/16 :goto_1

    .line 1229
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    goto :goto_2

    .line 1234
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->awakenScrollBars()Z

    goto/16 :goto_1

    .line 1237
    .end local v3    # "deltaX":F
    .end local v9    # "pointerIndex":I
    .end local v13    # "x":F
    :cond_5
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1242
    :pswitch_3
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_11

    .line 1243
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    .line 1244
    .local v2, "activePointerId":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    .line 1245
    .restart local v9    # "pointerIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    .line 1246
    .restart local v13    # "x":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1247
    .local v11, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v14, 0x3e8

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/PagedView;->mMaximumVelocity:I

    int-to-float v15, v15

    invoke-virtual {v11, v14, v15}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1248
    invoke-virtual {v11, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v14

    float-to-int v12, v14

    .line 1249
    .local v12, "velocityX":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PagedView;->mDownMotionX:F

    sub-float v14, v13, v14

    float-to-int v3, v14

    .line 1250
    .local v3, "deltaX":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/launcher2/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v8

    .line 1251
    .local v8, "pageWidth":I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v14

    int-to-float v14, v14

    int-to-float v15, v8

    const v16, 0x3ecccccd    # 0.4f

    mul-float v15, v15, v16

    cmpl-float v14, v14, v15

    if-lez v14, :cond_9

    const/4 v6, 0x1

    .line 1254
    .local v6, "isSignificantMove":Z
    :goto_3
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    move/from16 v16, v0

    add-float v15, v15, v16

    sub-float/2addr v15, v13

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 1256
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    const/high16 v15, 0x41c80000    # 25.0f

    cmpl-float v14, v14, v15

    if-lez v14, :cond_a

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/PagedView;->mFlingThresholdVelocity:I

    if-le v14, v15, :cond_a

    const/4 v5, 0x1

    .line 1262
    .local v5, "isFling":Z
    :goto_4
    const/4 v10, 0x0

    .line 1263
    .local v10, "returnToOriginalPage":Z
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v14

    int-to-float v14, v14

    int-to-float v15, v8

    const v16, 0x3ea8f5c3    # 0.33f

    mul-float v15, v15, v16

    cmpl-float v14, v14, v15

    if-lez v14, :cond_6

    int-to-float v14, v12

    invoke-static {v14}, Ljava/lang/Math;->signum(F)F

    move-result v14

    int-to-float v15, v3

    invoke-static {v15}, Ljava/lang/Math;->signum(F)F

    move-result v15

    cmpl-float v14, v14, v15

    if-eqz v14, :cond_6

    if-eqz v5, :cond_6

    .line 1265
    const/4 v10, 0x1

    .line 1272
    :cond_6
    if-eqz v6, :cond_7

    if-lez v3, :cond_7

    if-eqz v5, :cond_8

    :cond_7
    if-eqz v5, :cond_c

    if-lez v12, :cond_c

    :cond_8
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-lez v14, :cond_c

    .line 1274
    if-eqz v10, :cond_b

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 1275
    .local v4, "finalPage":I
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v12}, Lcom/android/launcher2/PagedView;->snapToPageWithVelocity(II)V

    .line 1307
    .end local v2    # "activePointerId":I
    .end local v3    # "deltaX":I
    .end local v4    # "finalPage":I
    .end local v5    # "isFling":Z
    .end local v6    # "isSignificantMove":Z
    .end local v8    # "pageWidth":I
    .end local v9    # "pointerIndex":I
    .end local v10    # "returnToOriginalPage":Z
    .end local v11    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v12    # "velocityX":I
    .end local v13    # "x":F
    :goto_6
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 1308
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    .line 1309
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_1

    .line 1251
    .restart local v2    # "activePointerId":I
    .restart local v3    # "deltaX":I
    .restart local v8    # "pageWidth":I
    .restart local v9    # "pointerIndex":I
    .restart local v11    # "velocityTracker":Landroid/view/VelocityTracker;
    .restart local v12    # "velocityX":I
    .restart local v13    # "x":F
    :cond_9
    const/4 v6, 0x0

    goto :goto_3

    .line 1256
    .restart local v6    # "isSignificantMove":Z
    :cond_a
    const/4 v5, 0x0

    goto :goto_4

    .line 1274
    .restart local v5    # "isFling":Z
    .restart local v10    # "returnToOriginalPage":Z
    :cond_b
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v4, v14, -0x1

    goto :goto_5

    .line 1276
    :cond_c
    if-eqz v6, :cond_d

    if-gez v3, :cond_d

    if-eqz v5, :cond_e

    :cond_d
    if-eqz v5, :cond_10

    if-gez v12, :cond_10

    :cond_e
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-ge v14, v15, :cond_10

    .line 1279
    if-eqz v10, :cond_f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 1280
    .restart local v4    # "finalPage":I
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v12}, Lcom/android/launcher2/PagedView;->snapToPageWithVelocity(II)V

    goto :goto_6

    .line 1279
    .end local v4    # "finalPage":I
    :cond_f
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v4, v14, 0x1

    goto :goto_7

    .line 1282
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    goto :goto_6

    .line 1284
    .end local v2    # "activePointerId":I
    .end local v3    # "deltaX":I
    .end local v5    # "isFling":Z
    .end local v6    # "isSignificantMove":Z
    .end local v8    # "pageWidth":I
    .end local v9    # "pointerIndex":I
    .end local v10    # "returnToOriginalPage":Z
    .end local v11    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v12    # "velocityX":I
    .end local v13    # "x":F
    :cond_11
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_13

    .line 1288
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v15, v15, -0x1

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1289
    .local v7, "nextPage":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-eq v7, v14, :cond_12

    .line 1290
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    goto :goto_6

    .line 1292
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    goto :goto_6

    .line 1294
    .end local v7    # "nextPage":I
    :cond_13
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_15

    .line 1298
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v15, v15, 0x1

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1299
    .restart local v7    # "nextPage":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-eq v7, v14, :cond_14

    .line 1300
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    goto/16 :goto_6

    .line 1302
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    goto/16 :goto_6

    .line 1305
    .end local v7    # "nextPage":I
    :cond_15
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/PagedView;->onUnhandledTap(Landroid/view/MotionEvent;)V

    goto/16 :goto_6

    .line 1313
    :pswitch_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_16

    .line 1314
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    .line 1316
    :cond_16
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 1317
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    .line 1318
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_1

    .line 1322
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1190
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1391
    return-void
.end method

.method protected overScroll(F)V
    .locals 0
    .param p1, "amount"    # F

    .prologue
    .line 1170
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->dampedOverScroll(F)V

    .line 1171
    return-void
.end method

.method protected pageBeginMoving()V
    .locals 1

    .prologue
    .line 358
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    if-nez v0, :cond_0

    .line 359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    .line 360
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->onPageBeginMoving()V

    .line 362
    :cond_0
    return-void
.end method

.method protected pageEndMoving()V
    .locals 1

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    if-eqz v0, :cond_0

    .line 366
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    .line 367
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->onPageEndMoving()V

    .line 369
    :cond_0
    return-void
.end method

.method pauseScrolling()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 318
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 319
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->cancelScrollingIndicatorAnimations()V

    .line 320
    iput-boolean v1, p0, Lcom/android/launcher2/PagedView;->mScrollingPaused:Z

    .line 321
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 3
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    .line 1899
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1916
    :goto_0
    return v0

    .line 1902
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1916
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1904
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 1905
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->scrollRight()V

    goto :goto_0

    .line 1910
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    if-lez v1, :cond_1

    .line 1911
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->scrollLeft()V

    goto :goto_0

    .line 1902
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 1395
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1396
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->indexToPage(I)I

    move-result v0

    .line 1397
    .local v0, "page":I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1398
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 1400
    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 832
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->indexToPage(I)I

    move-result v0

    .line 833
    .local v0, "page":I
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 834
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 835
    const/4 v1, 0x1

    .line 837
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 920
    if-eqz p1, :cond_0

    .line 923
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 924
    .local v0, "currentPage":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 926
    .end local v0    # "currentPage":Landroid/view/View;
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 927
    return-void
.end method

.method resumeScrolling()V
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mScrollingPaused:Z

    .line 329
    return-void
.end method

.method protected screenScrolled(I)V
    .locals 7
    .param p1, "screenCenter"    # I

    .prologue
    .line 662
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 663
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->updateScrollingIndicator()V

    .line 665
    :cond_0
    iget v5, p0, Lcom/android/launcher2/PagedView;->mOverScrollX:I

    if-ltz v5, :cond_1

    iget v5, p0, Lcom/android/launcher2/PagedView;->mOverScrollX:I

    iget v6, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    if-le v5, v6, :cond_3

    :cond_1
    const/4 v3, 0x1

    .line 667
    .local v3, "isInOverscroll":Z
    :goto_0
    iget-boolean v5, p0, Lcom/android/launcher2/PagedView;->mFadeInAdjacentScreens:Z

    if-eqz v5, :cond_5

    if-nez v3, :cond_5

    .line 668
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 669
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 670
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 671
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/launcher2/PagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v4

    .line 672
    .local v4, "scrollProgress":F
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float v0, v5, v6

    .line 673
    .local v0, "alpha":F
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 668
    .end local v0    # "alpha":F
    .end local v4    # "scrollProgress":F
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 665
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "i":I
    .end local v3    # "isInOverscroll":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 676
    .restart local v2    # "i":I
    .restart local v3    # "isInOverscroll":Z
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    .line 678
    .end local v2    # "i":I
    :cond_5
    return-void
.end method

.method public scrollBy(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 399
    iget v0, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedView;->scrollTo(II)V

    .line 400
    return-void
.end method

.method public scrollLeft()V
    .locals 1

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1552
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 1556
    :cond_0
    :goto_0
    return-void

    .line 1554
    :cond_1
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    goto :goto_0
.end method

.method public scrollRight()V
    .locals 2

    .prologue
    .line 1559
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1560
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 1564
    :cond_0
    :goto_0
    return-void

    .line 1562
    :cond_1
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    goto :goto_0
.end method

.method public scrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 404
    iput p1, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    .line 406
    if-gez p1, :cond_1

    .line 407
    const/4 v0, 0x0

    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 408
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mAllowOverScroll:Z

    if-eqz v0, :cond_0

    .line 409
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->overScroll(F)V

    .line 421
    :cond_0
    :goto_0
    int-to-float v0, p1

    iput v0, p0, Lcom/android/launcher2/PagedView;->mTouchX:F

    .line 422
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/PagedView;->mSmoothingTime:F

    .line 423
    return-void

    .line 411
    :cond_1
    iget v0, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    if-le p1, v0, :cond_2

    .line 412
    iget v0, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 413
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mAllowOverScroll:Z

    if-eqz v0, :cond_0

    .line 414
    iget v0, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->overScroll(F)V

    goto :goto_0

    .line 417
    :cond_2
    iput p1, p0, Lcom/android/launcher2/PagedView;->mOverScrollX:I

    .line 418
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_0
.end method

.method protected scrollToNewPageWithoutMovingPages(I)V
    .locals 7
    .param p1, "newCurrentPage"    # I

    .prologue
    .line 576
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v5

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v6

    sub-int v2, v5, v6

    .line 577
    .local v2, "newX":I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v5

    sub-int v0, v2, v5

    .line 579
    .local v0, "delta":I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v4

    .line 580
    .local v4, "pageCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 581
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    .line 582
    .local v3, "page":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v5

    int-to-float v6, v0

    add-float/2addr v5, v6

    invoke-virtual {v3, v5}, Landroid/view/View;->setX(F)V

    .line 580
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 584
    .end local v3    # "page":Landroid/view/View;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    .line 585
    return-void
.end method

.method public setAllowLongPress(Z)V
    .locals 0
    .param p1, "allowLongPress"    # Z

    .prologue
    .line 1592
    iput-boolean p1, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    .line 1593
    return-void
.end method

.method setCurrentPage(I)V
    .locals 2
    .param p1, "currentPage"    # I

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 339
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 349
    :goto_0
    return-void

    .line 344
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 345
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->updateCurrentPageScroll()V

    .line 346
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->updateScrollingIndicator()V

    .line 347
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->notifyPageSwitchListener()V

    .line 348
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    goto :goto_0
.end method

.method protected setDataIsReady()V
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    .line 265
    return-void
.end method

.method public setLayoutScale(F)V
    .locals 11
    .param p1, "childrenScale"    # F

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 591
    iput p1, p0, Lcom/android/launcher2/PagedView;->mLayoutScale:F

    .line 592
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidateCachedOffsets()V

    .line 595
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v1

    .line 596
    .local v1, "childCount":I
    new-array v2, v1, [F

    .line 597
    .local v2, "childrenX":[F
    new-array v3, v1, [F

    .line 598
    .local v3, "childrenY":[F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_0

    .line 599
    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 600
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v7

    aput v7, v2, v5

    .line 601
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v7

    aput v7, v3, v5

    .line 598
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 604
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v7

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 605
    .local v6, "widthSpec":I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredHeight()I

    move-result v7

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 606
    .local v4, "heightSpec":I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->requestLayout()V

    .line 607
    invoke-virtual {p0, v6, v4}, Lcom/android/launcher2/PagedView;->measure(II)V

    .line 608
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getLeft()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getTop()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getRight()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getBottom()I

    move-result v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lcom/android/launcher2/PagedView;->layout(IIII)V

    .line 609
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_1

    .line 610
    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 611
    .restart local v0    # "child":Landroid/view/View;
    aget v7, v2, v5

    invoke-virtual {v0, v7}, Landroid/view/View;->setX(F)V

    .line 612
    aget v7, v3, v5

    invoke-virtual {v0, v7}, Landroid/view/View;->setY(F)V

    .line 609
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 617
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    iget v7, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v7}, Lcom/android/launcher2/PagedView;->scrollToNewPageWithoutMovingPages(I)V

    .line 618
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3
    .param p1, "l"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 390
    iput-object p1, p0, Lcom/android/launcher2/PagedView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 391
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v0

    .line 392
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 393
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 392
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 395
    :cond_0
    return-void
.end method

.method public setPageSpacing(I)V
    .locals 0
    .param p1, "pageSpacing"    # I

    .prologue
    .line 621
    iput p1, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    .line 622
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidateCachedOffsets()V

    .line 623
    return-void
.end method

.method public setPageSwitchListener(Lcom/android/launcher2/PagedView$PageSwitchListener;)V
    .locals 3
    .param p1, "pageSwitchListener"    # Lcom/android/launcher2/PagedView$PageSwitchListener;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/launcher2/PagedView;->mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

    .line 254
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-interface {v0, v1, v2}, Lcom/android/launcher2/PagedView$PageSwitchListener;->onPageSwitch(Landroid/view/View;I)V

    .line 257
    :cond_0
    return-void
.end method

.method protected shouldDrawChild(Landroid/view/View;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 786
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showScrollIndicatorTrack()V
    .locals 0

    .prologue
    .line 1868
    return-void
.end method

.method protected showScrollingIndicator(Z)V
    .locals 5
    .param p1, "immediately"    # Z

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1759
    iput-boolean v2, p0, Lcom/android/launcher2/PagedView;->mShouldShowScrollIndicator:Z

    .line 1760
    iput-boolean v2, p0, Lcom/android/launcher2/PagedView;->mShouldShowScrollIndicatorImmediately:Z

    .line 1761
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    if-gt v0, v2, :cond_1

    .line 1779
    :cond_0
    :goto_0
    return-void

    .line 1762
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1764
    iput-boolean v3, p0, Lcom/android/launcher2/PagedView;->mShouldShowScrollIndicator:Z

    .line 1765
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollingIndicator()Landroid/view/View;

    .line 1766
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1768
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->updateScrollingIndicatorPosition()V

    .line 1769
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1770
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->cancelScrollingIndicatorAnimations()V

    .line 1771
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mScrollingPaused:Z

    if-eqz v0, :cond_3

    .line 1772
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 1774
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    const-string v1, "alpha"

    new-array v2, v2, [F

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    .line 1775
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1776
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method protected snapToDestination()V
    .locals 2

    .prologue
    .line 1444
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    const/16 v1, 0x226

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedView;->snapToPage(II)V

    .line 1445
    return-void
.end method

.method protected snapToPage(I)V
    .locals 1
    .param p1, "whichPage"    # I

    .prologue
    .line 1506
    const/16 v0, 0x226

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PagedView;->snapToPage(II)V

    .line 1507
    return-void
.end method

.method protected snapToPage(II)V
    .locals 5
    .param p1, "whichPage"    # I
    .param p2, "duration"    # I

    .prologue
    .line 1510
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1515
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v4

    sub-int v1, v3, v4

    .line 1516
    .local v1, "newX":I
    iget v2, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    .line 1517
    .local v2, "sX":I
    sub-int v0, v1, v2

    .line 1518
    .local v0, "delta":I
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher2/PagedView;->snapToPage(III)V

    .line 1519
    return-void
.end method

.method protected snapToPage(III)V
    .locals 7
    .param p1, "whichPage"    # I
    .param p2, "delta"    # I
    .param p3, "duration"    # I

    .prologue
    const/4 v2, 0x0

    .line 1522
    iput p1, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 1524
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getFocusedChild()Landroid/view/View;

    move-result-object v6

    .line 1525
    .local v6, "focusedChild":Landroid/view/View;
    if-eqz v6, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v6, v0, :cond_0

    .line 1527
    invoke-virtual {v6}, Landroid/view/View;->clearFocus()V

    .line 1530
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->pageBeginMoving()V

    .line 1531
    invoke-virtual {p0, p3}, Lcom/android/launcher2/PagedView;->awakenScrollBars(I)Z

    .line 1532
    if-nez p3, :cond_1

    .line 1533
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 1536
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1537
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    move v3, p2

    move v4, v2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1541
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mDeferScrollUpdate:Z

    if-eqz v0, :cond_3

    .line 1542
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(I)V

    .line 1546
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->notifyPageSwitchListener()V

    .line 1547
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    .line 1548
    return-void

    .line 1544
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    goto :goto_0
.end method

.method protected snapToPageWithVelocity(II)V
    .locals 9
    .param p1, "whichPage"    # I
    .param p2, "velocity"    # I

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 1468
    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {p1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1469
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v4, v6, 0x2

    .line 1474
    .local v4, "halfScreenSize":I
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v6

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v7

    sub-int v5, v6, v7

    .line 1475
    .local v5, "newX":I
    iget v6, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    sub-int v0, v5, v6

    .line 1476
    .local v0, "delta":I
    const/4 v3, 0x0

    .line 1478
    .local v3, "duration":I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/android/launcher2/PagedView;->mMinFlingVelocity:I

    if-ge v6, v7, :cond_0

    .line 1481
    const/16 v6, 0x226

    invoke-virtual {p0, p1, v6}, Lcom/android/launcher2/PagedView;->snapToPage(II)V

    .line 1503
    :goto_0
    return-void

    .line 1489
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    mul-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1490
    .local v2, "distanceRatio":F
    int-to-float v6, v4

    int-to-float v7, v4

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->distanceInfluenceForSnapDuration(F)F

    move-result v8

    mul-float/2addr v7, v8

    add-float v1, v6, v7

    .line 1493
    .local v1, "distance":F
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 1494
    iget v6, p0, Lcom/android/launcher2/PagedView;->mMinSnapVelocity:I

    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1499
    const/high16 v6, 0x447a0000    # 1000.0f

    int-to-float v7, p2

    div-float v7, v1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int/lit8 v3, v6, 0x4

    .line 1500
    const/16 v6, 0x2ee

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1502
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/launcher2/PagedView;->snapToPage(III)V

    goto :goto_0
.end method

.method public abstract syncPageItems(IZ)V
.end method

.method public abstract syncPages()V
.end method

.method protected updateCurrentPageScroll()V
    .locals 5

    .prologue
    .line 301
    const/4 v0, 0x0

    .line 302
    .local v0, "newX":I
    iget v3, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 303
    iget v3, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v1

    .line 304
    .local v1, "offset":I
    iget v3, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    .line 305
    .local v2, "relOffset":I
    sub-int v0, v1, v2

    .line 307
    .end local v1    # "offset":I
    .end local v2    # "relOffset":I
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/launcher2/PagedView;->scrollTo(II)V

    .line 308
    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3, v0}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 309
    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 310
    return-void
.end method

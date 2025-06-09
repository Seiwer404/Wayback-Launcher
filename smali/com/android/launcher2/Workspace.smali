.class public Lcom/android/launcher2/Workspace;
.super Lcom/android/launcher2/SmoothPagedView;
.source "Workspace.java"

# interfaces
.implements Lcom/android/launcher2/DropTarget;
.implements Lcom/android/launcher2/DragSource;
.implements Lcom/android/launcher2/DragScroller;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/launcher2/DragController$DragListener;
.implements Lcom/android/launcher2/LauncherTransitionable;
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/Workspace$ReorderAlarmListener;,
        Lcom/android/launcher2/Workspace$FolderCreationAlarmListener;,
        Lcom/android/launcher2/Workspace$ZoomInInterpolator;,
        Lcom/android/launcher2/Workspace$ZoomOutInterpolator;,
        Lcom/android/launcher2/Workspace$InverseZInterpolator;,
        Lcom/android/launcher2/Workspace$ZInterpolator;,
        Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;,
        Lcom/android/launcher2/Workspace$WallpaperVerticalOffset;,
        Lcom/android/launcher2/Workspace$State;
    }
.end annotation


# static fields
.field private static final ADJACENT_SCREEN_DROP_DURATION:I = 0x12c

.field public static final ANIMATE_INTO_POSITION_AND_DISAPPEAR:I = 0x0

.field public static final ANIMATE_INTO_POSITION_AND_REMAIN:I = 0x1

.field public static final ANIMATE_INTO_POSITION_AND_RESIZE:I = 0x2

.field private static final BACKGROUND_FADE_OUT_DURATION:I = 0x15e

.field public static final CANCEL_TWO_STAGE_WIDGET_DROP_ANIMATION:I = 0x4

.field private static final CHILDREN_OUTLINE_FADE_IN_DURATION:I = 0x64

.field private static final CHILDREN_OUTLINE_FADE_OUT_DELAY:I = 0x0

.field private static final CHILDREN_OUTLINE_FADE_OUT_DURATION:I = 0x177

.field public static final COMPLETE_TWO_STAGE_WIDGET_DROP_ANIMATION:I = 0x3

.field private static final DEFAULT_CELL_COUNT_X:I = 0x4

.field private static final DEFAULT_CELL_COUNT_Y:I = 0x4

.field public static final DRAG_BITMAP_PADDING:I = 0x2

.field private static final DRAG_MODE_ADD_TO_FOLDER:I = 0x2

.field private static final DRAG_MODE_CREATE_FOLDER:I = 0x1

.field private static final DRAG_MODE_NONE:I = 0x0

.field private static final DRAG_MODE_REORDER:I = 0x3

.field private static final FLING_THRESHOLD_VELOCITY:I = 0x1f4

.field private static final FOLDER_CREATION_TIMEOUT:I = 0x0

.field static final MAX_SWIPE_ANGLE:F = 1.0471976f

.field private static final REORDER_TIMEOUT:I = 0xfa

.field static final START_DAMPING_TOUCH_SLOP_ANGLE:F = 0.5235988f

.field private static final TAG:Ljava/lang/String; = "Launcher.Workspace"

.field static final TOUCH_SLOP_DAMPING_FACTOR:F = 4.0f

.field private static final WALLPAPER_SCREENS_SPAN:F = 2.0f

.field private static final WORKSPACE_OVERSCROLL_ROTATION:F = 24.0f

.field static mLandscapeCellLayoutMetrics:Landroid/graphics/Rect;

.field static mPortraitCellLayoutMetrics:Landroid/graphics/Rect;


# instance fields
.field private mAddToExistingFolderOnDrop:Z

.field mAnimatingViewIntoPlace:Z

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundAlpha:F

.field private mBackgroundFadeInAnimation:Landroid/animation/ValueAnimator;

.field private mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

.field private final mBindPages:Ljava/lang/Runnable;

.field private mCameraDistance:I

.field mChildrenLayersEnabled:Z

.field private mChildrenOutlineAlpha:F

.field private mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

.field private mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

.field private mCreateUserFolderOnDrop:Z

.field private mCurrentRotationY:F

.field private mCurrentScaleX:F

.field private mCurrentScaleY:F

.field private mCurrentTranslationX:F

.field private mCurrentTranslationY:F

.field private mDefaultPage:I

.field private mDelayedResizeRunnable:Ljava/lang/Runnable;

.field private mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

.field private mDisplaySize:Landroid/graphics/Point;

.field private mDragController:Lcom/android/launcher2/DragController;

.field private mDragEnforcer:Lcom/android/launcher2/DropTarget$DragEnforcer;

.field private mDragFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

.field private mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

.field private mDragMode:I

.field private mDragOutline:Landroid/graphics/Bitmap;

.field private mDragOverFolderIcon:Lcom/android/launcher2/FolderIcon;

.field private mDragOverX:I

.field private mDragOverY:I

.field private mDragOverlappingLayout:Lcom/android/launcher2/CellLayout;

.field private mDragTargetLayout:Lcom/android/launcher2/CellLayout;

.field private mDragViewVisualCenter:[F

.field mDrawBackground:Z

.field private mDropToLayout:Lcom/android/launcher2/CellLayout;

.field private final mFolderCreationAlarm:Lcom/android/launcher2/Alarm;

.field private mIconCache:Lcom/android/launcher2/IconCache;

.field private mInScrollArea:Z

.field mIsDragOccuring:Z

.field private mIsStaticWallpaper:Z

.field private mIsSwitchingState:Z

.field private mLastReorderX:I

.field private mLastReorderY:I

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mMaxDistanceForFolderCreation:F

.field private mNewAlphas:[F

.field private mNewBackgroundAlphas:[F

.field private mNewRotationYs:[F

.field private mNewScaleXs:[F

.field private mNewScaleYs:[F

.field private mNewTranslationXs:[F

.field private mNewTranslationYs:[F

.field private mOldAlphas:[F

.field private mOldBackgroundAlphas:[F

.field private mOldScaleXs:[F

.field private mOldScaleYs:[F

.field private mOldTranslationXs:[F

.field private mOldTranslationYs:[F

.field private mOriginalPageSpacing:I

.field private final mOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

.field private mOverScrollMaxBackgroundAlpha:F

.field private mOverscrollFade:F

.field private mOverscrollTransformsSet:Z

.field private final mReorderAlarm:Lcom/android/launcher2/Alarm;

.field private final mRestoredPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedRotationY:F

.field private mSavedScrollX:I

.field private mSavedStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedTranslationX:F

.field private mSpringLoadedDragController:Lcom/android/launcher2/SpringLoadedDragController;

.field private mSpringLoadedPageSpacing:I

.field private mSpringLoadedShrinkFactor:F

.field private mState:Lcom/android/launcher2/Workspace$State;

.field private mTargetCell:[I

.field private mTempCell:[I

.field private mTempCellLayoutCenterCoordinates:[F

.field private mTempDragBottomRightCoordinates:[F

.field private mTempDragCoordinates:[F

.field private mTempEstimate:[I

.field private mTempInverseMatrix:Landroid/graphics/Matrix;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTempVisiblePagesRange:[I

.field private final mTempXY:[I

.field private mTransitionProgress:F

.field mUpdateWallpaperOffsetImmediately:Z

.field mWallpaperHeight:I

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

.field private mWallpaperScrollRatio:F

.field private mWallpaperTravelWidth:I

.field mWallpaperWidth:I

.field private mWindowToken:Landroid/os/IBinder;

.field private mWorkspaceFadeInAdjacentScreens:Z

.field private mXDown:F

.field private mYDown:F

.field private final mZoomInInterpolator:Lcom/android/launcher2/Workspace$ZoomInInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 120
    sput-object v0, Lcom/android/launcher2/Workspace;->mLandscapeCellLayoutMetrics:Landroid/graphics/Rect;

    .line 121
    sput-object v0, Lcom/android/launcher2/Workspace;->mPortraitCellLayoutMetrics:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 270
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 271
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 281
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/SmoothPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineAlpha:F

    .line 95
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mDrawBackground:Z

    .line 96
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/launcher2/Workspace;->mBackgroundAlpha:F

    .line 97
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/launcher2/Workspace;->mOverScrollMaxBackgroundAlpha:F

    .line 99
    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, p0, Lcom/android/launcher2/Workspace;->mWallpaperScrollRatio:F

    .line 116
    const/4 v8, 0x2

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 117
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/launcher2/Workspace;->mDragOverX:I

    .line 118
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/launcher2/Workspace;->mDragOverY:I

    .line 126
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    .line 130
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mDragOverlappingLayout:Lcom/android/launcher2/CellLayout;

    .line 135
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mDropToLayout:Lcom/android/launcher2/CellLayout;

    .line 143
    const/4 v8, 0x2

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempCell:[I

    .line 144
    const/4 v8, 0x2

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempEstimate:[I

    .line 145
    const/4 v8, 0x2

    new-array v8, v8, [F

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    .line 146
    const/4 v8, 0x2

    new-array v8, v8, [F

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempDragCoordinates:[F

    .line 147
    const/4 v8, 0x2

    new-array v8, v8, [F

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempCellLayoutCenterCoordinates:[F

    .line 148
    const/4 v8, 0x2

    new-array v8, v8, [F

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempDragBottomRightCoordinates:[F

    .line 149
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    .line 161
    sget-object v8, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    .line 162
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    .line 164
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mAnimatingViewIntoPlace:Z

    .line 165
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    .line 166
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mChildrenLayersEnabled:Z

    .line 169
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    .line 171
    new-instance v8, Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-direct {v8}, Lcom/android/launcher2/HolographicOutlineHelper;-><init>()V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    .line 172
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 173
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempRect:Landroid/graphics/Rect;

    .line 174
    const/4 v8, 0x2

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempXY:[I

    .line 175
    const/4 v8, 0x2

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempVisiblePagesRange:[I

    .line 176
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/launcher2/Workspace;->mOverscrollFade:F

    .line 185
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    .line 188
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mDisplaySize:Landroid/graphics/Point;

    .line 197
    new-instance v8, Lcom/android/launcher2/Alarm;

    invoke-direct {v8}, Lcom/android/launcher2/Alarm;-><init>()V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mFolderCreationAlarm:Lcom/android/launcher2/Alarm;

    .line 198
    new-instance v8, Lcom/android/launcher2/Alarm;

    invoke-direct {v8}, Lcom/android/launcher2/Alarm;-><init>()V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    .line 199
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mDragFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    .line 200
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mDragOverFolderIcon:Lcom/android/launcher2/FolderIcon;

    .line 201
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mCreateUserFolderOnDrop:Z

    .line 202
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mAddToExistingFolderOnDrop:Z

    .line 225
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/launcher2/Workspace;->mDragMode:I

    .line 226
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/launcher2/Workspace;->mLastReorderX:I

    .line 227
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/launcher2/Workspace;->mLastReorderY:I

    .line 230
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    .line 256
    new-instance v8, Lcom/android/launcher2/Workspace$1;

    invoke-direct {v8, p0}, Lcom/android/launcher2/Workspace$1;-><init>(Lcom/android/launcher2/Workspace;)V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mBindPages:Ljava/lang/Runnable;

    .line 1506
    new-instance v8, Lcom/android/launcher2/Workspace$ZoomInInterpolator;

    invoke-direct {v8}, Lcom/android/launcher2/Workspace$ZoomInInterpolator;-><init>()V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mZoomInInterpolator:Lcom/android/launcher2/Workspace$ZoomInInterpolator;

    .line 282
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mContentIsRefreshable:Z

    .line 283
    iget v8, p0, Lcom/android/launcher2/Workspace;->mPageSpacing:I

    iput v8, p0, Lcom/android/launcher2/Workspace;->mOriginalPageSpacing:I

    .line 285
    new-instance v8, Lcom/android/launcher2/DropTarget$DragEnforcer;

    invoke-direct {v8, p1}, Lcom/android/launcher2/DropTarget$DragEnforcer;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mDragEnforcer:Lcom/android/launcher2/DropTarget$DragEnforcer;

    .line 287
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->setDataIsReady()V

    move-object v8, p1

    .line 289
    check-cast v8, Lcom/android/launcher2/Launcher;

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 290
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 291
    .local v7, "res":Landroid/content/res/Resources;
    const v8, 0x7f090004

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    .line 292
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mFadeInAdjacentScreens:Z

    .line 293
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 295
    const/4 v3, 0x4

    .line 296
    .local v3, "cellCountX":I
    const/4 v4, 0x4

    .line 298
    .local v4, "cellCountY":I
    sget-object v8, Lcom/android/launcher/R$styleable;->Workspace:[I

    const/4 v9, 0x0

    invoke-virtual {p1, p2, v8, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 301
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 306
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const v10, 0x10102eb

    aput v10, v8, v9

    invoke-virtual {p1, v8}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 308
    .local v2, "actionBarSizeTypedArray":Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 310
    .local v1, "actionBarHeight":F
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 311
    .local v6, "minDims":Landroid/graphics/Point;
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 312
    .local v5, "maxDims":Landroid/graphics/Point;
    iget-object v8, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v6, v5}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 314
    const/4 v3, 0x1

    .line 315
    :goto_0
    add-int/lit8 v8, v3, 0x1

    invoke-static {v7, v8}, Lcom/android/launcher2/CellLayout;->widthInPortrait(Landroid/content/res/Resources;I)I

    move-result v8

    iget v9, v6, Landroid/graphics/Point;->x:I

    if-gt v8, v9, :cond_0

    .line 316
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 319
    :cond_0
    const/4 v4, 0x1

    .line 321
    :goto_1
    add-int/lit8 v8, v4, 0x1

    invoke-static {v7, v8}, Lcom/android/launcher2/CellLayout;->heightInLandscape(Landroid/content/res/Resources;I)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v1

    iget v9, v6, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_1

    .line 322
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 326
    .end local v1    # "actionBarHeight":F
    .end local v2    # "actionBarSizeTypedArray":Landroid/content/res/TypedArray;
    .end local v5    # "maxDims":Landroid/graphics/Point;
    .end local v6    # "minDims":Landroid/graphics/Point;
    :cond_1
    const v8, 0x7f0a0003

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v8, v9

    iput v8, p0, Lcom/android/launcher2/Workspace;->mSpringLoadedShrinkFactor:F

    .line 328
    const v8, 0x7f0b0018

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/Workspace;->mSpringLoadedPageSpacing:I

    .line 330
    const v8, 0x7f0a0019

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/Workspace;->mCameraDistance:I

    .line 333
    const/4 v8, 0x1

    invoke-virtual {v0, v8, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 334
    const/4 v8, 0x2

    invoke-virtual {v0, v8, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 335
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/Workspace;->mDefaultPage:I

    .line 336
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 338
    invoke-virtual {p0, p0}, Lcom/android/launcher2/Workspace;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 340
    invoke-static {v3, v4}, Lcom/android/launcher2/LauncherModel;->updateWorkspaceLayoutCells(II)V

    .line 341
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/launcher2/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 343
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->initWorkspace()V

    .line 346
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/launcher2/Workspace;->setMotionEventSplittingEnabled(Z)V

    .line 349
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getImportantForAccessibility()I

    move-result v8

    if-nez v8, :cond_2

    .line 350
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/launcher2/Workspace;->setImportantForAccessibility(I)V

    .line 352
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/Workspace;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/Workspace;)Landroid/app/WallpaperManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/Workspace;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/CellLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/Workspace;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/launcher2/Workspace;IIIILcom/android/launcher2/CellLayout;[I)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/Workspace;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Lcom/android/launcher2/CellLayout;
    .param p6, "x6"    # [I

    .prologue
    .line 70
    invoke-direct/range {p0 .. p6}, Lcom/android/launcher2/Workspace;->findNearestArea(IIIILcom/android/launcher2/CellLayout;[I)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/launcher2/Workspace;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/Workspace;
    .param p1, "x1"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/android/launcher2/Workspace;->mLastReorderX:I

    return p1
.end method

.method static synthetic access$1302(Lcom/android/launcher2/Workspace;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/Workspace;
    .param p1, "x1"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/android/launcher2/Workspace;->mLastReorderY:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/launcher2/Workspace;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/Workspace;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/DragController;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/Workspace;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/Workspace;)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/Workspace;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDisplaySize:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/Workspace;)[F
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/Workspace;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mOldBackgroundAlphas:[F

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/Workspace;)[F
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/Workspace;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mNewBackgroundAlphas:[F

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/launcher2/Workspace;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/Workspace;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/launcher2/Workspace;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/Workspace;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/FolderIcon$FolderRingAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/Workspace;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/FolderIcon$FolderRingAnimator;)Lcom/android/launcher2/FolderIcon$FolderRingAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/Workspace;
    .param p1, "x1"    # Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mDragFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/launcher2/Workspace;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/Workspace;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/launcher2/Workspace;[I)[I
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/Workspace;
    .param p1, "x1"    # [I

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/launcher2/Workspace;)[F
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/Workspace;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    return-object v0
.end method

.method private animateBackgroundGradient(FZ)V
    .locals 4
    .param p1, "finalAlpha"    # F
    .param p2, "animated"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1135
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 1160
    :cond_0
    :goto_0
    return-void

    .line 1136
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeInAnimation:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2

    .line 1137
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeInAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1138
    iput-object v2, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeInAnimation:Landroid/animation/ValueAnimator;

    .line 1140
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_3

    .line 1141
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1142
    iput-object v2, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    .line 1144
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getBackgroundAlpha()F

    move-result v0

    .line 1145
    .local v0, "startAlpha":F
    cmpl-float v1, p1, v0

    if-eqz v1, :cond_0

    .line 1146
    if-eqz p2, :cond_4

    .line 1147
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-static {v1}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    .line 1148
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/launcher2/Workspace$3;

    invoke-direct {v2, p0}, Lcom/android/launcher2/Workspace$3;-><init>(Lcom/android/launcher2/Workspace;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1153
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1154
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x15e

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1155
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 1157
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->setBackgroundAlpha(F)V

    goto :goto_0
.end method

.method private cleanupAddToFolder()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2534
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOverFolderIcon:Lcom/android/launcher2/FolderIcon;

    if-eqz v0, :cond_0

    .line 2535
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOverFolderIcon:Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderIcon;->onDragExit(Ljava/lang/Object;)V

    .line 2536
    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mDragOverFolderIcon:Lcom/android/launcher2/FolderIcon;

    .line 2538
    :cond_0
    return-void
.end method

.method private cleanupFolderCreation()V
    .locals 1

    .prologue
    .line 2527
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    if-eqz v0, :cond_0

    .line 2528
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->animateToNaturalState()V

    .line 2530
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolderCreationAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 2531
    return-void
.end method

.method private cleanupReorder(Z)V
    .locals 2
    .param p1, "cancelAlarm"    # Z

    .prologue
    const/4 v1, -0x1

    .line 2542
    if-eqz p1, :cond_0

    .line 2543
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 2545
    :cond_0
    iput v1, p0, Lcom/android/launcher2/Workspace;->mLastReorderX:I

    .line 2546
    iput v1, p0, Lcom/android/launcher2/Workspace;->mLastReorderY:I

    .line 2547
    return-void
.end method

.method private computeWallpaperScrollRatio(I)V
    .locals 6
    .param p1, "page"    # I

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 959
    iget v0, p0, Lcom/android/launcher2/Workspace;->mLayoutScale:F

    .line 960
    .local v0, "layoutScale":F
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildOffset(I)I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getRelativeChildOffset(I)I

    move-result v4

    sub-int v1, v3, v4

    .line 961
    .local v1, "scaled":I
    iput v5, p0, Lcom/android/launcher2/Workspace;->mLayoutScale:F

    .line 962
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildOffset(I)I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getRelativeChildOffset(I)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v2, v3

    .line 963
    .local v2, "unscaled":F
    iput v0, p0, Lcom/android/launcher2/Workspace;->mLayoutScale:F

    .line 964
    if-lez v1, :cond_0

    .line 965
    mul-float v3, v5, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/launcher2/Workspace;->mWallpaperScrollRatio:F

    .line 969
    :goto_0
    return-void

    .line 967
    :cond_0
    iput v5, p0, Lcom/android/launcher2/Workspace;->mWallpaperScrollRatio:F

    goto :goto_0
.end method

.method private createDragOutline(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIIZ)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "orig"    # Landroid/graphics/Bitmap;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "padding"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "clipAlpha"    # Z

    .prologue
    .line 1845
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1060012

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 1846
    .local v5, "outlineColor":I
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1847
    .local v3, "b":Landroid/graphics/Bitmap;
    invoke-virtual {p2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1849
    new-instance v12, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v12, v2, v4, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1850
    .local v12, "src":Landroid/graphics/Rect;
    sub-int v2, p4, p3

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    sub-int v4, p5, p3

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 1852
    .local v9, "scaleFactor":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v9

    float-to-int v11, v2

    .line 1853
    .local v11, "scaledWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v9

    float-to-int v10, v2

    .line 1854
    .local v10, "scaledHeight":I
    new-instance v8, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v8, v2, v4, v11, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1857
    .local v8, "dst":Landroid/graphics/Rect;
    sub-int v2, p4, v11

    div-int/lit8 v2, v2, 0x2

    sub-int v4, p5, v10

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v8, v2, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1859
    const/4 v2, 0x0

    invoke-virtual {p2, p1, v12, v8, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1860
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    move-object v4, p2

    move v6, v5

    move/from16 v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher2/HolographicOutlineHelper;->applyMediumExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIZ)V

    .line 1862
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1864
    return-object v3
.end method

.method private createDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "padding"    # I

    .prologue
    .line 1828
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1060012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 1829
    .local v1, "outlineColor":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, p3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1832
    .local v0, "b":Landroid/graphics/Bitmap;
    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1833
    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/launcher2/Workspace;->drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZ)V

    .line 1834
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-virtual {v2, v0, p2, v1, v1}, Lcom/android/launcher2/HolographicOutlineHelper;->applyMediumExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    .line 1835
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1836
    return-object v0
.end method

.method private drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZ)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "destCanvas"    # Landroid/graphics/Canvas;
    .param p3, "padding"    # I
    .param p4, "pruneToDrawable"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1760
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mTempRect:Landroid/graphics/Rect;

    .line 1761
    .local v0, "clipRect":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1763
    const/4 v2, 0x0

    .line 1765
    .local v2, "textVisible":Z
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 1766
    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    if-eqz p4, :cond_1

    .line 1767
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aget-object v1, v4, v7

    .line 1768
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v4, p3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v5, p3

    invoke-virtual {v0, v6, v6, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1769
    div-int/lit8 v4, p3, 0x2

    int-to-float v4, v4

    div-int/lit8 v5, p3, 0x2

    int-to-float v5, v5

    invoke-virtual {p2, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1770
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1797
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 1798
    return-void

    .line 1772
    .restart local p1    # "v":Landroid/view/View;
    :cond_1
    instance-of v4, p1, Lcom/android/launcher2/FolderIcon;

    if-eqz v4, :cond_3

    move-object v4, p1

    .line 1775
    check-cast v4, Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v4}, Lcom/android/launcher2/FolderIcon;->getTextVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, p1

    .line 1776
    check-cast v4, Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v4, v6}, Lcom/android/launcher2/FolderIcon;->setTextVisible(Z)V

    .line 1777
    const/4 v2, 0x1

    .line 1788
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v5, p3, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v5

    neg-int v5, v5

    div-int/lit8 v6, p3, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p2, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1789
    sget-object v4, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p2, v0, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1790
    invoke-virtual {p1, p2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1793
    if-eqz v2, :cond_0

    .line 1794
    check-cast p1, Lcom/android/launcher2/FolderIcon;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1, v7}, Lcom/android/launcher2/FolderIcon;->setTextVisible(Z)V

    goto :goto_0

    .line 1779
    .restart local p1    # "v":Landroid/view/View;
    :cond_3
    instance-of v4, p1, Lcom/android/launcher2/BubbleTextView;

    if-eqz v4, :cond_4

    move-object v3, p1

    .line 1780
    check-cast v3, Lcom/android/launcher2/BubbleTextView;

    .line 1781
    .local v3, "tv":Lcom/android/launcher2/BubbleTextView;
    invoke-virtual {v3}, Lcom/android/launcher2/BubbleTextView;->getExtendedPaddingTop()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {v3}, Lcom/android/launcher2/BubbleTextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 1783
    .end local v3    # "tv":Lcom/android/launcher2/BubbleTextView;
    :cond_4
    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_2

    move-object v3, p1

    .line 1784
    check-cast v3, Landroid/widget/TextView;

    .line 1785
    .local v3, "tv":Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v4

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1
.end method

.method private enableHwLayersOnVisiblePages()V
    .locals 7

    .prologue
    .line 1395
    iget-boolean v5, p0, Lcom/android/launcher2/Workspace;->mChildrenLayersEnabled:Z

    if-eqz v5, :cond_6

    .line 1396
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v4

    .line 1397
    .local v4, "screenCount":I
    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v5}, Lcom/android/launcher2/Workspace;->getVisiblePages([I)V

    .line 1398
    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mTempVisiblePagesRange:[I

    const/4 v6, 0x0

    aget v2, v5, v6

    .line 1399
    .local v2, "leftScreen":I
    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mTempVisiblePagesRange:[I

    const/4 v6, 0x1

    aget v3, v5, v6

    .line 1400
    .local v3, "rightScreen":I
    if-ne v2, v3, :cond_0

    .line 1402
    add-int/lit8 v5, v4, -0x1

    if-ge v3, v5, :cond_3

    .line 1403
    add-int/lit8 v3, v3, 0x1

    .line 1408
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_4

    .line 1409
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 1410
    .local v1, "layout":Lcom/android/launcher2/CellLayout;
    if-gt v2, v0, :cond_1

    if-gt v0, v3, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->shouldDrawChild(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1411
    :cond_1
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->disableHardwareLayers()V

    .line 1408
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1404
    .end local v0    # "i":I
    .end local v1    # "layout":Lcom/android/launcher2/CellLayout;
    :cond_3
    if-lez v2, :cond_0

    .line 1405
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1414
    .restart local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v4, :cond_6

    .line 1415
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 1416
    .restart local v1    # "layout":Lcom/android/launcher2/CellLayout;
    if-gt v2, v0, :cond_5

    if-gt v0, v3, :cond_5

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->shouldDrawChild(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1417
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->enableHardwareLayers()V

    .line 1414
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1421
    .end local v0    # "i":I
    .end local v1    # "layout":Lcom/android/launcher2/CellLayout;
    .end local v2    # "leftScreen":I
    .end local v3    # "rightScreen":I
    .end local v4    # "screenCount":I
    :cond_6
    return-void
.end method

.method private findMatchingPageForDragOver(Lcom/android/launcher2/DragView;FFZ)Lcom/android/launcher2/CellLayout;
    .locals 10
    .param p1, "dragView"    # Lcom/android/launcher2/DragView;
    .param p2, "originX"    # F
    .param p3, "originY"    # F
    .param p4, "exact"    # Z

    .prologue
    .line 2669
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v5

    .line 2670
    .local v5, "screenCount":I
    const/4 v0, 0x0

    .line 2671
    .local v0, "bestMatchingScreen":Lcom/android/launcher2/CellLayout;
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    .line 2673
    .local v6, "smallestDistSoFar":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 2674
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    .line 2676
    .local v2, "cl":Lcom/android/launcher2/CellLayout;
    const/4 v8, 0x2

    new-array v7, v8, [F

    const/4 v8, 0x0

    aput p2, v7, v8

    const/4 v8, 0x1

    aput p3, v7, v8

    .line 2679
    .local v7, "touchXy":[F
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher2/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 2680
    iget-object v8, p0, Lcom/android/launcher2/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v2, v7, v8}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    .line 2682
    const/4 v8, 0x0

    aget v8, v7, v8

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_0

    const/4 v8, 0x0

    aget v8, v7, v8

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_0

    const/4 v8, 0x1

    aget v8, v7, v8

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_0

    const/4 v8, 0x1

    aget v8, v7, v8

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getHeight()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_0

    .line 2707
    .end local v2    # "cl":Lcom/android/launcher2/CellLayout;
    .end local v7    # "touchXy":[F
    :goto_1
    return-object v2

    .line 2687
    .restart local v2    # "cl":Lcom/android/launcher2/CellLayout;
    .restart local v7    # "touchXy":[F
    :cond_0
    if-nez p4, :cond_1

    .line 2689
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mTempCellLayoutCenterCoordinates:[F

    .line 2690
    .local v1, "cellLayoutCenter":[F
    const/4 v8, 0x0

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    aput v9, v1, v8

    .line 2691
    const/4 v8, 0x1

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    aput v9, v1, v8

    .line 2692
    invoke-virtual {p0, v2, v1}, Lcom/android/launcher2/Workspace;->mapPointFromChildToSelf(Landroid/view/View;[F)V

    .line 2694
    const/4 v8, 0x0

    aput p2, v7, v8

    .line 2695
    const/4 v8, 0x1

    aput p3, v7, v8

    .line 2699
    invoke-static {v7, v1}, Lcom/android/launcher2/Workspace;->squaredDistance([F[F)F

    move-result v3

    .line 2701
    .local v3, "dist":F
    cmpg-float v8, v3, v6

    if-gez v8, :cond_1

    .line 2702
    move v6, v3

    .line 2703
    move-object v0, v2

    .line 2673
    .end local v1    # "cellLayoutCenter":[F
    .end local v3    # "dist":F
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v2    # "cl":Lcom/android/launcher2/CellLayout;
    .end local v7    # "touchXy":[F
    :cond_2
    move-object v2, v0

    .line 2707
    goto :goto_1
.end method

.method private findNearestArea(IIIILcom/android/launcher2/CellLayout;[I)[I
    .locals 6
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "layout"    # Lcom/android/launcher2/CellLayout;
    .param p6, "recycle"    # [I

    .prologue
    .line 3344
    move-object v0, p5

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v0

    return-object v0
.end method

.method static getCellLayoutMetrics(Lcom/android/launcher2/Launcher;I)Landroid/graphics/Rect;
    .locals 14
    .param p0, "launcher"    # Lcom/android/launcher2/Launcher;
    .param p1, "orientation"    # I

    .prologue
    .line 2399
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2400
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    .line 2401
    .local v7, "display":Landroid/view/Display;
    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13}, Landroid/graphics/Point;-><init>()V

    .line 2402
    .local v13, "smallestSize":Landroid/graphics/Point;
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 2403
    .local v8, "largestSize":Landroid/graphics/Point;
    invoke-virtual {v7, v13, v8}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 2404
    if-nez p1, :cond_1

    .line 2405
    sget-object v0, Lcom/android/launcher2/Workspace;->mLandscapeCellLayoutMetrics:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 2406
    const v0, 0x7f0b004b

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 2407
    .local v10, "paddingLeft":I
    const v0, 0x7f0b004d

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 2408
    .local v11, "paddingRight":I
    const v0, 0x7f0b004f

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 2409
    .local v12, "paddingTop":I
    const v0, 0x7f0b0051

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 2410
    .local v9, "paddingBottom":I
    iget v0, v8, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v10

    sub-int v2, v0, v11

    .line 2411
    .local v2, "width":I
    iget v0, v13, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v12

    sub-int v3, v0, v9

    .line 2412
    .local v3, "height":I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher2/Workspace;->mLandscapeCellLayoutMetrics:Landroid/graphics/Rect;

    .line 2413
    sget-object v0, Lcom/android/launcher2/Workspace;->mLandscapeCellLayoutMetrics:Landroid/graphics/Rect;

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v4

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v5

    move v6, p1

    invoke-static/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->getMetrics(Landroid/graphics/Rect;Landroid/content/res/Resources;IIIII)V

    .line 2417
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v9    # "paddingBottom":I
    .end local v10    # "paddingLeft":I
    .end local v11    # "paddingRight":I
    .end local v12    # "paddingTop":I
    :cond_0
    sget-object v0, Lcom/android/launcher2/Workspace;->mLandscapeCellLayoutMetrics:Landroid/graphics/Rect;

    .line 2433
    :goto_0
    return-object v0

    .line 2418
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 2419
    sget-object v0, Lcom/android/launcher2/Workspace;->mPortraitCellLayoutMetrics:Landroid/graphics/Rect;

    if-nez v0, :cond_2

    .line 2420
    const v0, 0x7f0b004b

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 2421
    .restart local v10    # "paddingLeft":I
    const v0, 0x7f0b004d

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 2422
    .restart local v11    # "paddingRight":I
    const v0, 0x7f0b004f

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 2423
    .restart local v12    # "paddingTop":I
    const v0, 0x7f0b0051

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 2424
    .restart local v9    # "paddingBottom":I
    iget v0, v13, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v10

    sub-int v2, v0, v11

    .line 2425
    .restart local v2    # "width":I
    iget v0, v8, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v12

    sub-int v3, v0, v9

    .line 2426
    .restart local v3    # "height":I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher2/Workspace;->mPortraitCellLayoutMetrics:Landroid/graphics/Rect;

    .line 2427
    sget-object v0, Lcom/android/launcher2/Workspace;->mPortraitCellLayoutMetrics:Landroid/graphics/Rect;

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v4

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v5

    move v6, p1

    invoke-static/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->getMetrics(Landroid/graphics/Rect;Landroid/content/res/Resources;IIIII)V

    .line 2431
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v9    # "paddingBottom":I
    .end local v10    # "paddingLeft":I
    .end local v11    # "paddingRight":I
    .end local v12    # "paddingTop":I
    :cond_2
    sget-object v0, Lcom/android/launcher2/Workspace;->mPortraitCellLayoutMetrics:Landroid/graphics/Rect;

    goto :goto_0

    .line 2433
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDragViewVisualCenter(IIIILcom/android/launcher2/DragView;[F)[F
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "xOffset"    # I
    .param p4, "yOffset"    # I
    .param p5, "dragView"    # Lcom/android/launcher2/DragView;
    .param p6, "recycle"    # [F

    .prologue
    .line 2717
    if-nez p6, :cond_0

    .line 2718
    const/4 v3, 0x2

    new-array v1, v3, [F

    .line 2725
    .local v1, "res":[F
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0030

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr p1, v3

    .line 2726
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0031

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr p2, v3

    .line 2732
    sub-int v0, p1, p3

    .line 2733
    .local v0, "left":I
    sub-int v2, p2, p4

    .line 2736
    .local v2, "top":I
    const/4 v3, 0x0

    invoke-virtual {p5}, Lcom/android/launcher2/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    int-to-float v4, v4

    aput v4, v1, v3

    .line 2737
    const/4 v3, 0x1

    invoke-virtual {p5}, Lcom/android/launcher2/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    int-to-float v4, v4

    aput v4, v1, v3

    .line 2739
    return-object v1

    .line 2720
    .end local v0    # "left":I
    .end local v1    # "res":[F
    .end local v2    # "top":I
    :cond_0
    move-object v1, p6

    .restart local v1    # "res":[F
    goto :goto_0
.end method

.method private getFinalPositionForDropAnimation([I[FLcom/android/launcher2/DragView;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/ItemInfo;[IZZ)V
    .locals 12
    .param p1, "loc"    # [I
    .param p2, "scaleXY"    # [F
    .param p3, "dragView"    # Lcom/android/launcher2/DragView;
    .param p4, "layout"    # Lcom/android/launcher2/CellLayout;
    .param p5, "info"    # Lcom/android/launcher2/ItemInfo;
    .param p6, "targetCell"    # [I
    .param p7, "external"    # Z
    .param p8, "scale"    # Z

    .prologue
    .line 3201
    move-object/from16 v0, p5

    iget v6, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 3202
    .local v6, "spanX":I
    move-object/from16 v0, p5

    iget v7, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 3204
    .local v7, "spanY":I
    const/4 v1, 0x0

    aget v4, p6, v1

    const/4 v1, 0x1

    aget v5, p6, v1

    move-object v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher2/Workspace;->estimateItemPosition(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/ItemInfo;IIII)Landroid/graphics/Rect;

    move-result-object v11

    .line 3205
    .local v11, "r":Landroid/graphics/Rect;
    const/4 v1, 0x0

    iget v2, v11, Landroid/graphics/Rect;->left:I

    aput v2, p1, v1

    .line 3206
    const/4 v1, 0x1

    iget v2, v11, Landroid/graphics/Rect;->top:I

    aput v2, p1, v1

    .line 3208
    move-object/from16 v0, p4

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setFinalTransitionTransform(Lcom/android/launcher2/CellLayout;)V

    .line 3209
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v1, v0, p1}, Lcom/android/launcher2/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v8

    .line 3211
    .local v8, "cellLayoutScale":F
    move-object/from16 v0, p4

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->resetTransitionTransform(Lcom/android/launcher2/CellLayout;)V

    .line 3215
    if-eqz p8, :cond_0

    .line 3216
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {p3}, Lcom/android/launcher2/DragView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v9, v1, v2

    .line 3217
    .local v9, "dragViewScaleX":F
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {p3}, Lcom/android/launcher2/DragView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v10, v1, v2

    .line 3225
    .local v10, "dragViewScaleY":F
    :goto_0
    const/4 v1, 0x0

    aget v2, p1, v1

    int-to-float v2, v2

    invoke-virtual {p3}, Lcom/android/launcher2/DragView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v8

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, p1, v1

    .line 3226
    const/4 v1, 0x1

    aget v2, p1, v1

    int-to-float v2, v2

    invoke-virtual {p3}, Lcom/android/launcher2/DragView;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v8

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, p1, v1

    .line 3228
    const/4 v1, 0x0

    mul-float v2, v9, v8

    aput v2, p2, v1

    .line 3229
    const/4 v1, 0x1

    mul-float v2, v10, v8

    aput v2, p2, v1

    .line 3230
    return-void

    .line 3219
    .end local v9    # "dragViewScaleX":F
    .end local v10    # "dragViewScaleY":F
    :cond_0
    const/high16 v9, 0x3f800000    # 1.0f

    .line 3220
    .restart local v9    # "dragViewScaleX":F
    const/high16 v10, 0x3f800000    # 1.0f

    .restart local v10    # "dragViewScaleY":F
    goto :goto_0
.end method

.method private getScrollRange()I
    .locals 2

    .prologue
    .line 835
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildOffset(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private hitsPage(IFF)Z
    .locals 7
    .param p1, "index"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 584
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 585
    .local v1, "page":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 586
    const/4 v4, 0x2

    new-array v0, v4, [F

    aput p2, v0, v3

    aput p3, v0, v2

    .line 587
    .local v0, "localXY":[F
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[F)V

    .line 588
    aget v4, v0, v3

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_0

    aget v4, v0, v3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    aget v4, v0, v2

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_0

    aget v4, v0, v2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 591
    .end local v0    # "localXY":[F
    :goto_0
    return v2

    .restart local v0    # "localXY":[F
    :cond_0
    move v2, v3

    .line 588
    goto :goto_0

    .end local v0    # "localXY":[F
    :cond_1
    move v2, v3

    .line 591
    goto :goto_0
.end method

.method private initAnimationArrays()V
    .locals 2

    .prologue
    .line 1540
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    .line 1541
    .local v0, "childCount":I
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mOldTranslationXs:[F

    if-eqz v1, :cond_0

    .line 1555
    :goto_0
    return-void

    .line 1542
    :cond_0
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mOldTranslationXs:[F

    .line 1543
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mOldTranslationYs:[F

    .line 1544
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mOldScaleXs:[F

    .line 1545
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mOldScaleYs:[F

    .line 1546
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mOldBackgroundAlphas:[F

    .line 1547
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mOldAlphas:[F

    .line 1548
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mNewTranslationXs:[F

    .line 1549
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mNewTranslationYs:[F

    .line 1550
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mNewScaleXs:[F

    .line 1551
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mNewScaleYs:[F

    .line 1552
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mNewBackgroundAlphas:[F

    .line 1553
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mNewAlphas:[F

    .line 1554
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mNewRotationYs:[F

    goto :goto_0
.end method

.method private isDragWidget(Lcom/android/launcher2/DropTarget$DragObject;)Z
    .locals 1
    .param p1, "d"    # Lcom/android/launcher2/DropTarget$DragObject;

    .prologue
    .line 2743
    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/launcher2/PendingAddWidgetInfo;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isExternalDragWidget(Lcom/android/launcher2/DropTarget$DragObject;)Z
    .locals 1
    .param p1, "d"    # Lcom/android/launcher2/DropTarget$DragObject;

    .prologue
    .line 2747
    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    if-eq v0, p0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->isDragWidget(Lcom/android/launcher2/DropTarget$DragObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private manageFolderFeedback(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;[IFLandroid/view/View;)V
    .locals 10
    .param p1, "info"    # Lcom/android/launcher2/ItemInfo;
    .param p2, "targetLayout"    # Lcom/android/launcher2/CellLayout;
    .param p3, "targetCell"    # [I
    .param p4, "distance"    # F
    .param p5, "dragOverView"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 2871
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/Workspace;->willCreateUserFolder(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;[IFZ)Z

    move-result v6

    .line 2874
    .local v6, "userFolderPending":Z
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDragMode:I

    if-nez v0, :cond_1

    if-eqz v6, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolderCreationAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->alarmPending()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2876
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolderCreationAlarm:Lcom/android/launcher2/Alarm;

    new-instance v1, Lcom/android/launcher2/Workspace$FolderCreationAlarmListener;

    aget v2, p3, v5

    aget v3, p3, v8

    invoke-direct {v1, p0, p2, v2, v3}, Lcom/android/launcher2/Workspace$FolderCreationAlarmListener;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/CellLayout;II)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Alarm;->setOnAlarmListener(Lcom/android/launcher2/OnAlarmListener;)V

    .line 2878
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolderCreationAlarm:Lcom/android/launcher2/Alarm;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    .line 2902
    .end local p5    # "dragOverView":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 2882
    .restart local p5    # "dragOverView":Landroid/view/View;
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher2/Workspace;->willAddToExistingUserFolder(Ljava/lang/Object;Lcom/android/launcher2/CellLayout;[IF)Z

    move-result v7

    .line 2885
    .local v7, "willAddToFolder":Z
    if-eqz v7, :cond_3

    iget v0, p0, Lcom/android/launcher2/Workspace;->mDragMode:I

    if-nez v0, :cond_3

    .line 2886
    check-cast p5, Lcom/android/launcher2/FolderIcon;

    .end local p5    # "dragOverView":Landroid/view/View;
    iput-object p5, p0, Lcom/android/launcher2/Workspace;->mDragOverFolderIcon:Lcom/android/launcher2/FolderIcon;

    .line 2887
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOverFolderIcon:Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/FolderIcon;->onDragEnter(Ljava/lang/Object;)V

    .line 2888
    if-eqz p2, :cond_2

    .line 2889
    invoke-virtual {p2}, Lcom/android/launcher2/CellLayout;->clearDragOutlines()V

    .line 2891
    :cond_2
    invoke-virtual {p0, v9}, Lcom/android/launcher2/Workspace;->setDragMode(I)V

    goto :goto_0

    .line 2895
    .restart local p5    # "dragOverView":Landroid/view/View;
    :cond_3
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDragMode:I

    if-ne v0, v9, :cond_4

    if-nez v7, :cond_4

    .line 2896
    invoke-virtual {p0, v5}, Lcom/android/launcher2/Workspace;->setDragMode(I)V

    .line 2898
    :cond_4
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDragMode:I

    if-ne v0, v8, :cond_0

    if-nez v6, :cond_0

    .line 2899
    invoke-virtual {p0, v5}, Lcom/android/launcher2/Workspace;->setDragMode(I)V

    goto :goto_0
.end method

.method private onDropExternal([ILjava/lang/Object;Lcom/android/launcher2/CellLayout;Z)V
    .locals 6
    .param p1, "touchXY"    # [I
    .param p2, "dragInfo"    # Ljava/lang/Object;
    .param p3, "cellLayout"    # Lcom/android/launcher2/CellLayout;
    .param p4, "insertAtFirst"    # Z

    .prologue
    .line 2993
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/Workspace;->onDropExternal([ILjava/lang/Object;Lcom/android/launcher2/CellLayout;ZLcom/android/launcher2/DropTarget$DragObject;)V

    .line 2994
    return-void
.end method

.method private onDropExternal([ILjava/lang/Object;Lcom/android/launcher2/CellLayout;ZLcom/android/launcher2/DropTarget$DragObject;)V
    .locals 55
    .param p1, "touchXY"    # [I
    .param p2, "dragInfo"    # Ljava/lang/Object;
    .param p3, "cellLayout"    # Lcom/android/launcher2/CellLayout;
    .param p4, "insertAtFirst"    # Z
    .param p5, "d"    # Lcom/android/launcher2/DropTarget$DragObject;

    .prologue
    .line 3006
    new-instance v50, Lcom/android/launcher2/Workspace$8;

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/Workspace$8;-><init>(Lcom/android/launcher2/Workspace;)V

    .local v50, "exitSpringLoadedRunnable":Ljava/lang/Runnable;
    move-object/from16 v30, p2

    .line 3013
    check-cast v30, Lcom/android/launcher2/ItemInfo;

    .line 3014
    .local v30, "info":Lcom/android/launcher2/ItemInfo;
    move-object/from16 v0, v30

    iget v5, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 3015
    .local v5, "spanX":I
    move-object/from16 v0, v30

    iget v6, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 3016
    .local v6, "spanY":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v2, :cond_0

    .line 3017
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v5, v2, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    .line 3018
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v6, v2, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    .line 3021
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-wide/16 v26, -0x65

    .line 3024
    .local v26, "container":J
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v28

    .line 3025
    .local v28, "screen":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    move/from16 v0, v28

    if-eq v0, v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v3, Lcom/android/launcher2/Workspace$State;->SPRING_LOADED:Lcom/android/launcher2/Workspace$State;

    if-eq v2, v3, :cond_1

    .line 3027
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 3030
    :cond_1
    move-object/from16 v0, v30

    instance-of v2, v0, Lcom/android/launcher2/PendingAddItemInfo;

    if-eqz v2, :cond_d

    move-object/from16 v24, p2

    .line 3031
    check-cast v24, Lcom/android/launcher2/PendingAddItemInfo;

    .line 3033
    .local v24, "pendingInfo":Lcom/android/launcher2/PendingAddItemInfo;
    const/16 v51, 0x1

    .line 3034
    .local v51, "findNearestVacantCell":Z
    move-object/from16 v0, v24

    iget v2, v0, Lcom/android/launcher2/PendingAddItemInfo;->itemType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 3035
    const/4 v2, 0x0

    aget v3, p1, v2

    const/4 v2, 0x1

    aget v4, p1, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v2, p0

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher2/Workspace;->findNearestArea(IIIILcom/android/launcher2/CellLayout;[I)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 3037
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/launcher2/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v11

    .line 3039
    .local v11, "distance":F
    move-object/from16 v0, p5

    iget-object v8, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v8, Lcom/android/launcher2/ItemInfo;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v12, 0x1

    move-object/from16 v7, p0

    move-object/from16 v9, p3

    invoke-virtual/range {v7 .. v12}, Lcom/android/launcher2/Workspace;->willCreateUserFolder(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;[IFZ)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher2/ItemInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1, v3, v11}, Lcom/android/launcher2/Workspace;->willAddToExistingUserFolder(Ljava/lang/Object;Lcom/android/launcher2/CellLayout;[IF)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3042
    :cond_2
    const/16 v51, 0x0

    .line 3046
    .end local v11    # "distance":F
    :cond_3
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/launcher2/ItemInfo;

    .line 3047
    .local v25, "item":Lcom/android/launcher2/ItemInfo;
    const/16 v54, 0x0

    .line 3048
    .local v54, "updateWidgetSize":Z
    if-eqz v51, :cond_7

    .line 3049
    move-object/from16 v0, v25

    iget v15, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 3050
    .local v15, "minSpanX":I
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    move/from16 v16, v0

    .line 3051
    .local v16, "minSpanY":I
    move-object/from16 v0, v25

    iget v2, v0, Lcom/android/launcher2/ItemInfo;->minSpanX:I

    if-lez v2, :cond_4

    move-object/from16 v0, v25

    iget v2, v0, Lcom/android/launcher2/ItemInfo;->minSpanY:I

    if-lez v2, :cond_4

    .line 3052
    move-object/from16 v0, v25

    iget v15, v0, Lcom/android/launcher2/ItemInfo;->minSpanX:I

    .line 3053
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->minSpanY:I

    move/from16 v16, v0

    .line 3055
    :cond_4
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v21, v0

    .line 3056
    .local v21, "resultSpan":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-int v13, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    float-to-int v14, v2

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    move/from16 v17, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v20, v0

    const/16 v22, 0x2

    move-object/from16 v12, p3

    invoke-virtual/range {v12 .. v22}, Lcom/android/launcher2/CellLayout;->createArea(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 3060
    const/4 v2, 0x0

    aget v2, v21, v2

    move-object/from16 v0, v25

    iget v3, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    if-ne v2, v3, :cond_5

    const/4 v2, 0x1

    aget v2, v21, v2

    move-object/from16 v0, v25

    iget v3, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    if-eq v2, v3, :cond_6

    .line 3061
    :cond_5
    const/16 v54, 0x1

    .line 3063
    :cond_6
    const/4 v2, 0x0

    aget v2, v21, v2

    move-object/from16 v0, v25

    iput v2, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 3064
    const/4 v2, 0x1

    aget v2, v21, v2

    move-object/from16 v0, v25

    iput v2, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 3067
    .end local v15    # "minSpanX":I
    .end local v16    # "minSpanY":I
    .end local v21    # "resultSpan":[I
    :cond_7
    new-instance v22, Lcom/android/launcher2/Workspace$9;

    move-object/from16 v23, p0

    invoke-direct/range {v22 .. v28}, Lcom/android/launcher2/Workspace$9;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/PendingAddItemInfo;Lcom/android/launcher2/ItemInfo;JI)V

    .line 3090
    .local v22, "onAnimationCompleteRunnable":Ljava/lang/Runnable;
    move-object/from16 v0, v24

    iget v2, v0, Lcom/android/launcher2/PendingAddItemInfo;->itemType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_c

    move-object/from16 v2, v24

    check-cast v2, Lcom/android/launcher2/PendingAddWidgetInfo;

    iget-object v0, v2, Lcom/android/launcher2/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v35, v0

    .line 3093
    .local v35, "finalView":Landroid/view/View;
    :goto_1
    move-object/from16 v0, v35

    instance-of v2, v0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v2, :cond_8

    if-eqz v54, :cond_8

    move-object/from16 v49, v35

    .line 3094
    check-cast v49, Landroid/appwidget/AppWidgetHostView;

    .line 3095
    .local v49, "awhv":Landroid/appwidget/AppWidgetHostView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v0, v25

    iget v3, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    move-object/from16 v0, v25

    iget v4, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    move-object/from16 v0, v49

    invoke-static {v0, v2, v3, v4}, Lcom/android/launcher2/AppWidgetResizeFrame;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher2/Launcher;II)V

    .line 3099
    .end local v49    # "awhv":Landroid/appwidget/AppWidgetHostView;
    :cond_8
    const/16 v34, 0x0

    .line 3100
    .local v34, "animationStyle":I
    move-object/from16 v0, v24

    iget v2, v0, Lcom/android/launcher2/PendingAddItemInfo;->itemType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_9

    check-cast v24, Lcom/android/launcher2/PendingAddWidgetInfo;

    .end local v24    # "pendingInfo":Lcom/android/launcher2/PendingAddItemInfo;
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/launcher2/PendingAddWidgetInfo;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v2, :cond_9

    .line 3102
    const/16 v34, 0x1

    .line 3104
    :cond_9
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    move-object/from16 v32, v0

    const/16 v36, 0x1

    move-object/from16 v29, p0

    move-object/from16 v31, p3

    move-object/from16 v33, v22

    invoke-virtual/range {v29 .. v36}, Lcom/android/launcher2/Workspace;->animateWidgetDrop(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    .line 3174
    .end local v22    # "onAnimationCompleteRunnable":Ljava/lang/Runnable;
    .end local v25    # "item":Lcom/android/launcher2/ItemInfo;
    .end local v34    # "animationStyle":I
    .end local v35    # "finalView":Landroid/view/View;
    .end local v51    # "findNearestVacantCell":Z
    .end local v54    # "updateWidgetSize":Z
    :cond_a
    :goto_2
    return-void

    .line 3021
    .end local v26    # "container":J
    .end local v28    # "screen":I
    :cond_b
    const-wide/16 v26, -0x64

    goto/16 :goto_0

    .line 3090
    .restart local v22    # "onAnimationCompleteRunnable":Ljava/lang/Runnable;
    .restart local v24    # "pendingInfo":Lcom/android/launcher2/PendingAddItemInfo;
    .restart local v25    # "item":Lcom/android/launcher2/ItemInfo;
    .restart local v26    # "container":J
    .restart local v28    # "screen":I
    .restart local v51    # "findNearestVacantCell":Z
    .restart local v54    # "updateWidgetSize":Z
    :cond_c
    const/16 v35, 0x0

    goto :goto_1

    .line 3108
    .end local v22    # "onAnimationCompleteRunnable":Ljava/lang/Runnable;
    .end local v24    # "pendingInfo":Lcom/android/launcher2/PendingAddItemInfo;
    .end local v25    # "item":Lcom/android/launcher2/ItemInfo;
    .end local v51    # "findNearestVacantCell":Z
    .end local v54    # "updateWidgetSize":Z
    :cond_d
    const/16 v37, 0x0

    .line 3110
    .local v37, "view":Landroid/view/View;
    move-object/from16 v0, v30

    iget v2, v0, Lcom/android/launcher2/ItemInfo;->itemType:I

    packed-switch v2, :pswitch_data_0

    .line 3125
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown item type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v30

    iget v4, v0, Lcom/android/launcher2/ItemInfo;->itemType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3113
    :pswitch_0
    move-object/from16 v0, v30

    iget-wide v2, v0, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v7, -0x1

    cmp-long v2, v2, v7

    if-nez v2, :cond_e

    move-object/from16 v0, v30

    instance-of v2, v0, Lcom/android/launcher2/ApplicationInfo;

    if-eqz v2, :cond_e

    .line 3115
    new-instance v52, Lcom/android/launcher2/ShortcutInfo;

    check-cast v30, Lcom/android/launcher2/ApplicationInfo;

    .end local v30    # "info":Lcom/android/launcher2/ItemInfo;
    move-object/from16 v0, v52

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/launcher2/ShortcutInfo;-><init>(Lcom/android/launcher2/ApplicationInfo;)V

    .local v52, "info":Lcom/android/launcher2/ItemInfo;
    move-object/from16 v30, v52

    .line 3117
    .end local v52    # "info":Lcom/android/launcher2/ItemInfo;
    .restart local v30    # "info":Lcom/android/launcher2/ItemInfo;
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    const v4, 0x7f040002

    move-object/from16 v2, v30

    check-cast v2, Lcom/android/launcher2/ShortcutInfo;

    move-object/from16 v0, p3

    invoke-virtual {v3, v4, v0, v2}, Lcom/android/launcher2/Launcher;->createShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher2/ShortcutInfo;)Landroid/view/View;

    move-result-object v37

    .line 3130
    :goto_3
    if-eqz p1, :cond_f

    .line 3131
    const/4 v2, 0x0

    aget v3, p1, v2

    const/4 v2, 0x1

    aget v4, p1, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v2, p0

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher2/Workspace;->findNearestArea(IIIILcom/android/launcher2/CellLayout;[I)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 3133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/launcher2/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v11

    .line 3135
    .restart local v11    # "distance":F
    move-object/from16 v0, v50

    move-object/from16 v1, p5

    iput-object v0, v1, Lcom/android/launcher2/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    .line 3136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v41, v0

    const/16 v43, 0x1

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    move-object/from16 v44, v0

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    move-object/from16 v45, v0

    move-object/from16 v36, p0

    move-wide/from16 v38, v26

    move-object/from16 v40, p3

    move/from16 v42, v11

    invoke-virtual/range {v36 .. v45}, Lcom/android/launcher2/Workspace;->createUserFolderIfNecessary(Landroid/view/View;JLcom/android/launcher2/CellLayout;[IFZLcom/android/launcher2/DragView;Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 3140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v39, v0

    const/16 v42, 0x1

    move-object/from16 v36, p0

    move-object/from16 v38, p3

    move/from16 v40, v11

    move-object/from16 v41, p5

    invoke-virtual/range {v36 .. v42}, Lcom/android/launcher2/Workspace;->addToExistingFolderIfNecessary(Landroid/view/View;Lcom/android/launcher2/CellLayout;[IFLcom/android/launcher2/DropTarget$DragObject;Z)Z

    move-result v2

    if-nez v2, :cond_a

    .line 3146
    .end local v11    # "distance":F
    :cond_f
    if-eqz p1, :cond_10

    .line 3148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-int v0, v2

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    float-to-int v0, v2

    move/from16 v40, v0

    const/16 v41, 0x1

    const/16 v42, 0x1

    const/16 v43, 0x1

    const/16 v44, 0x1

    const/16 v45, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const/16 v48, 0x2

    move-object/from16 v38, p3

    invoke-virtual/range {v38 .. v48}, Lcom/android/launcher2/CellLayout;->createArea(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 3154
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v3, 0x0

    aget v41, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v3, 0x1

    aget v42, v2, v3

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    move/from16 v43, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    move/from16 v44, v0

    move-object/from16 v36, p0

    move-wide/from16 v38, v26

    move/from16 v40, v28

    move/from16 v45, p4

    invoke-virtual/range {v36 .. v45}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    .line 3156
    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 3157
    invoke-virtual/range {v37 .. v37}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v53

    check-cast v53, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 3158
    .local v53, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v2

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    .line 3161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v38, v0

    move-object/from16 v0, v53

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    move/from16 v43, v0

    move-object/from16 v0, v53

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    move/from16 v44, v0

    move-object/from16 v39, v30

    move-wide/from16 v40, v26

    move/from16 v42, v28

    invoke-static/range {v38 .. v44}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIII)V

    .line 3164
    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    if-eqz v2, :cond_a

    .line 3168
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setFinalTransitionTransform(Lcom/android/launcher2/CellLayout;)V

    .line 3169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v2

    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    move-object/from16 v0, v37

    move-object/from16 v1, v50

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/launcher2/DragLayer;->animateViewIntoPosition(Lcom/android/launcher2/DragView;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 3171
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->resetTransitionTransform(Lcom/android/launcher2/CellLayout;)V

    goto/16 :goto_2

    .line 3121
    .end local v53    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    :pswitch_1
    const v3, 0x7f04000c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v2, v30

    check-cast v2, Lcom/android/launcher2/FolderInfo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/Workspace;->mIconCache:Lcom/android/launcher2/IconCache;

    move-object/from16 v0, p3

    invoke-static {v3, v4, v0, v2, v7}, Lcom/android/launcher2/FolderIcon;->fromXml(ILcom/android/launcher2/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher2/FolderInfo;Lcom/android/launcher2/IconCache;)Lcom/android/launcher2/FolderIcon;

    move-result-object v37

    .line 3123
    goto/16 :goto_3

    .line 3152
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    goto/16 :goto_4

    .line 3110
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onResetScrollArea()V
    .locals 1

    .prologue
    .line 3538
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher2/CellLayout;)V

    .line 3539
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    .line 3540
    return-void
.end method

.method private setChildrenBackgroundAlphaMultipliers(F)V
    .locals 3
    .param p1, "a"    # F

    .prologue
    .line 1221
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1222
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 1223
    .local v0, "child":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayout;->setBackgroundAlphaMultiplier(F)V

    .line 1221
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1225
    .end local v0    # "child":Lcom/android/launcher2/CellLayout;
    :cond_0
    return-void
.end method

.method private static squaredDistance([F[F)F
    .locals 5
    .param p0, "point1"    # [F
    .param p1, "point2"    # [F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2612
    aget v2, p0, v3

    aget v3, p1, v3

    sub-float v0, v2, v3

    .line 2613
    .local v0, "distanceX":F
    aget v2, p1, v4

    aget v3, p1, v4

    sub-float v1, v2, v3

    .line 2614
    .local v1, "distanceY":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    return v2
.end method

.method private syncWallpaperOffsetWithScroll()V
    .locals 3

    .prologue
    .line 897
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isHardwareAccelerated()Z

    move-result v0

    .line 898
    .local v0, "enableWallpaperEffects":Z
    if-eqz v0, :cond_0

    .line 899
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->wallpaperOffsetForCurrentScroll()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->setFinalX(F)V

    .line 901
    :cond_0
    return-void
.end method

.method private updateChildrenLayersEnabled(Z)V
    .locals 7
    .param p1, "force"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1378
    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v6, Lcom/android/launcher2/Workspace$State;->SMALL:Lcom/android/launcher2/Workspace$State;

    if-eq v5, v6, :cond_0

    iget-boolean v5, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-eqz v5, :cond_4

    :cond_0
    move v3, v4

    .line 1379
    .local v3, "small":Z
    :goto_0
    if-nez p1, :cond_1

    if-nez v3, :cond_1

    iget-boolean v5, p0, Lcom/android/launcher2/Workspace;->mAnimatingViewIntoPlace:Z

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isPageMoving()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    move v1, v4

    .line 1381
    .local v1, "enableChildrenLayers":Z
    :cond_2
    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mChildrenLayersEnabled:Z

    if-eq v1, v4, :cond_3

    .line 1382
    iput-boolean v1, p0, Lcom/android/launcher2/Workspace;->mChildrenLayersEnabled:Z

    .line 1383
    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mChildrenLayersEnabled:Z

    if-eqz v4, :cond_5

    .line 1384
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->enableHwLayersOnVisiblePages()V

    .line 1392
    :cond_3
    return-void

    .end local v1    # "enableChildrenLayers":Z
    .end local v3    # "small":Z
    :cond_4
    move v3, v1

    .line 1378
    goto :goto_0

    .line 1386
    .restart local v1    # "enableChildrenLayers":Z
    .restart local v3    # "small":Z
    :cond_5
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 1387
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 1388
    .local v0, "cl":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->disableHardwareLayers()V

    .line 1386
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private updatePageAlphaValues(I)V
    .locals 8
    .param p1, "screenCenter"    # I

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 1198
    iget v5, p0, Lcom/android/launcher2/Workspace;->mOverScrollX:I

    if-ltz v5, :cond_0

    iget v5, p0, Lcom/android/launcher2/Workspace;->mOverScrollX:I

    iget v6, p0, Lcom/android/launcher2/Workspace;->mMaxScrollX:I

    if-le v5, v6, :cond_2

    :cond_0
    const/4 v3, 0x1

    .line 1199
    .local v3, "isInOverscroll":Z
    :goto_0
    iget-boolean v5, p0, Lcom/android/launcher2/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v6, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-ne v5, v6, :cond_4

    iget-boolean v5, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v5, :cond_4

    if-nez v3, :cond_4

    .line 1203
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 1204
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 1205
    .local v1, "child":Lcom/android/launcher2/CellLayout;
    if-eqz v1, :cond_1

    .line 1206
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/launcher2/Workspace;->getScrollProgress(ILandroid/view/View;I)F

    move-result v4

    .line 1207
    .local v4, "scrollProgress":F
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float v0, v7, v5

    .line 1208
    .local v0, "alpha":F
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->setAlpha(F)V

    .line 1209
    iget-boolean v5, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    if-nez v5, :cond_3

    .line 1210
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/launcher2/Workspace;->backgroundAlphaInterpolator(F)F

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/launcher2/CellLayout;->setBackgroundAlphaMultiplier(F)V

    .line 1203
    .end local v0    # "alpha":F
    .end local v4    # "scrollProgress":F
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1198
    .end local v1    # "child":Lcom/android/launcher2/CellLayout;
    .end local v2    # "i":I
    .end local v3    # "isInOverscroll":Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 1213
    .restart local v0    # "alpha":F
    .restart local v1    # "child":Lcom/android/launcher2/CellLayout;
    .restart local v2    # "i":I
    .restart local v3    # "isInOverscroll":Z
    .restart local v4    # "scrollProgress":F
    :cond_3
    invoke-virtual {v1, v7}, Lcom/android/launcher2/CellLayout;->setBackgroundAlphaMultiplier(F)V

    goto :goto_2

    .line 1218
    .end local v0    # "alpha":F
    .end local v1    # "child":Lcom/android/launcher2/CellLayout;
    .end local v2    # "i":I
    .end local v4    # "scrollProgress":F
    :cond_4
    return-void
.end method

.method private updateWallpaperOffsets()V
    .locals 6

    .prologue
    .line 908
    const/4 v1, 0x0

    .line 909
    .local v1, "updateNow":Z
    const/4 v0, 0x1

    .line 910
    .local v0, "keepUpdating":Z
    iget-boolean v2, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    if-eqz v2, :cond_2

    .line 911
    const/4 v1, 0x1

    .line 912
    const/4 v0, 0x0

    .line 913
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->jumpToFinal()V

    .line 914
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    .line 918
    :goto_0
    if-eqz v1, :cond_0

    .line 919
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    if-eqz v2, :cond_0

    .line 920
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->getCurrX()F

    move-result v4

    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->getCurrY()F

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    .line 924
    :cond_0
    if-eqz v0, :cond_1

    .line 925
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->invalidate()V

    .line 927
    :cond_1
    return-void

    .line 916
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->computeScrollOffset()Z

    move-result v0

    move v1, v0

    goto :goto_0
.end method

.method private wallpaperOffsetForCurrentScroll()F
    .locals 10

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    .line 864
    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    div-float v8, v9, v8

    invoke-virtual {v7, v8, v9}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    .line 869
    iget v1, p0, Lcom/android/launcher2/Workspace;->mLayoutScale:F

    .line 870
    .local v1, "layoutScale":F
    iput v9, p0, Lcom/android/launcher2/Workspace;->mLayoutScale:F

    .line 871
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->getScrollRange()I

    move-result v5

    .line 874
    .local v5, "scrollRange":I
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v8

    iget v9, p0, Lcom/android/launcher2/Workspace;->mMaxScrollX:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v0, v7

    .line 875
    .local v0, "adjustedScrollX":F
    iget v7, p0, Lcom/android/launcher2/Workspace;->mWallpaperScrollRatio:F

    mul-float/2addr v0, v7

    .line 876
    iput v1, p0, Lcom/android/launcher2/Workspace;->mLayoutScale:F

    .line 878
    int-to-float v7, v5

    div-float v4, v0, v7

    .line 881
    .local v4, "scrollProgress":F
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/android/launcher2/Workspace;->mIsStaticWallpaper:Z

    if-eqz v7, :cond_0

    .line 885
    iget v7, p0, Lcom/android/launcher2/Workspace;->mWallpaperTravelWidth:I

    iget v8, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 887
    .local v6, "wallpaperTravelWidth":I
    int-to-float v7, v6

    mul-float/2addr v7, v4

    iget v8, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    sub-int/2addr v8, v6

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float v3, v7, v8

    .line 889
    .local v3, "offsetInDips":F
    iget v7, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    int-to-float v7, v7

    div-float v2, v3, v7

    .line 892
    .end local v3    # "offsetInDips":F
    .end local v6    # "wallpaperTravelWidth":I
    :goto_0
    return v2

    :cond_0
    move v2, v4

    goto :goto_0
.end method

.method private wallpaperTravelToScreenWidthRatio(II)F
    .locals 9
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 809
    int-to-float v7, p1

    int-to-float v8, p2

    div-float v4, v7, v8

    .line 816
    .local v4, "aspectRatio":F
    const v0, 0x3fcccccd    # 1.6f

    .line 817
    .local v0, "ASPECT_RATIO_LANDSCAPE":F
    const/high16 v1, 0x3f200000    # 0.625f

    .line 818
    .local v1, "ASPECT_RATIO_PORTRAIT":F
    const/high16 v2, 0x3fc00000    # 1.5f

    .line 819
    .local v2, "WALLPAPER_WIDTH_TO_SCREEN_RATIO_LANDSCAPE":F
    const v3, 0x3f99999a    # 1.2f

    .line 826
    .local v3, "WALLPAPER_WIDTH_TO_SCREEN_RATIO_PORTRAIT":F
    const v5, 0x3e9d89d7

    .line 829
    .local v5, "x":F
    const v6, 0x3f80fc10

    .line 830
    .local v6, "y":F
    const v7, 0x3e9d89d7

    mul-float/2addr v7, v4

    const v8, 0x3f80fc10

    add-float/2addr v7, v8

    return v7
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher2/DropTarget$DragObject;)Z
    .locals 27
    .param p1, "d"    # Lcom/android/launcher2/DropTarget$DragObject;

    .prologue
    .line 1960
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/Workspace;->mDropToLayout:Lcom/android/launcher2/CellLayout;

    .line 1961
    .local v8, "dropTargetLayout":Lcom/android/launcher2/CellLayout;
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    move-object/from16 v0, p0

    if-eq v1, v0, :cond_9

    .line 1963
    if-nez v8, :cond_0

    .line 1964
    const/4 v1, 0x0

    .line 2034
    :goto_0
    return v1

    .line 1966
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->transitionStateShouldAllowDrop()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 1968
    :cond_1
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher2/DropTarget$DragObject;->xOffset:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher2/DropTarget$DragObject;->yOffset:I

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher2/Workspace;->getDragViewVisualCenter(IIIILcom/android/launcher2/DragView;[F)[F

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    .line 1972
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, v8}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1973
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToHotseatLayout(Lcom/android/launcher2/Hotseat;[F)V

    .line 1978
    :goto_1
    const/16 v16, 0x1

    .line 1979
    .local v16, "spanX":I
    const/16 v17, 0x1

    .line 1980
    .local v17, "spanY":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v1, :cond_4

    .line 1981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    move-object/from16 v22, v0

    .line 1982
    .local v22, "dragCellInfo":Lcom/android/launcher2/CellLayout$CellInfo;
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    move/from16 v16, v0

    .line 1983
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    move/from16 v17, v0

    .line 1990
    .end local v22    # "dragCellInfo":Lcom/android/launcher2/CellLayout$CellInfo;
    :goto_2
    move/from16 v4, v16

    .line 1991
    .local v4, "minSpanX":I
    move/from16 v5, v17

    .line 1992
    .local v5, "minSpanY":I
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/launcher2/PendingAddWidgetInfo;

    if-eqz v1, :cond_2

    .line 1993
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher2/PendingAddWidgetInfo;

    iget v4, v1, Lcom/android/launcher2/PendingAddWidgetInfo;->minSpanX:I

    .line 1994
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher2/PendingAddWidgetInfo;

    iget v5, v1, Lcom/android/launcher2/PendingAddWidgetInfo;->minSpanY:I

    .line 1997
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-int v2, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x1

    aget v1, v1, v3

    float-to-int v3, v1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v1, p0

    move-object v6, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher2/Workspace;->findNearestArea(IIIILcom/android/launcher2/CellLayout;[I)[I

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 2000
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    invoke-virtual {v8, v1, v2, v3}, Lcom/android/launcher2/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v10

    .line 2002
    .local v10, "distance":F
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v7, Lcom/android/launcher2/ItemInfo;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v11, 0x1

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/android/launcher2/Workspace;->willCreateUserFolder(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;[IFZ)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2004
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1975
    .end local v4    # "minSpanX":I
    .end local v5    # "minSpanY":I
    .end local v10    # "distance":F
    .end local v16    # "spanX":I
    .end local v17    # "spanY":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    goto/16 :goto_1

    .line 1985
    .restart local v16    # "spanX":I
    .restart local v17    # "spanY":I
    :cond_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/launcher2/ItemInfo;

    .line 1986
    .local v23, "dragInfo":Lcom/android/launcher2/ItemInfo;
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    move/from16 v16, v0

    .line 1987
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    move/from16 v17, v0

    goto/16 :goto_2

    .line 2006
    .end local v23    # "dragInfo":Lcom/android/launcher2/ItemInfo;
    .restart local v4    # "minSpanX":I
    .restart local v5    # "minSpanY":I
    .restart local v10    # "distance":F
    :cond_5
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher2/ItemInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v8, v2, v10}, Lcom/android/launcher2/Workspace;->willAddToExistingUserFolder(Ljava/lang/Object;Lcom/android/launcher2/CellLayout;[IF)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2008
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 2011
    :cond_6
    const/4 v1, 0x2

    new-array v0, v1, [I

    move-object/from16 v20, v0

    .line 2012
    .local v20, "resultSpan":[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-int v12, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    float-to-int v13, v1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v19, v0

    const/16 v21, 0x3

    move-object v11, v8

    move v14, v4

    move v15, v5

    invoke-virtual/range {v11 .. v21}, Lcom/android/launcher2/CellLayout;->createArea(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 2015
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-ltz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    if-ltz v1, :cond_7

    const/16 v24, 0x1

    .line 2018
    .local v24, "foundCell":Z
    :goto_3
    if-nez v24, :cond_9

    .line 2021
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, v8}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v26

    .line 2022
    .local v26, "isHotseat":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    if-eqz v1, :cond_8

    if-eqz v26, :cond_8

    .line 2023
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v25

    .line 2024
    .local v25, "hotseat":Lcom/android/launcher2/Hotseat;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Hotseat;->getOrderInHotseat(II)I

    move-result v1

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Hotseat;->isAllAppsButtonRank(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2026
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 2015
    .end local v24    # "foundCell":Z
    .end local v25    # "hotseat":Lcom/android/launcher2/Hotseat;
    .end local v26    # "isHotseat":Z
    :cond_7
    const/16 v24, 0x0

    goto :goto_3

    .line 2030
    .restart local v24    # "foundCell":Z
    .restart local v26    # "isHotseat":Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    move/from16 v0, v26

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Launcher;->showOutOfSpaceMessage(Z)V

    .line 2031
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 2034
    .end local v4    # "minSpanX":I
    .end local v5    # "minSpanY":I
    .end local v10    # "distance":F
    .end local v16    # "spanX":I
    .end local v17    # "spanY":I
    .end local v20    # "resultSpan":[I
    .end local v24    # "foundCell":Z
    .end local v26    # "isHotseat":Z
    :cond_9
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method addApplicationShortcut(Lcom/android/launcher2/ShortcutInfo;Lcom/android/launcher2/CellLayout;JIIIZII)V
    .locals 13
    .param p1, "info"    # Lcom/android/launcher2/ShortcutInfo;
    .param p2, "target"    # Lcom/android/launcher2/CellLayout;
    .param p3, "container"    # J
    .param p5, "screen"    # I
    .param p6, "cellX"    # I
    .param p7, "cellY"    # I
    .param p8, "insertAtFirst"    # Z
    .param p9, "intersectX"    # I
    .param p10, "intersectY"    # I

    .prologue
    .line 1942
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    const v2, 0x7f040002

    invoke-virtual {v0, v2, p2, p1}, Lcom/android/launcher2/Launcher;->createShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher2/ShortcutInfo;)Landroid/view/View;

    move-result-object v12

    .line 1944
    .local v12, "view":Landroid/view/View;
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 1945
    .local v1, "cellXY":[I
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, p2

    move/from16 v4, p9

    move/from16 v5, p10

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->findCellForSpanThatIntersects([IIIII)Z

    .line 1946
    const/4 v0, 0x0

    aget v7, v1, v0

    const/4 v0, 0x1

    aget v8, v1, v0

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v2, p0

    move-object v3, v12

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move/from16 v11, p8

    invoke-virtual/range {v2 .. v11}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    .line 1947
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    const/4 v0, 0x0

    aget v7, v1, v0

    const/4 v0, 0x1

    aget v8, v1, v0

    move-object v3, p1

    move-wide/from16 v4, p3

    move/from16 v6, p5

    invoke-static/range {v2 .. v8}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIII)V

    .line 1949
    return-void
.end method

.method public addExternalItemToScreen(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;)Z
    .locals 4
    .param p1, "dragInfo"    # Lcom/android/launcher2/ItemInfo;
    .param p2, "layout"    # Lcom/android/launcher2/CellLayout;

    .prologue
    const/4 v0, 0x0

    .line 2983
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mTempEstimate:[I

    iget v2, p1, Lcom/android/launcher2/ItemInfo;->spanX:I

    iget v3, p1, Lcom/android/launcher2/ItemInfo;->spanY:I

    invoke-virtual {p2, v1, v2, v3}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2984
    iget-object v1, p1, Lcom/android/launcher2/ItemInfo;->dropPos:[I

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/android/launcher2/Workspace;->onDropExternal([ILjava/lang/Object;Lcom/android/launcher2/CellLayout;Z)V

    .line 2985
    const/4 v0, 0x1

    .line 2988
    :goto_0
    return v0

    .line 2987
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2, p2}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Launcher;->showOutOfSpaceMessage(Z)V

    goto :goto_0
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
    .line 1331
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->isAllAppsVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1332
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 1333
    .local v0, "openFolder":Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_1

    .line 1334
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/Folder;->addFocusables(Ljava/util/ArrayList;I)V

    .line 1339
    .end local v0    # "openFolder":Lcom/android/launcher2/Folder;
    :cond_0
    :goto_0
    return-void

    .line 1336
    .restart local v0    # "openFolder":Lcom/android/launcher2/Folder;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher2/SmoothPagedView;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_0
.end method

.method addInScreen(Landroid/view/View;JIIIII)V
    .locals 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "container"    # J
    .param p4, "screen"    # I
    .param p5, "x"    # I
    .param p6, "y"    # I
    .param p7, "spanX"    # I
    .param p8, "spanY"    # I

    .prologue
    .line 492
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    .line 493
    return-void
.end method

.method addInScreen(Landroid/view/View;JIIIIIZ)V
    .locals 12
    .param p1, "child"    # Landroid/view/View;
    .param p2, "container"    # J
    .param p4, "screen"    # I
    .param p5, "x"    # I
    .param p6, "y"    # I
    .param p7, "spanX"    # I
    .param p8, "spanY"    # I
    .param p9, "insert"    # Z

    .prologue
    .line 509
    const-wide/16 v5, -0x64

    cmp-long v5, p2, v5

    if-nez v5, :cond_2

    .line 510
    if-ltz p4, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v5

    move/from16 v0, p4

    if-lt v0, v5, :cond_2

    .line 511
    :cond_0
    const-string v5, "Launcher.Workspace"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The screen must be >= 0 and < "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, " (was "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, "); skipping child"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    .end local p1    # "child":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 518
    .restart local p1    # "child":Landroid/view/View;
    :cond_2
    const-wide/16 v5, -0x65

    cmp-long v5, p2, v5

    if-nez v5, :cond_9

    .line 519
    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v4

    .line 520
    .local v4, "layout":Lcom/android/launcher2/CellLayout;
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 523
    instance-of v5, p1, Lcom/android/launcher2/FolderIcon;

    if-eqz v5, :cond_3

    move-object v5, p1

    .line 524
    check-cast v5, Lcom/android/launcher2/FolderIcon;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/launcher2/FolderIcon;->setTextVisible(Z)V

    .line 527
    :cond_3
    if-gez p4, :cond_8

    .line 528
    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v5

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v5, v0, v1}, Lcom/android/launcher2/Hotseat;->getOrderInHotseat(II)I

    move-result p4

    .line 545
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 547
    .local v10, "genericLp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v10, :cond_4

    instance-of v5, v10, Lcom/android/launcher2/CellLayout$LayoutParams;

    if-nez v5, :cond_b

    .line 548
    :cond_4
    new-instance v8, Lcom/android/launcher2/CellLayout$LayoutParams;

    move/from16 v0, p5

    move/from16 v1, p6

    move/from16 v2, p7

    move/from16 v3, p8

    invoke-direct {v8, v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(IIII)V

    .line 557
    .local v8, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    :goto_2
    if-gez p7, :cond_5

    if-gez p8, :cond_5

    .line 558
    const/4 v5, 0x0

    iput-boolean v5, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 562
    :cond_5
    invoke-static/range {p2 .. p8}, Lcom/android/launcher2/LauncherModel;->getCellLayoutChildId(JIIIII)I

    move-result v7

    .line 563
    .local v7, "childId":I
    instance-of v5, p1, Lcom/android/launcher2/Folder;

    if-nez v5, :cond_c

    const/4 v9, 0x1

    .line 564
    .local v9, "markCellsAsOccupied":Z
    :goto_3
    if-eqz p9, :cond_d

    const/4 v6, 0x0

    :goto_4
    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher2/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/CellLayout$LayoutParams;Z)Z

    move-result v5

    if-nez v5, :cond_6

    .line 568
    const-string v5, "Launcher.Workspace"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to add to item at ("

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v11, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, ","

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v11, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, ") to CellLayout"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_6
    instance-of v5, p1, Lcom/android/launcher2/Folder;

    if-nez v5, :cond_7

    .line 572
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 573
    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 575
    :cond_7
    instance-of v5, p1, Lcom/android/launcher2/DropTarget;

    if-eqz v5, :cond_1

    .line 576
    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    check-cast p1, Lcom/android/launcher2/DropTarget;

    .end local p1    # "child":Landroid/view/View;
    invoke-virtual {v5, p1}, Lcom/android/launcher2/DragController;->addDropTarget(Lcom/android/launcher2/DropTarget;)V

    goto/16 :goto_0

    .line 532
    .end local v7    # "childId":I
    .end local v8    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v9    # "markCellsAsOccupied":Z
    .end local v10    # "genericLp":Landroid/view/ViewGroup$LayoutParams;
    .restart local p1    # "child":Landroid/view/View;
    :cond_8
    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Lcom/android/launcher2/Hotseat;->getCellXFromOrder(I)I

    move-result p5

    .line 533
    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Lcom/android/launcher2/Hotseat;->getCellYFromOrder(I)I

    move-result p6

    goto/16 :goto_1

    .line 537
    .end local v4    # "layout":Lcom/android/launcher2/CellLayout;
    :cond_9
    instance-of v5, p1, Lcom/android/launcher2/FolderIcon;

    if-eqz v5, :cond_a

    move-object v5, p1

    .line 538
    check-cast v5, Lcom/android/launcher2/FolderIcon;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/launcher2/FolderIcon;->setTextVisible(Z)V

    .line 541
    :cond_a
    move/from16 v0, p4

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    .line 542
    .restart local v4    # "layout":Lcom/android/launcher2/CellLayout;
    new-instance v5, Lcom/android/launcher2/IconKeyEventListener;

    invoke-direct {v5}, Lcom/android/launcher2/IconKeyEventListener;-><init>()V

    invoke-virtual {p1, v5}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto/16 :goto_1

    .restart local v10    # "genericLp":Landroid/view/ViewGroup$LayoutParams;
    :cond_b
    move-object v8, v10

    .line 550
    check-cast v8, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 551
    .restart local v8    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    move/from16 v0, p5

    iput v0, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 552
    move/from16 v0, p6

    iput v0, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 553
    move/from16 v0, p7

    iput v0, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 554
    move/from16 v0, p8

    iput v0, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    goto/16 :goto_2

    .line 563
    .restart local v7    # "childId":I
    :cond_c
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 564
    .restart local v9    # "markCellsAsOccupied":Z
    :cond_d
    const/4 v6, -0x1

    goto/16 :goto_4
.end method

.method addToExistingFolderIfNecessary(Landroid/view/View;Lcom/android/launcher2/CellLayout;[IFLcom/android/launcher2/DropTarget$DragObject;Z)Z
    .locals 6
    .param p1, "newView"    # Landroid/view/View;
    .param p2, "target"    # Lcom/android/launcher2/CellLayout;
    .param p3, "targetCell"    # [I
    .param p4, "distance"    # F
    .param p5, "d"    # Lcom/android/launcher2/DropTarget$DragObject;
    .param p6, "external"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2142
    iget v4, p0, Lcom/android/launcher2/Workspace;->mMaxDistanceForFolderCreation:F

    cmpl-float v4, p4, v4

    if-lez v4, :cond_1

    .line 2160
    :cond_0
    :goto_0
    return v2

    .line 2144
    :cond_1
    aget v4, p3, v2

    aget v5, p3, v3

    invoke-virtual {p2, v4, v5}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 2145
    .local v0, "dropOverView":Landroid/view/View;
    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mAddToExistingFolderOnDrop:Z

    if-eqz v4, :cond_0

    .line 2146
    iput-boolean v2, p0, Lcom/android/launcher2/Workspace;->mAddToExistingFolderOnDrop:Z

    .line 2148
    instance-of v4, v0, Lcom/android/launcher2/FolderIcon;

    if-eqz v4, :cond_0

    move-object v1, v0

    .line 2149
    check-cast v1, Lcom/android/launcher2/FolderIcon;

    .line 2150
    .local v1, "fi":Lcom/android/launcher2/FolderIcon;
    iget-object v4, p5, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Lcom/android/launcher2/FolderIcon;->acceptDrop(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2151
    invoke-virtual {v1, p5}, Lcom/android/launcher2/FolderIcon;->onDrop(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 2154
    if-nez p6, :cond_2

    .line 2155
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher2/CellLayout;

    move-result-object v2

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v4, v4, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/CellLayout;->removeView(Landroid/view/View;)V

    :cond_2
    move v2, v3

    .line 2157
    goto :goto_0
.end method

.method public animateWidgetDrop(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V
    .locals 40
    .param p1, "info"    # Lcom/android/launcher2/ItemInfo;
    .param p2, "cellLayout"    # Lcom/android/launcher2/CellLayout;
    .param p3, "dragView"    # Lcom/android/launcher2/DragView;
    .param p4, "onCompleteRunnable"    # Ljava/lang/Runnable;
    .param p5, "animationType"    # I
    .param p6, "finalView"    # Landroid/view/View;
    .param p7, "external"    # Z

    .prologue
    .line 3235
    new-instance v38, Landroid/graphics/Rect;

    invoke-direct/range {v38 .. v38}, Landroid/graphics/Rect;-><init>()V

    .line 3236
    .local v38, "from":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v4

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v4, v0, v1}, Lcom/android/launcher2/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3238
    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 3239
    .local v5, "finalPos":[I
    const/4 v4, 0x2

    new-array v6, v4, [F

    .line 3240
    .local v6, "scaleXY":[F
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/launcher2/PendingAddShortcutInfo;

    if-nez v4, :cond_3

    const/4 v12, 0x1

    .line 3241
    .local v12, "scalePreview":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v4, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p2

    move-object/from16 v9, p1

    move/from16 v11, p7

    invoke-direct/range {v4 .. v12}, Lcom/android/launcher2/Workspace;->getFinalPositionForDropAnimation([I[FLcom/android/launcher2/DragView;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/ItemInfo;[IZZ)V

    .line 3244
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    .line 3245
    .local v39, "res":Landroid/content/res/Resources;
    const v4, 0x7f0a0014

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    add-int/lit16 v0, v4, -0xc8

    move/from16 v21, v0

    .line 3248
    .local v21, "duration":I
    move-object/from16 v0, p6

    instance-of v4, v0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v4, :cond_0

    if-eqz p7, :cond_0

    .line 3249
    const-string v4, "Launcher.Workspace"

    const-string v7, "6557954 Animate widget drop, final view is appWidgetHostView"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3250
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Lcom/android/launcher2/DragLayer;->removeView(Landroid/view/View;)V

    .line 3252
    :cond_0
    const/4 v4, 0x2

    move/from16 v0, p5

    if-eq v0, v4, :cond_1

    if-eqz p7, :cond_4

    :cond_1
    if-eqz p6, :cond_4

    .line 3253
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Workspace;->createWidgetBitmap(Lcom/android/launcher2/ItemInfo;Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v37

    .line 3254
    .local v37, "crossFadeBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragView;->setCrossFadeBitmap(Landroid/graphics/Bitmap;)V

    .line 3255
    move/from16 v0, v21

    int-to-float v4, v0

    const v7, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v7

    float-to-int v4, v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/android/launcher2/DragView;->crossFade(I)V

    .line 3260
    .end local v37    # "crossFadeBitmap":Landroid/graphics/Bitmap;
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v22

    .line 3261
    .local v22, "dragLayer":Lcom/android/launcher2/DragLayer;
    const/4 v4, 0x4

    move/from16 v0, p5

    if-ne v0, v4, :cond_5

    .line 3262
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v13

    const/16 v16, 0x0

    const v17, 0x3dcccccd    # 0.1f

    const v18, 0x3dcccccd    # 0.1f

    const/16 v19, 0x0

    move-object/from16 v14, p3

    move-object v15, v5

    move-object/from16 v20, p4

    invoke-virtual/range {v13 .. v21}, Lcom/android/launcher2/DragLayer;->animateViewIntoPosition(Lcom/android/launcher2/DragView;[IFFFILjava/lang/Runnable;I)V

    .line 3287
    :goto_2
    return-void

    .line 3240
    .end local v12    # "scalePreview":Z
    .end local v21    # "duration":I
    .end local v22    # "dragLayer":Lcom/android/launcher2/DragLayer;
    .end local v39    # "res":Landroid/content/res/Resources;
    :cond_3
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 3256
    .restart local v12    # "scalePreview":Z
    .restart local v21    # "duration":I
    .restart local v39    # "res":Landroid/content/res/Resources;
    :cond_4
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher2/ItemInfo;->itemType:I

    const/4 v7, 0x4

    if-ne v4, v7, :cond_2

    if-eqz p7, :cond_2

    .line 3257
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    aget v8, v6, v8

    const/4 v9, 0x1

    aget v9, v6, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    aput v8, v6, v7

    aput v8, v6, v4

    goto :goto_1

    .line 3266
    .restart local v22    # "dragLayer":Lcom/android/launcher2/DragLayer;
    :cond_5
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_6

    .line 3267
    const/16 v34, 0x2

    .line 3272
    .local v34, "endStyle":I
    :goto_3
    new-instance v33, Lcom/android/launcher2/Workspace$10;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/Workspace$10;-><init>(Lcom/android/launcher2/Workspace;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 3283
    .local v33, "onComplete":Ljava/lang/Runnable;
    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    const/4 v4, 0x0

    aget v26, v5, v4

    const/4 v4, 0x1

    aget v27, v5, v4

    const/high16 v28, 0x3f800000    # 1.0f

    const/high16 v29, 0x3f800000    # 1.0f

    const/high16 v30, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    aget v31, v6, v4

    const/4 v4, 0x1

    aget v32, v6, v4

    move-object/from16 v23, p3

    move/from16 v35, v21

    move-object/from16 v36, p0

    invoke-virtual/range {v22 .. v36}, Lcom/android/launcher2/DragLayer;->animateViewIntoPosition(Lcom/android/launcher2/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V

    goto :goto_2

    .line 3269
    .end local v33    # "onComplete":Ljava/lang/Runnable;
    .end local v34    # "endStyle":I
    :cond_6
    const/16 v34, 0x0

    .restart local v34    # "endStyle":I
    goto :goto_3
.end method

.method backgroundAlphaInterpolator(F)F
    .locals 4
    .param p1, "r"    # F

    .prologue
    .line 1174
    const v0, 0x3dcccccd    # 0.1f

    .line 1175
    .local v0, "pivotA":F
    const v1, 0x3ecccccd    # 0.4f

    .line 1176
    .local v1, "pivotB":F
    cmpg-float v2, p1, v0

    if-gez v2, :cond_0

    .line 1177
    const/4 v2, 0x0

    .line 1181
    :goto_0
    return v2

    .line 1178
    :cond_0
    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    .line 1179
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    .line 1181
    :cond_1
    sub-float v2, p1, v0

    sub-float v3, v1, v0

    div-float/2addr v2, v3

    goto :goto_0
.end method

.method public beginDragShared(Landroid/view/View;Lcom/android/launcher2/DragSource;)V
    .locals 24
    .param p1, "child"    # Landroid/view/View;
    .param p2, "source"    # Lcom/android/launcher2/DragSource;

    .prologue
    .line 1891
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 1894
    .local v21, "r":Landroid/content/res/Resources;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    const/4 v7, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v7}, Lcom/android/launcher2/Workspace;->createDragBitmap(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1896
    .local v4, "b":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    .line 1897
    .local v14, "bmpWidth":I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    .line 1899
    .local v13, "bmpHeight":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/Workspace;->mTempXY:[I

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v7}, Lcom/android/launcher2/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    move-result v12

    .line 1900
    .local v12, "scale":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mTempXY:[I

    const/4 v7, 0x0

    aget v3, v3, v7

    int-to-float v3, v3

    int-to-float v7, v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v12

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 1902
    .local v5, "dragLayerX":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mTempXY:[I

    const/4 v7, 0x1

    aget v3, v3, v7

    int-to-float v3, v3

    int-to-float v7, v13

    int-to-float v8, v13

    mul-float/2addr v8, v12

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float/2addr v3, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 1906
    .local v6, "dragLayerY":I
    const/4 v10, 0x0

    .line 1907
    .local v10, "dragVisualizeOffset":Landroid/graphics/Point;
    const/4 v11, 0x0

    .line 1908
    .local v11, "dragRect":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/android/launcher2/BubbleTextView;

    if-nez v3, :cond_0

    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/android/launcher2/PagedViewIcon;

    if-eqz v3, :cond_3

    .line 1909
    :cond_0
    const v3, 0x7f0b0022

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    .line 1910
    .local v18, "iconSize":I
    const v3, 0x7f0b001b

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 1911
    .local v17, "iconPaddingTop":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v23

    .line 1912
    .local v23, "top":I
    sub-int v3, v14, v18

    div-int/lit8 v19, v3, 0x2

    .line 1913
    .local v19, "left":I
    add-int v22, v19, v18

    .line 1914
    .local v22, "right":I
    add-int v15, v23, v18

    .line 1915
    .local v15, "bottom":I
    add-int v6, v6, v23

    .line 1918
    new-instance v10, Landroid/graphics/Point;

    .end local v10    # "dragVisualizeOffset":Landroid/graphics/Point;
    const/4 v3, -0x1

    add-int/lit8 v7, v17, -0x1

    invoke-direct {v10, v3, v7}, Landroid/graphics/Point;-><init>(II)V

    .line 1920
    .restart local v10    # "dragVisualizeOffset":Landroid/graphics/Point;
    new-instance v11, Landroid/graphics/Rect;

    .end local v11    # "dragRect":Landroid/graphics/Rect;
    move/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-direct {v11, v0, v1, v2, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1927
    .end local v15    # "bottom":I
    .end local v17    # "iconPaddingTop":I
    .end local v18    # "iconSize":I
    .end local v19    # "left":I
    .end local v22    # "right":I
    .end local v23    # "top":I
    .restart local v11    # "dragRect":Landroid/graphics/Rect;
    :cond_1
    :goto_0
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/android/launcher2/BubbleTextView;

    if-eqz v3, :cond_2

    move-object/from16 v16, p1

    .line 1928
    check-cast v16, Lcom/android/launcher2/BubbleTextView;

    .line 1929
    .local v16, "icon":Lcom/android/launcher2/BubbleTextView;
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/BubbleTextView;->clearPressedOrFocusedBackground()V

    .line 1932
    .end local v16    # "icon":Lcom/android/launcher2/BubbleTextView;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    sget v9, Lcom/android/launcher2/DragController;->DRAG_ACTION_MOVE:I

    move-object/from16 v7, p2

    invoke-virtual/range {v3 .. v12}, Lcom/android/launcher2/DragController;->startDrag(Landroid/graphics/Bitmap;IILcom/android/launcher2/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;F)V

    .line 1934
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1937
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Workspace;->showScrollingIndicator(Z)V

    .line 1938
    return-void

    .line 1921
    :cond_3
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/android/launcher2/FolderIcon;

    if-eqz v3, :cond_1

    .line 1922
    const v3, 0x7f0b003c

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    .line 1923
    .local v20, "previewSize":I
    new-instance v11, Landroid/graphics/Rect;

    .end local v11    # "dragRect":Landroid/graphics/Rect;
    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v8

    move/from16 v0, v20

    invoke-direct {v11, v3, v7, v8, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v11    # "dragRect":Landroid/graphics/Rect;
    goto :goto_0
.end method

.method public buildPageHardwareLayers()V
    .locals 4

    .prologue
    .line 1425
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 1426
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1427
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    .line 1428
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1429
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 1430
    .local v1, "cl":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->buildHardwareLayer()V

    .line 1428
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1433
    .end local v0    # "childCount":I
    .end local v1    # "cl":Lcom/android/launcher2/CellLayout;
    .end local v2    # "i":I
    :cond_0
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 1434
    return-void
.end method

.method clearChildrenCache()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1365
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    .line 1366
    .local v2, "screenCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1367
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 1368
    .local v1, "layout":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v1, v4}, Lcom/android/launcher2/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1370
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isHardwareAccelerated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1371
    invoke-virtual {v1, v4}, Lcom/android/launcher2/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    .line 1366
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1374
    .end local v1    # "layout":Lcom/android/launcher2/CellLayout;
    :cond_1
    return-void
.end method

.method clearDropTargets()V
    .locals 7

    .prologue
    .line 3622
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getAllShortcutAndWidgetContainers()Ljava/util/ArrayList;

    move-result-object v1

    .line 3624
    .local v1, "childrenLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutAndWidgetContainer;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/ShortcutAndWidgetContainer;

    .line 3625
    .local v4, "layout":Lcom/android/launcher2/ShortcutAndWidgetContainer;
    invoke-virtual {v4}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    .line 3626
    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 3627
    invoke-virtual {v4, v3}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3628
    .local v5, "v":Landroid/view/View;
    instance-of v6, v5, Lcom/android/launcher2/DropTarget;

    if-eqz v6, :cond_1

    .line 3629
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    check-cast v5, Lcom/android/launcher2/DropTarget;

    .end local v5    # "v":Landroid/view/View;
    invoke-virtual {v6, v5}, Lcom/android/launcher2/DragController;->removeDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 3626
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3633
    .end local v0    # "childCount":I
    .end local v3    # "j":I
    .end local v4    # "layout":Lcom/android/launcher2/ShortcutAndWidgetContainer;
    :cond_2
    return-void
.end method

.method public computeScroll()V
    .locals 0

    .prologue
    .line 1084
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->computeScroll()V

    .line 1085
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->syncWallpaperOffsetWithScroll()V

    .line 1086
    return-void
.end method

.method public createDragBitmap(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "padding"    # I

    .prologue
    const/4 v5, 0x1

    .line 1807
    instance-of v2, p1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    move-object v2, p1

    .line 1808
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v1, v2, v5

    .line 1809
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v3, p3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1816
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .local v0, "b":Landroid/graphics/Bitmap;
    :goto_0
    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1817
    invoke-direct {p0, p1, p2, p3, v5}, Lcom/android/launcher2/Workspace;->drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZ)V

    .line 1818
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1820
    return-object v0

    .line 1812
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, p3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "b":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method createUserFolderIfNecessary(Landroid/view/View;JLcom/android/launcher2/CellLayout;[IFZLcom/android/launcher2/DragView;Ljava/lang/Runnable;)Z
    .locals 21
    .param p1, "newView"    # Landroid/view/View;
    .param p2, "container"    # J
    .param p4, "target"    # Lcom/android/launcher2/CellLayout;
    .param p5, "targetCell"    # [I
    .param p6, "distance"    # F
    .param p7, "external"    # Z
    .param p8, "dragView"    # Lcom/android/launcher2/DragView;
    .param p9, "postAnimationRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 2090
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/Workspace;->mMaxDistanceForFolderCreation:F

    cmpl-float v2, p6, v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    .line 2137
    :goto_0
    return v2

    .line 2091
    :cond_0
    const/4 v2, 0x0

    aget v2, p5, v2

    const/4 v3, 0x1

    aget v3, p5, v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v9

    .line 2093
    .local v9, "v":Landroid/view/View;
    const/16 v19, 0x0

    .line 2094
    .local v19, "hasntMoved":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v2, :cond_1

    .line 2095
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher2/CellLayout;

    move-result-object v17

    .line 2096
    .local v17, "cellParent":Lcom/android/launcher2/CellLayout;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v2, v2, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    const/4 v3, 0x0

    aget v3, p5, v3

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v2, v2, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    const/4 v3, 0x1

    aget v3, p5, v3

    if-ne v2, v3, :cond_3

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    if-ne v0, v1, :cond_3

    const/16 v19, 0x1

    .line 2100
    .end local v17    # "cellParent":Lcom/android/launcher2/CellLayout;
    :cond_1
    :goto_1
    if-eqz v9, :cond_2

    if-nez v19, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/Workspace;->mCreateUserFolderOnDrop:Z

    if-nez v2, :cond_4

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 2096
    .restart local v17    # "cellParent":Lcom/android/launcher2/CellLayout;
    :cond_3
    const/16 v19, 0x0

    goto :goto_1

    .line 2101
    .end local v17    # "cellParent":Lcom/android/launcher2/CellLayout;
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher2/Workspace;->mCreateUserFolderOnDrop:Z

    .line 2102
    if-nez p5, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v6, v2, Lcom/android/launcher2/CellLayout$CellInfo;->screen:I

    .line 2104
    .local v6, "screen":I
    :goto_2
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v15, v2, Lcom/android/launcher2/ShortcutInfo;

    .line 2105
    .local v15, "aboveShortcut":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v0, v2, Lcom/android/launcher2/ShortcutInfo;

    move/from16 v20, v0

    .line 2107
    .local v20, "willBecomeShortcut":Z
    if-eqz v15, :cond_9

    if-eqz v20, :cond_9

    .line 2108
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/ShortcutInfo;

    .line 2109
    .local v10, "sourceInfo":Lcom/android/launcher2/ShortcutInfo;
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/ShortcutInfo;

    .line 2111
    .local v18, "destInfo":Lcom/android/launcher2/ShortcutInfo;
    if-nez p7, :cond_5

    .line 2112
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher2/CellLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v3, v3, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/CellLayout;->removeView(Landroid/view/View;)V

    .line 2115
    :cond_5
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 2116
    .local v12, "folderLocation":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v2

    invoke-virtual {v2, v9, v12}, Lcom/android/launcher2/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v13

    .line 2117
    .local v13, "scale":F
    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Lcom/android/launcher2/CellLayout;->removeView(Landroid/view/View;)V

    .line 2119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    const/4 v3, 0x0

    aget v7, p5, v3

    const/4 v3, 0x1

    aget v8, p5, v3

    move-object/from16 v3, p4

    move-wide/from16 v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher2/Launcher;->addFolder(Lcom/android/launcher2/CellLayout;JIII)Lcom/android/launcher2/FolderIcon;

    move-result-object v7

    .line 2121
    .local v7, "fi":Lcom/android/launcher2/FolderIcon;
    const/4 v2, -0x1

    move-object/from16 v0, v18

    iput v2, v0, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    .line 2122
    const/4 v2, -0x1

    move-object/from16 v0, v18

    iput v2, v0, Lcom/android/launcher2/ShortcutInfo;->cellY:I

    .line 2123
    const/4 v2, -0x1

    iput v2, v10, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    .line 2124
    const/4 v2, -0x1

    iput v2, v10, Lcom/android/launcher2/ShortcutInfo;->cellY:I

    .line 2127
    if-eqz p8, :cond_7

    const/16 v16, 0x1

    .line 2128
    .local v16, "animate":Z
    :goto_3
    if-eqz v16, :cond_8

    move-object/from16 v8, v18

    move-object/from16 v11, p8

    move-object/from16 v14, p9

    .line 2129
    invoke-virtual/range {v7 .. v14}, Lcom/android/launcher2/FolderIcon;->performCreateAnimation(Lcom/android/launcher2/ShortcutInfo;Landroid/view/View;Lcom/android/launcher2/ShortcutInfo;Lcom/android/launcher2/DragView;Landroid/graphics/Rect;FLjava/lang/Runnable;)V

    .line 2135
    :goto_4
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2102
    .end local v6    # "screen":I
    .end local v7    # "fi":Lcom/android/launcher2/FolderIcon;
    .end local v10    # "sourceInfo":Lcom/android/launcher2/ShortcutInfo;
    .end local v12    # "folderLocation":Landroid/graphics/Rect;
    .end local v13    # "scale":F
    .end local v15    # "aboveShortcut":Z
    .end local v16    # "animate":Z
    .end local v18    # "destInfo":Lcom/android/launcher2/ShortcutInfo;
    .end local v20    # "willBecomeShortcut":Z
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v6

    goto/16 :goto_2

    .line 2127
    .restart local v6    # "screen":I
    .restart local v7    # "fi":Lcom/android/launcher2/FolderIcon;
    .restart local v10    # "sourceInfo":Lcom/android/launcher2/ShortcutInfo;
    .restart local v12    # "folderLocation":Landroid/graphics/Rect;
    .restart local v13    # "scale":F
    .restart local v15    # "aboveShortcut":Z
    .restart local v18    # "destInfo":Lcom/android/launcher2/ShortcutInfo;
    .restart local v20    # "willBecomeShortcut":Z
    :cond_7
    const/16 v16, 0x0

    goto :goto_3

    .line 2132
    .restart local v16    # "animate":Z
    :cond_8
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/android/launcher2/FolderIcon;->addItem(Lcom/android/launcher2/ShortcutInfo;)V

    .line 2133
    invoke-virtual {v7, v10}, Lcom/android/launcher2/FolderIcon;->addItem(Lcom/android/launcher2/ShortcutInfo;)V

    goto :goto_4

    .line 2137
    .end local v7    # "fi":Lcom/android/launcher2/FolderIcon;
    .end local v10    # "sourceInfo":Lcom/android/launcher2/ShortcutInfo;
    .end local v12    # "folderLocation":Landroid/graphics/Rect;
    .end local v13    # "scale":F
    .end local v16    # "animate":Z
    .end local v18    # "destInfo":Lcom/android/launcher2/ShortcutInfo;
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public createWidgetBitmap(Lcom/android/launcher2/ItemInfo;Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "widgetInfo"    # Lcom/android/launcher2/ItemInfo;
    .param p2, "layout"    # Landroid/view/View;

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3177
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v6

    iget v7, p1, Lcom/android/launcher2/ItemInfo;->spanX:I

    iget v8, p1, Lcom/android/launcher2/ItemInfo;->spanY:I

    invoke-virtual {v6, v7, v8, p1, v9}, Lcom/android/launcher2/Workspace;->estimateItemSize(IILcom/android/launcher2/ItemInfo;Z)[I

    move-result-object v3

    .line 3179
    .local v3, "unScaledSize":[I
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v4

    .line 3180
    .local v4, "visibility":I
    invoke-virtual {p2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 3182
    aget v6, v3, v9

    invoke-static {v6, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 3183
    .local v5, "width":I
    aget v6, v3, v10

    invoke-static {v6, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 3184
    .local v2, "height":I
    aget v6, v3, v9

    aget v7, v3, v10

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3186
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3188
    .local v1, "c":Landroid/graphics/Canvas;
    invoke-virtual {p2, v5, v2}, Landroid/view/View;->measure(II)V

    .line 3189
    aget v6, v3, v9

    aget v7, v3, v10

    invoke-virtual {p2, v9, v9, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 3190
    invoke-virtual {p2, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 3191
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 3192
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3193
    return-object v0
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const v7, 0x3f060a92

    .line 693
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 724
    :cond_0
    :goto_0
    return-void

    .line 694
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isFinishedSwitchingState()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 696
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, p0, Lcom/android/launcher2/Workspace;->mXDown:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 697
    .local v0, "deltaX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v6, p0, Lcom/android/launcher2/Workspace;->mYDown:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 699
    .local v1, "deltaY":F
    const/4 v5, 0x0

    invoke-static {v0, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-eqz v5, :cond_0

    .line 701
    div-float v3, v1, v0

    .line 702
    .local v3, "slope":F
    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    double-to-float v4, v5

    .line 704
    .local v4, "theta":F
    iget v5, p0, Lcom/android/launcher2/Workspace;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v5, v0, v5

    if-gtz v5, :cond_2

    iget v5, p0, Lcom/android/launcher2/Workspace;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v5, v1, v5

    if-lez v5, :cond_3

    .line 705
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->cancelCurrentPageLongPress()V

    .line 708
    :cond_3
    const v5, 0x3f860a92

    cmpl-float v5, v4, v5

    if-gtz v5, :cond_0

    .line 711
    cmpl-float v5, v4, v7

    if-lez v5, :cond_4

    .line 716
    sub-float/2addr v4, v7

    .line 717
    div-float v5, v4, v7

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v2, v5

    .line 719
    .local v2, "extraRatio":F
    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    invoke-super {p0, p1, v5}, Lcom/android/launcher2/SmoothPagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    goto :goto_0

    .line 722
    .end local v2    # "extraRatio":F
    :cond_4
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method disableBackground()V
    .locals 1

    .prologue
    .line 1128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mDrawBackground:Z

    .line 1129
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3444
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mSavedStates:Landroid/util/SparseArray;

    .line 3445
    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 642
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isFinishedSwitchingState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 644
    :cond_0
    const/4 v0, 0x0

    .line 646
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/SmoothPagedView;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method enableBackground()V
    .locals 1

    .prologue
    .line 1131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mDrawBackground:Z

    .line 1132
    return-void
.end method

.method enableChildrenCache(II)V
    .locals 6
    .param p1, "fromPage"    # I
    .param p2, "toPage"    # I

    .prologue
    const/4 v5, 0x1

    .line 1346
    if-le p1, p2, :cond_0

    .line 1347
    move v3, p1

    .line 1348
    .local v3, "temp":I
    move p1, p2

    .line 1349
    move p2, v3

    .line 1352
    .end local v3    # "temp":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    .line 1354
    .local v2, "screenCount":I
    const/4 v4, 0x0

    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1355
    add-int/lit8 v4, v2, -0x1

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1357
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-gt v0, p2, :cond_1

    .line 1358
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 1359
    .local v1, "layout":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v1, v5}, Lcom/android/launcher2/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1360
    invoke-virtual {v1, v5}, Lcom/android/launcher2/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    .line 1357
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1362
    .end local v1    # "layout":Lcom/android/launcher2/CellLayout;
    :cond_1
    return-void
.end method

.method public estimateItemPosition(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/ItemInfo;IIII)Landroid/graphics/Rect;
    .locals 6
    .param p1, "cl"    # Lcom/android/launcher2/CellLayout;
    .param p2, "pendingInfo"    # Lcom/android/launcher2/ItemInfo;
    .param p3, "hCell"    # I
    .param p4, "vCell"    # I
    .param p5, "hSpan"    # I
    .param p6, "vSpan"    # I

    .prologue
    .line 377
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .local v5, "r":Landroid/graphics/Rect;
    move-object v0, p1

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    .line 378
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    .line 379
    return-object v5
.end method

.method public estimateItemSize(IILcom/android/launcher2/ItemInfo;Z)[I
    .locals 10
    .param p1, "hSpan"    # I
    .param p2, "vSpan"    # I
    .param p3, "itemInfo"    # Lcom/android/launcher2/ItemInfo;
    .param p4, "springLoaded"    # Z

    .prologue
    const v2, 0x7fffffff

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 358
    const/4 v0, 0x2

    new-array v8, v0, [I

    .line 359
    .local v8, "size":[I
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .local v1, "cl":Lcom/android/launcher2/CellLayout;
    move-object v0, p0

    move-object v2, p3

    move v4, v3

    move v5, p1

    move v6, p2

    .line 361
    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/Workspace;->estimateItemPosition(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/ItemInfo;IIII)Landroid/graphics/Rect;

    move-result-object v7

    .line 362
    .local v7, "r":Landroid/graphics/Rect;
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v0

    aput v0, v8, v3

    .line 363
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v0

    aput v0, v8, v9

    .line 364
    if-eqz p4, :cond_0

    .line 365
    aget v0, v8, v3

    int-to-float v0, v0

    iget v2, p0, Lcom/android/launcher2/Workspace;->mSpringLoadedShrinkFactor:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    aput v0, v8, v3

    .line 366
    aget v0, v8, v9

    int-to-float v0, v0

    iget v2, p0, Lcom/android/launcher2/Workspace;->mSpringLoadedShrinkFactor:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    aput v0, v8, v9

    .line 372
    .end local v1    # "cl":Lcom/android/launcher2/CellLayout;
    .end local v7    # "r":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return-object v8

    .line 370
    :cond_1
    aput v2, v8, v3

    .line 371
    aput v2, v8, v9

    goto :goto_0
.end method

.method public exitWidgetResizeMode()V
    .locals 2

    .prologue
    .line 1535
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v0

    .line 1536
    .local v0, "dragLayer":Lcom/android/launcher2/DragLayer;
    invoke-virtual {v0}, Lcom/android/launcher2/DragLayer;->clearAllResizeFrames()V

    .line 1537
    return-void
.end method

.method getAllShortcutAndWidgetContainers()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ShortcutAndWidgetContainer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3576
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3578
    .local v0, "childrenLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutAndWidgetContainer;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    .line 3579
    .local v2, "screenCount":I
    const/4 v1, 0x0

    .local v1, "screen":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 3580
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3579
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3582
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3583
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3585
    :cond_1
    return-object v0
.end method

.method public getBackgroundAlpha()F
    .locals 1

    .prologue
    .line 1170
    iget v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundAlpha:F

    return v0
.end method

.method getChangeStateAnimation(Lcom/android/launcher2/Workspace$State;Z)Landroid/animation/Animator;
    .locals 1
    .param p1, "state"    # Lcom/android/launcher2/Workspace$State;
    .param p2, "animated"    # Z

    .prologue
    .line 1558
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/Workspace;->getChangeStateAnimation(Lcom/android/launcher2/Workspace$State;ZI)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method getChangeStateAnimation(Lcom/android/launcher2/Workspace$State;ZI)Landroid/animation/Animator;
    .locals 29
    .param p1, "state"    # Lcom/android/launcher2/Workspace$State;
    .param p2, "animated"    # Z
    .param p3, "delay"    # I

    .prologue
    .line 1562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_0

    .line 1563
    const/4 v5, 0x0

    .line 1712
    :goto_0
    return-object v5

    .line 1567
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->initAnimationArrays()V

    .line 1569
    if-eqz p2, :cond_6

    invoke-static {}, Lcom/android/launcher2/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v5

    .line 1572
    .local v5, "anim":Landroid/animation/AnimatorSet;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getNextPage()I

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    .line 1574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v16, v0

    .line 1575
    .local v16, "oldState":Lcom/android/launcher2/Workspace$State;
    sget-object v26, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_7

    const/16 v17, 0x1

    .line 1576
    .local v17, "oldStateIsNormal":Z
    :goto_2
    sget-object v26, Lcom/android/launcher2/Workspace$State;->SPRING_LOADED:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_8

    const/16 v19, 0x1

    .line 1577
    .local v19, "oldStateIsSpringLoaded":Z
    :goto_3
    sget-object v26, Lcom/android/launcher2/Workspace$State;->SMALL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_9

    const/16 v18, 0x1

    .line 1578
    .local v18, "oldStateIsSmall":Z
    :goto_4
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    .line 1579
    sget-object v26, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_a

    const/16 v20, 0x1

    .line 1580
    .local v20, "stateIsNormal":Z
    :goto_5
    sget-object v26, Lcom/android/launcher2/Workspace$State;->SPRING_LOADED:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_b

    const/16 v22, 0x1

    .line 1581
    .local v22, "stateIsSpringLoaded":Z
    :goto_6
    sget-object v26, Lcom/android/launcher2/Workspace$State;->SMALL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_c

    const/16 v21, 0x1

    .line 1582
    .local v21, "stateIsSmall":Z
    :goto_7
    const/high16 v12, 0x3f800000    # 1.0f

    .line 1583
    .local v12, "finalScaleFactor":F
    if-eqz v22, :cond_d

    const/high16 v11, 0x3f800000    # 1.0f

    .line 1584
    .local v11, "finalBackgroundAlpha":F
    :goto_8
    const/16 v23, 0x0

    .line 1585
    .local v23, "translationX":F
    const/16 v24, 0x0

    .line 1586
    .local v24, "translationY":F
    const/16 v25, 0x1

    .line 1588
    .local v25, "zoomIn":Z
    sget-object v26, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_10

    .line 1589
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mSpringLoadedShrinkFactor:F

    move/from16 v27, v0

    if-eqz v21, :cond_e

    const v26, 0x3dcccccd    # 0.1f

    :goto_9
    sub-float v12, v27, v26

    .line 1590
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mSpringLoadedPageSpacing:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setPageSpacing(I)V

    .line 1591
    if-eqz v17, :cond_f

    if-eqz v21, :cond_f

    .line 1592
    const/16 v25, 0x0

    .line 1593
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/Workspace;->setLayoutScale(F)V

    .line 1594
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 1604
    :goto_a
    if-eqz v25, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0a0002

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 1607
    .local v9, "duration":I
    :goto_b
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v26

    move/from16 v0, v26

    if-ge v13, v0, :cond_15

    .line 1608
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout;

    .line 1609
    .local v7, "cl":Lcom/android/launcher2/CellLayout;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1

    if-nez v22, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-ne v13, v0, :cond_12

    :cond_1
    const/high16 v10, 0x3f800000    # 1.0f

    .line 1611
    .local v10, "finalAlpha":F
    :goto_d
    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getAlpha()F

    move-result v8

    .line 1612
    .local v8, "currentAlpha":F
    move v15, v8

    .line 1615
    .local v15, "initialAlpha":F
    if-eqz v18, :cond_2

    if-nez v20, :cond_3

    :cond_2
    if-eqz v17, :cond_5

    if-eqz v21, :cond_5

    .line 1620
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-eq v13, v0, :cond_4

    if-eqz p2, :cond_4

    if-eqz v19, :cond_13

    .line 1621
    :cond_4
    const/high16 v10, 0x3f800000    # 1.0f

    .line 1628
    :cond_5
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mOldAlphas:[F

    move-object/from16 v26, v0

    aput v15, v26, v13

    .line 1629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewAlphas:[F

    move-object/from16 v26, v0

    aput v10, v26, v13

    .line 1630
    if-eqz p2, :cond_14

    .line 1631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mOldTranslationXs:[F

    move-object/from16 v26, v0

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getTranslationX()F

    move-result v27

    aput v27, v26, v13

    .line 1632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mOldTranslationYs:[F

    move-object/from16 v26, v0

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getTranslationY()F

    move-result v27

    aput v27, v26, v13

    .line 1633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mOldScaleXs:[F

    move-object/from16 v26, v0

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getScaleX()F

    move-result v27

    aput v27, v26, v13

    .line 1634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mOldScaleYs:[F

    move-object/from16 v26, v0

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getScaleY()F

    move-result v27

    aput v27, v26, v13

    .line 1635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mOldBackgroundAlphas:[F

    move-object/from16 v26, v0

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getBackgroundAlpha()F

    move-result v27

    aput v27, v26, v13

    .line 1637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewTranslationXs:[F

    move-object/from16 v26, v0

    aput v23, v26, v13

    .line 1638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewTranslationYs:[F

    move-object/from16 v26, v0

    aput v24, v26, v13

    .line 1639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewScaleXs:[F

    move-object/from16 v26, v0

    aput v12, v26, v13

    .line 1640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewScaleYs:[F

    move-object/from16 v26, v0

    aput v12, v26, v13

    .line 1641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewBackgroundAlphas:[F

    move-object/from16 v26, v0

    aput v11, v26, v13

    .line 1607
    :goto_f
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_c

    .line 1569
    .end local v5    # "anim":Landroid/animation/AnimatorSet;
    .end local v7    # "cl":Lcom/android/launcher2/CellLayout;
    .end local v8    # "currentAlpha":F
    .end local v9    # "duration":I
    .end local v10    # "finalAlpha":F
    .end local v11    # "finalBackgroundAlpha":F
    .end local v12    # "finalScaleFactor":F
    .end local v13    # "i":I
    .end local v15    # "initialAlpha":F
    .end local v16    # "oldState":Lcom/android/launcher2/Workspace$State;
    .end local v17    # "oldStateIsNormal":Z
    .end local v18    # "oldStateIsSmall":Z
    .end local v19    # "oldStateIsSpringLoaded":Z
    .end local v20    # "stateIsNormal":Z
    .end local v21    # "stateIsSmall":Z
    .end local v22    # "stateIsSpringLoaded":Z
    .end local v23    # "translationX":F
    .end local v24    # "translationY":F
    .end local v25    # "zoomIn":Z
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1575
    .restart local v5    # "anim":Landroid/animation/AnimatorSet;
    .restart local v16    # "oldState":Lcom/android/launcher2/Workspace$State;
    :cond_7
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 1576
    .restart local v17    # "oldStateIsNormal":Z
    :cond_8
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 1577
    .restart local v19    # "oldStateIsSpringLoaded":Z
    :cond_9
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 1579
    .restart local v18    # "oldStateIsSmall":Z
    :cond_a
    const/16 v20, 0x0

    goto/16 :goto_5

    .line 1580
    .restart local v20    # "stateIsNormal":Z
    :cond_b
    const/16 v22, 0x0

    goto/16 :goto_6

    .line 1581
    .restart local v22    # "stateIsSpringLoaded":Z
    :cond_c
    const/16 v21, 0x0

    goto/16 :goto_7

    .line 1583
    .restart local v12    # "finalScaleFactor":F
    .restart local v21    # "stateIsSmall":Z
    :cond_d
    const/4 v11, 0x0

    goto/16 :goto_8

    .line 1589
    .restart local v11    # "finalBackgroundAlpha":F
    .restart local v23    # "translationX":F
    .restart local v24    # "translationY":F
    .restart local v25    # "zoomIn":Z
    :cond_e
    const/16 v26, 0x0

    goto/16 :goto_9

    .line 1596
    :cond_f
    const/high16 v11, 0x3f800000    # 1.0f

    .line 1597
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/Workspace;->setLayoutScale(F)V

    goto/16 :goto_a

    .line 1600
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mOriginalPageSpacing:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setPageSpacing(I)V

    .line 1601
    const/high16 v26, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setLayoutScale(F)V

    goto/16 :goto_a

    .line 1604
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0a0009

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    goto/16 :goto_b

    .line 1609
    .restart local v7    # "cl":Lcom/android/launcher2/CellLayout;
    .restart local v9    # "duration":I
    .restart local v13    # "i":I
    :cond_12
    const/4 v10, 0x0

    goto/16 :goto_d

    .line 1623
    .restart local v8    # "currentAlpha":F
    .restart local v10    # "finalAlpha":F
    .restart local v15    # "initialAlpha":F
    :cond_13
    const/4 v15, 0x0

    .line 1624
    const/4 v10, 0x0

    goto/16 :goto_e

    .line 1643
    :cond_14
    move/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/android/launcher2/CellLayout;->setTranslationX(F)V

    .line 1644
    move/from16 v0, v24

    invoke-virtual {v7, v0}, Lcom/android/launcher2/CellLayout;->setTranslationY(F)V

    .line 1645
    invoke-virtual {v7, v12}, Lcom/android/launcher2/CellLayout;->setScaleX(F)V

    .line 1646
    invoke-virtual {v7, v12}, Lcom/android/launcher2/CellLayout;->setScaleY(F)V

    .line 1647
    invoke-virtual {v7, v11}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(F)V

    .line 1648
    invoke-virtual {v7, v10}, Lcom/android/launcher2/CellLayout;->setShortcutAndWidgetAlpha(F)V

    goto :goto_f

    .line 1652
    .end local v7    # "cl":Lcom/android/launcher2/CellLayout;
    .end local v8    # "currentAlpha":F
    .end local v10    # "finalAlpha":F
    .end local v15    # "initialAlpha":F
    :cond_15
    if-eqz p2, :cond_1c

    .line 1653
    const/4 v14, 0x0

    .local v14, "index":I
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v26

    move/from16 v0, v26

    if-ge v14, v0, :cond_1b

    .line 1654
    move v13, v14

    .line 1655
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout;

    .line 1656
    .restart local v7    # "cl":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getAlpha()F

    move-result v8

    .line 1657
    .restart local v8    # "currentAlpha":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mOldAlphas:[F

    move-object/from16 v26, v0

    aget v26, v26, v13

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-nez v26, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewAlphas:[F

    move-object/from16 v26, v0

    aget v26, v26, v13

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-nez v26, :cond_17

    .line 1658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewTranslationXs:[F

    move-object/from16 v26, v0

    aget v26, v26, v13

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Lcom/android/launcher2/CellLayout;->setTranslationX(F)V

    .line 1659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewTranslationYs:[F

    move-object/from16 v26, v0

    aget v26, v26, v13

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Lcom/android/launcher2/CellLayout;->setTranslationY(F)V

    .line 1660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewScaleXs:[F

    move-object/from16 v26, v0

    aget v26, v26, v13

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Lcom/android/launcher2/CellLayout;->setScaleX(F)V

    .line 1661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewScaleYs:[F

    move-object/from16 v26, v0

    aget v26, v26, v13

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Lcom/android/launcher2/CellLayout;->setScaleY(F)V

    .line 1662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewBackgroundAlphas:[F

    move-object/from16 v26, v0

    aget v26, v26, v13

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(F)V

    .line 1663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewAlphas:[F

    move-object/from16 v26, v0

    aget v26, v26, v13

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Lcom/android/launcher2/CellLayout;->setShortcutAndWidgetAlpha(F)V

    .line 1664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewRotationYs:[F

    move-object/from16 v26, v0

    aget v26, v26, v13

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Lcom/android/launcher2/CellLayout;->setRotationY(F)V

    .line 1653
    :cond_16
    :goto_11
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_10

    .line 1666
    :cond_17
    new-instance v3, Lcom/android/launcher2/LauncherViewPropertyAnimator;

    invoke-direct {v3, v7}, Lcom/android/launcher2/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 1667
    .local v3, "a":Lcom/android/launcher2/LauncherViewPropertyAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewTranslationXs:[F

    move-object/from16 v26, v0

    aget v26, v26, v13

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Lcom/android/launcher2/LauncherViewPropertyAnimator;->translationX(F)Lcom/android/launcher2/LauncherViewPropertyAnimator;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewTranslationYs:[F

    move-object/from16 v27, v0

    aget v27, v27, v13

    invoke-virtual/range {v26 .. v27}, Lcom/android/launcher2/LauncherViewPropertyAnimator;->translationY(F)Lcom/android/launcher2/LauncherViewPropertyAnimator;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewScaleXs:[F

    move-object/from16 v27, v0

    aget v27, v27, v13

    invoke-virtual/range {v26 .. v27}, Lcom/android/launcher2/LauncherViewPropertyAnimator;->scaleX(F)Lcom/android/launcher2/LauncherViewPropertyAnimator;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewScaleYs:[F

    move-object/from16 v27, v0

    aget v27, v27, v13

    invoke-virtual/range {v26 .. v27}, Lcom/android/launcher2/LauncherViewPropertyAnimator;->scaleY(F)Lcom/android/launcher2/LauncherViewPropertyAnimator;

    move-result-object v26

    int-to-long v0, v9

    move-wide/from16 v27, v0

    invoke-virtual/range {v26 .. v28}, Lcom/android/launcher2/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mZoomInInterpolator:Lcom/android/launcher2/Workspace$ZoomInInterpolator;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1673
    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mOldAlphas:[F

    move-object/from16 v26, v0

    aget v26, v26, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewAlphas:[F

    move-object/from16 v27, v0

    aget v27, v27, v13

    cmpl-float v26, v26, v27

    if-nez v26, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewAlphas:[F

    move-object/from16 v26, v0

    aget v26, v26, v13

    cmpl-float v26, v8, v26

    if-eqz v26, :cond_19

    .line 1676
    :cond_18
    new-instance v4, Lcom/android/launcher2/LauncherViewPropertyAnimator;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v4, v0}, Lcom/android/launcher2/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 1678
    .local v4, "alphaAnim":Lcom/android/launcher2/LauncherViewPropertyAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewAlphas:[F

    move-object/from16 v26, v0

    aget v26, v26, v13

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/android/launcher2/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher2/LauncherViewPropertyAnimator;

    move-result-object v26

    int-to-long v0, v9

    move-wide/from16 v27, v0

    invoke-virtual/range {v26 .. v28}, Lcom/android/launcher2/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mZoomInInterpolator:Lcom/android/launcher2/Workspace$ZoomInInterpolator;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1681
    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1683
    .end local v4    # "alphaAnim":Lcom/android/launcher2/LauncherViewPropertyAnimator;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mOldBackgroundAlphas:[F

    move-object/from16 v26, v0

    aget v26, v26, v13

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-nez v26, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewBackgroundAlphas:[F

    move-object/from16 v26, v0

    aget v26, v26, v13

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-eqz v26, :cond_16

    .line 1685
    :cond_1a
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    fill-array-data v26, :array_0

    invoke-static/range {v26 .. v26}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v26

    int-to-long v0, v9

    move-wide/from16 v27, v0

    invoke-virtual/range {v26 .. v28}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 1686
    .local v6, "bgAnim":Landroid/animation/ValueAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mZoomInInterpolator:Lcom/android/launcher2/Workspace$ZoomInInterpolator;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1687
    new-instance v26, Lcom/android/launcher2/Workspace$4;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7, v13}, Lcom/android/launcher2/Workspace$4;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/CellLayout;I)V

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1694
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_11

    .line 1698
    .end local v3    # "a":Lcom/android/launcher2/LauncherViewPropertyAnimator;
    .end local v6    # "bgAnim":Landroid/animation/ValueAnimator;
    .end local v7    # "cl":Lcom/android/launcher2/CellLayout;
    .end local v8    # "currentAlpha":F
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->buildPageHardwareLayers()V

    .line 1699
    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-virtual {v5, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 1702
    .end local v14    # "index":I
    :cond_1c
    if-eqz v22, :cond_1d

    .line 1706
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0a0001

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x42c80000    # 100.0f

    div-float v26, v26, v27

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/Workspace;->animateBackgroundGradient(FZ)V

    goto/16 :goto_0

    .line 1710
    :cond_1d
    const/16 v26, 0x0

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/Workspace;->animateBackgroundGradient(FZ)V

    goto/16 :goto_0

    .line 1685
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getChildrenOutlineAlpha()F
    .locals 1

    .prologue
    .line 1124
    iget v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineAlpha:F

    return v0
.end method

.method public getContent()Landroid/view/View;
    .locals 0

    .prologue
    .line 1749
    return-object p0
.end method

.method public getCurrentDropLayout()Lcom/android/launcher2/CellLayout;
    .locals 1

    .prologue
    .line 3324
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    return-object v0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 5

    .prologue
    .line 3810
    iget v1, p0, Lcom/android/launcher2/Workspace;->mNextPage:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v0, p0, Lcom/android/launcher2/Workspace;->mNextPage:I

    .line 3811
    .local v0, "page":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0049

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v4, v0, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3810
    .end local v0    # "page":I
    :cond_0
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    goto :goto_0
.end method

.method public getDescendantFocusability()I
    .locals 1

    .prologue
    .line 1323
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1324
    const/high16 v0, 0x60000

    .line 1326
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->getDescendantFocusability()I

    move-result v0

    goto :goto_0
.end method

.method public getDragInfo()Lcom/android/launcher2/CellLayout$CellInfo;
    .locals 1

    .prologue
    .line 3334
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    return-object v0
.end method

.method public getDropTargetDelegate(Lcom/android/launcher2/DropTarget$DragObject;)Lcom/android/launcher2/DropTarget;
    .locals 1
    .param p1, "d"    # Lcom/android/launcher2/DropTarget$DragObject;

    .prologue
    .line 2550
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFolderForTag(Ljava/lang/Object;)Lcom/android/launcher2/Folder;
    .locals 8
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 3589
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getAllShortcutAndWidgetContainers()Ljava/util/ArrayList;

    move-result-object v1

    .line 3591
    .local v1, "childrenLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutAndWidgetContainer;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/ShortcutAndWidgetContainer;

    .line 3592
    .local v6, "layout":Lcom/android/launcher2/ShortcutAndWidgetContainer;
    invoke-virtual {v6}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v2

    .line 3593
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 3594
    invoke-virtual {v6, v4}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3595
    .local v0, "child":Landroid/view/View;
    instance-of v7, v0, Lcom/android/launcher2/Folder;

    if-eqz v7, :cond_1

    move-object v3, v0

    .line 3596
    check-cast v3, Lcom/android/launcher2/Folder;

    .line 3597
    .local v3, "f":Lcom/android/launcher2/Folder;
    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderInfo;

    move-result-object v7

    if-ne v7, p1, :cond_1

    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderInfo;

    move-result-object v7

    iget-boolean v7, v7, Lcom/android/launcher2/FolderInfo;->opened:Z

    if-eqz v7, :cond_1

    .line 3603
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "count":I
    .end local v3    # "f":Lcom/android/launcher2/Folder;
    .end local v4    # "i":I
    .end local v6    # "layout":Lcom/android/launcher2/ShortcutAndWidgetContainer;
    :goto_1
    return-object v3

    .line 3593
    .restart local v0    # "child":Landroid/view/View;
    .restart local v2    # "count":I
    .restart local v4    # "i":I
    .restart local v6    # "layout":Lcom/android/launcher2/ShortcutAndWidgetContainer;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3603
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "count":I
    .end local v4    # "i":I
    .end local v6    # "layout":Lcom/android/launcher2/ShortcutAndWidgetContainer;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 2975
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 2976
    return-void
.end method

.method public getLocationInDragLayer([I)V
    .locals 1
    .param p1, "loc"    # [I

    .prologue
    .line 3816
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher2/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    .line 3817
    return-void
.end method

.method getOpenFolder()Lcom/android/launcher2/Folder;
    .locals 6

    .prologue
    .line 463
    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v2

    .line 464
    .local v2, "dragLayer":Lcom/android/launcher2/DragLayer;
    invoke-virtual {v2}, Lcom/android/launcher2/DragLayer;->getChildCount()I

    move-result v1

    .line 465
    .local v1, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 466
    invoke-virtual {v2, v4}, Lcom/android/launcher2/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 467
    .local v0, "child":Landroid/view/View;
    instance-of v5, v0, Lcom/android/launcher2/Folder;

    if-eqz v5, :cond_0

    move-object v3, v0

    .line 468
    check-cast v3, Lcom/android/launcher2/Folder;

    .line 469
    .local v3, "folder":Lcom/android/launcher2/Folder;
    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderInfo;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/launcher2/FolderInfo;->opened:Z

    if-eqz v5, :cond_0

    .line 473
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "folder":Lcom/android/launcher2/Folder;
    :goto_1
    return-object v3

    .line 465
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 473
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher2/CellLayout;
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3546
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;

    move-result-object v2

    .line 3547
    .local v2, "layouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/CellLayout;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 3548
    .local v1, "layout":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->indexOfChild(Landroid/view/View;)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    .line 3552
    .end local v1    # "layout":Lcom/android/launcher2/CellLayout;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getScrollMode()I
    .locals 1

    .prologue
    .line 433
    const/4 v0, 0x1

    return v0
.end method

.method public getViewForTag(Ljava/lang/Object;)Landroid/view/View;
    .locals 7
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 3607
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getAllShortcutAndWidgetContainers()Ljava/util/ArrayList;

    move-result-object v1

    .line 3609
    .local v1, "childrenLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutAndWidgetContainer;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/ShortcutAndWidgetContainer;

    .line 3610
    .local v5, "layout":Lcom/android/launcher2/ShortcutAndWidgetContainer;
    invoke-virtual {v5}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v2

    .line 3611
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 3612
    invoke-virtual {v5, v3}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3613
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p1, :cond_1

    .line 3618
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v5    # "layout":Lcom/android/launcher2/ShortcutAndWidgetContainer;
    :goto_1
    return-object v0

    .line 3611
    .restart local v0    # "child":Landroid/view/View;
    .restart local v2    # "count":I
    .restart local v3    # "i":I
    .restart local v5    # "layout":Lcom/android/launcher2/ShortcutAndWidgetContainer;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3618
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v5    # "layout":Lcom/android/launcher2/ShortcutAndWidgetContainer;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getViewLocationRelativeToSelf(Landroid/view/View;[I)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "location"    # [I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2369
    invoke-virtual {p0, p2}, Lcom/android/launcher2/Workspace;->getLocationInWindow([I)V

    .line 2370
    aget v2, p2, v5

    .line 2371
    .local v2, "x":I
    aget v3, p2, v6

    .line 2373
    .local v3, "y":I
    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2374
    aget v0, p2, v5

    .line 2375
    .local v0, "vX":I
    aget v1, p2, v6

    .line 2377
    .local v1, "vY":I
    sub-int v4, v0, v2

    aput v4, p2, v5

    .line 2378
    sub-int v4, v1, v3

    aput v4, p2, v6

    .line 2379
    return-void
.end method

.method getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/CellLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3559
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3560
    .local v0, "layouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/CellLayout;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    .line 3561
    .local v2, "screenCount":I
    const/4 v1, 0x0

    .local v1, "screen":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 3562
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3561
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3564
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3565
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3567
    :cond_1
    return-object v0
.end method

.method hideOutlines()V
    .locals 4

    .prologue
    .line 1099
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v0, :cond_2

    .line 1100
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1101
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1102
    :cond_1
    const-string v0, "childrenOutlineAlpha"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    .line 1103
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x177

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1104
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1105
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1107
    :cond_2
    return-void
.end method

.method protected hitsNextPage(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 609
    iget v1, p0, Lcom/android/launcher2/Workspace;->mNextPage:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    .line 613
    .local v0, "current":I
    :goto_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1, p1, p2}, Lcom/android/launcher2/Workspace;->hitsPage(IFF)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 609
    .end local v0    # "current":I
    :cond_0
    iget v0, p0, Lcom/android/launcher2/Workspace;->mNextPage:I

    goto :goto_0

    .line 613
    .restart local v0    # "current":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected hitsPreviousPage(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 598
    iget v1, p0, Lcom/android/launcher2/Workspace;->mNextPage:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    .line 602
    .local v0, "current":I
    :goto_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-direct {p0, v1, p1, p2}, Lcom/android/launcher2/Workspace;->hitsPage(IFF)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 598
    .end local v0    # "current":I
    :cond_0
    iget v0, p0, Lcom/android/launcher2/Workspace;->mNextPage:I

    goto :goto_0

    .line 602
    .restart local v0    # "current":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected initWorkspace()V
    .locals 7

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 407
    .local v1, "context":Landroid/content/Context;
    iget v4, p0, Lcom/android/launcher2/Workspace;->mDefaultPage:I

    iput v4, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    .line 408
    iget v4, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    invoke-static {v4}, Lcom/android/launcher2/Launcher;->setScreen(I)V

    .line 409
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    .line 410
    .local v0, "app":Lcom/android/launcher2/LauncherApplication;
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getIconCache()Lcom/android/launcher2/IconCache;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mIconCache:Lcom/android/launcher2/IconCache;

    .line 411
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->setWillNotDraw(Z)V

    .line 412
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 414
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 416
    .local v3, "res":Landroid/content/res/Resources;
    const v4, 0x7f020001

    :try_start_0
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :goto_0
    new-instance v4, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-direct {v4, p0}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;-><init>(Lcom/android/launcher2/Workspace;)V

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    .line 422
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 423
    .local v2, "display":Landroid/view/Display;
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v2, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 424
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mDisplaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mDisplaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mDisplaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v5, v6}, Lcom/android/launcher2/Workspace;->wallpaperTravelToScreenWidthRatio(II)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/android/launcher2/Workspace;->mWallpaperTravelWidth:I

    .line 427
    const v4, 0x3f0ccccd    # 0.55f

    const v5, 0x7f0b0022

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/android/launcher2/Workspace;->mMaxDistanceForFolderCreation:F

    .line 428
    const/high16 v4, 0x43fa0000    # 500.0f

    iget v5, p0, Lcom/android/launcher2/Workspace;->mDensity:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/android/launcher2/Workspace;->mFlingThresholdVelocity:I

    .line 429
    return-void

    .line 417
    .end local v2    # "display":Landroid/view/Display;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method isDrawingBackgroundGradient()Z
    .locals 2

    .prologue
    .line 1305
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mDrawBackground:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDropEnabled()Z
    .locals 1

    .prologue
    .line 3430
    const/4 v0, 0x1

    return v0
.end method

.method public isFinishedSwitchingState()Z
    .locals 2

    .prologue
    .line 633
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/Workspace;->mTransitionProgress:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSmall()Z
    .locals 2

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v1, Lcom/android/launcher2/Workspace$State;->SMALL:Lcom/android/launcher2/Workspace$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v1, Lcom/android/launcher2/Workspace$State;->SPRING_LOADED:Lcom/android/launcher2/Workspace$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSwitchingState()Z
    .locals 1

    .prologue
    .line 627
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    return v0
.end method

.method isTouchActive()Z
    .locals 1

    .prologue
    .line 477
    iget v0, p0, Lcom/android/launcher2/Workspace;->mTouchState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method mapPointFromChildToSelf(Landroid/view/View;[F)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "xy"    # [F

    .prologue
    .line 2602
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2603
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v0

    .line 2604
    .local v0, "scrollX":I
    iget v1, p0, Lcom/android/launcher2/Workspace;->mNextPage:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2605
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    .line 2607
    :cond_0
    const/4 v1, 0x0

    aget v2, p2, v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v3, v0, v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    aput v2, p2, v1

    .line 2608
    const/4 v1, 0x1

    aget v2, p2, v1

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScrollY()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v2, v3

    aput v2, p2, v1

    .line 2609
    return-void
.end method

.method mapPointFromSelfToChild(Landroid/view/View;[F)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "xy"    # [F

    .prologue
    .line 2560
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    .line 2561
    return-void
.end method

.method mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "xy"    # [F
    .param p3, "cachedInverseMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2574
    if-nez p3, :cond_0

    .line 2575
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 2576
    iget-object p3, p0, Lcom/android/launcher2/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    .line 2578
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v0

    .line 2579
    .local v0, "scrollX":I
    iget v1, p0, Lcom/android/launcher2/Workspace;->mNextPage:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 2580
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    .line 2582
    :cond_1
    aget v1, p2, v3

    int-to-float v2, v0

    add-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    aput v1, p2, v3

    .line 2583
    aget v1, p2, v4

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    aput v1, p2, v4

    .line 2584
    invoke-virtual {p3, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2585
    return-void
.end method

.method mapPointFromSelfToHotseatLayout(Lcom/android/launcher2/Hotseat;[F)V
    .locals 4
    .param p1, "hotseat"    # Lcom/android/launcher2/Hotseat;
    .param p2, "xy"    # [F

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2589
    invoke-virtual {p1}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 2590
    aget v0, p2, v2

    invoke-virtual {p1}, Lcom/android/launcher2/Hotseat;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p2, v2

    .line 2591
    aget v0, p2, v3

    invoke-virtual {p1}, Lcom/android/launcher2/Hotseat;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p2, v3

    .line 2592
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2593
    return-void
.end method

.method moveToDefaultScreen(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 3790
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3791
    if-eqz p1, :cond_1

    .line 3792
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDefaultPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 3797
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDefaultPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 3798
    return-void

    .line 3794
    :cond_1
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDefaultPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    goto :goto_0
.end method

.method protected notifyPageSwitchListener()V
    .locals 1

    .prologue
    .line 802
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->notifyPageSwitchListener()V

    .line 803
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->setScreen(I)V

    .line 804
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1267
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onAttachedToWindow()V

    .line 1268
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    .line 1269
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->computeScroll()V

    .line 1270
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragController;->setWindowToken(Landroid/os/IBinder;)V

    .line 1271
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 6
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 438
    instance-of v1, p2, Lcom/android/launcher2/CellLayout;

    if-nez v1, :cond_0

    .line 439
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "A Workspace can only have CellLayout children."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p2

    .line 441
    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 442
    .local v0, "cl":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0, p0}, Lcom/android/launcher2/CellLayout;->setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 443
    invoke-virtual {v0, v3}, Lcom/android/launcher2/CellLayout;->setClickable(Z)V

    .line 444
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0047

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 446
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 450
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    .line 1275
    return-void
.end method

.method public onDragEnd()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 393
    iput-boolean v1, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    .line 394
    invoke-direct {p0, v1}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 395
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->unlockScreenOrientation(Z)V

    .line 398
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/InstallShortcutReceiver;->disableAndFlushInstallQueue(Landroid/content/Context;)V

    .line 399
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/UninstallShortcutReceiver;->disableAndFlushUninstallQueue(Landroid/content/Context;)V

    .line 400
    return-void
.end method

.method public onDragEnter(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 3
    .param p1, "d"    # Lcom/android/launcher2/DropTarget$DragObject;

    .prologue
    const/4 v2, 0x0

    .line 2382
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragEnforcer:Lcom/android/launcher2/DropTarget$DragEnforcer;

    invoke-virtual {v1}, Lcom/android/launcher2/DropTarget$DragEnforcer;->onDragEnter()V

    .line 2383
    iput-boolean v2, p0, Lcom/android/launcher2/Workspace;->mCreateUserFolderOnDrop:Z

    .line 2384
    iput-boolean v2, p0, Lcom/android/launcher2/Workspace;->mAddToExistingFolderOnDrop:Z

    .line 2386
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mDropToLayout:Lcom/android/launcher2/CellLayout;

    .line 2387
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentDropLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    .line 2388
    .local v0, "layout":Lcom/android/launcher2/CellLayout;
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setCurrentDropLayout(Lcom/android/launcher2/CellLayout;)V

    .line 2389
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher2/CellLayout;)V

    .line 2393
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2394
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->showOutlines()V

    .line 2396
    :cond_0
    return-void
.end method

.method public onDragExit(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 4
    .param p1, "d"    # Lcom/android/launcher2/DropTarget$DragObject;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2437
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragEnforcer:Lcom/android/launcher2/DropTarget$DragEnforcer;

    invoke-virtual {v0}, Lcom/android/launcher2/DropTarget$DragEnforcer;->onDragExit()V

    .line 2441
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    if-eqz v0, :cond_3

    .line 2442
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isPageMoving()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2445
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mDropToLayout:Lcom/android/launcher2/CellLayout;

    .line 2453
    :goto_0
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDragMode:I

    if-ne v0, v2, :cond_4

    .line 2454
    iput-boolean v2, p0, Lcom/android/launcher2/Workspace;->mCreateUserFolderOnDrop:Z

    .line 2460
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->onResetScrollArea()V

    .line 2461
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->setCurrentDropLayout(Lcom/android/launcher2/CellLayout;)V

    .line 2462
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher2/CellLayout;)V

    .line 2464
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mSpringLoadedDragController:Lcom/android/launcher2/SpringLoadedDragController;

    invoke-virtual {v0}, Lcom/android/launcher2/SpringLoadedDragController;->cancel()V

    .line 2466
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsPageMoving:Z

    if-nez v0, :cond_1

    .line 2467
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->hideOutlines()V

    .line 2469
    :cond_1
    return-void

    .line 2447
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOverlappingLayout:Lcom/android/launcher2/CellLayout;

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mDropToLayout:Lcom/android/launcher2/CellLayout;

    goto :goto_0

    .line 2450
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mDropToLayout:Lcom/android/launcher2/CellLayout;

    goto :goto_0

    .line 2455
    :cond_4
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDragMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2456
    iput-boolean v2, p0, Lcom/android/launcher2/Workspace;->mAddToExistingFolderOnDrop:Z

    goto :goto_1
.end method

.method public onDragOver(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 30
    .param p1, "d"    # Lcom/android/launcher2/DropTarget$DragObject;

    .prologue
    .line 2752
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v3, Lcom/android/launcher2/Workspace$State;->SMALL:Lcom/android/launcher2/Workspace$State;

    if-ne v2, v3, :cond_1

    .line 2867
    :cond_0
    :goto_0
    return-void

    .line 2754
    :cond_1
    new-instance v29, Landroid/graphics/Rect;

    invoke-direct/range {v29 .. v29}, Landroid/graphics/Rect;-><init>()V

    .line 2755
    .local v29, "r":Landroid/graphics/Rect;
    const/16 v27, 0x0

    .line 2756
    .local v27, "layout":Lcom/android/launcher2/CellLayout;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/launcher2/ItemInfo;

    .line 2759
    .local v26, "item":Lcom/android/launcher2/ItemInfo;
    move-object/from16 v0, v26

    iget v2, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    if-ltz v2, :cond_2

    move-object/from16 v0, v26

    iget v2, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    if-gez v2, :cond_3

    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Improper spans found"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2760
    :cond_3
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher2/DropTarget$DragObject;->xOffset:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/launcher2/DropTarget$DragObject;->yOffset:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher2/Workspace;->getDragViewVisualCenter(IIIILcom/android/launcher2/DragView;[F)[F

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    .line 2763
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-nez v2, :cond_a

    const/4 v13, 0x0

    .line 2765
    .local v13, "child":Landroid/view/View;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2766
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/Workspace;->isExternalDragWidget(Lcom/android/launcher2/DropTarget$DragObject;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2767
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/android/launcher2/Hotseat;->getHitRect(Landroid/graphics/Rect;)V

    .line 2768
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2769
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v27

    .line 2772
    :cond_4
    if-nez v27, :cond_5

    .line 2773
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    int-to-float v3, v3

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    int-to-float v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/launcher2/Workspace;->findMatchingPageForDragOver(Lcom/android/launcher2/DragView;FFZ)Lcom/android/launcher2/CellLayout;

    move-result-object v27

    .line 2775
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, v27

    if-eq v0, v2, :cond_6

    .line 2777
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setCurrentDropLayout(Lcom/android/launcher2/CellLayout;)V

    .line 2778
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher2/CellLayout;)V

    .line 2780
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v3, Lcom/android/launcher2/Workspace$State;->SPRING_LOADED:Lcom/android/launcher2/Workspace$State;

    if-ne v2, v3, :cond_b

    const/16 v25, 0x1

    .line 2781
    .local v25, "isInSpringLoadedMode":Z
    :goto_2
    if-eqz v25, :cond_6

    .line 2782
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2783
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mSpringLoadedDragController:Lcom/android/launcher2/SpringLoadedDragController;

    invoke-virtual {v2}, Lcom/android/launcher2/SpringLoadedDragController;->cancel()V

    .line 2807
    .end local v25    # "isInSpringLoadedMode":Z
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v2, :cond_0

    .line 2809
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2810
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToHotseatLayout(Lcom/android/launcher2/Hotseat;[F)V

    .line 2815
    :goto_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Lcom/android/launcher2/ItemInfo;

    .line 2817
    .local v24, "info":Lcom/android/launcher2/ItemInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-int v3, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v4, 0x1

    aget v2, v2, v4

    float-to-int v4, v2

    move-object/from16 v0, v26

    iget v5, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    move-object/from16 v0, v26

    iget v6, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher2/Workspace;->findNearestArea(IIIILcom/android/launcher2/CellLayout;[I)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 2821
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher2/Workspace;->setCurrentDropOverCell(II)V

    .line 2823
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/launcher2/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v6

    .line 2826
    .local v6, "targetCellDistance":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v7

    .line 2829
    .local v7, "dragOverView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v2, p0

    move-object/from16 v3, v24

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher2/Workspace;->manageFolderFeedback(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;[IFLandroid/view/View;)V

    .line 2832
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    move/from16 v17, v0

    .line 2833
    .local v17, "minSpanX":I
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    move/from16 v18, v0

    .line 2834
    .local v18, "minSpanY":I
    move-object/from16 v0, v26

    iget v2, v0, Lcom/android/launcher2/ItemInfo;->minSpanX:I

    if-lez v2, :cond_7

    move-object/from16 v0, v26

    iget v2, v0, Lcom/android/launcher2/ItemInfo;->minSpanY:I

    if-lez v2, :cond_7

    .line 2835
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->minSpanX:I

    move/from16 v17, v0

    .line 2836
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->minSpanY:I

    move/from16 v18, v0

    .line 2839
    :cond_7
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-int v9, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    float-to-int v10, v2

    move-object/from16 v0, v26

    iget v11, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    move-object/from16 v0, v26

    iget v12, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    invoke-virtual/range {v8 .. v14}, Lcom/android/launcher2/CellLayout;->isNearestDropLocationOccupied(IIIILandroid/view/View;[I)Z

    move-result v28

    .line 2843
    .local v28, "nearestDropOccupied":Z
    if-nez v28, :cond_11

    .line 2844
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-int v15, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    float-to-int v0, v2

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v3, 0x0

    aget v17, v2, v3

    .end local v17    # "minSpanX":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v3, 0x1

    aget v18, v2, v3

    .end local v18    # "minSpanY":I
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    move/from16 v19, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    move/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v2}, Lcom/android/launcher2/DragView;->getDragVisualizeOffset()Landroid/graphics/Point;

    move-result-object v22

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v2}, Lcom/android/launcher2/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v23

    invoke-virtual/range {v12 .. v23}, Lcom/android/launcher2/CellLayout;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;IIIIIIZLandroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 2860
    :cond_8
    :goto_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/Workspace;->mDragMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/Workspace;->mDragMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_9

    if-nez v28, :cond_0

    .line 2862
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v2, :cond_0

    .line 2863
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->revertTempState()V

    goto/16 :goto_0

    .line 2763
    .end local v6    # "targetCellDistance":F
    .end local v7    # "dragOverView":Landroid/view/View;
    .end local v13    # "child":Landroid/view/View;
    .end local v24    # "info":Lcom/android/launcher2/ItemInfo;
    .end local v28    # "nearestDropOccupied":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v13, v2, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    goto/16 :goto_1

    .line 2780
    .restart local v13    # "child":Landroid/view/View;
    :cond_b
    const/16 v25, 0x0

    goto/16 :goto_2

    .line 2785
    .restart local v25    # "isInSpringLoadedMode":Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mSpringLoadedDragController:Lcom/android/launcher2/SpringLoadedDragController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/SpringLoadedDragController;->setAlarm(Lcom/android/launcher2/CellLayout;)V

    goto/16 :goto_3

    .line 2791
    .end local v25    # "isInSpringLoadedMode":Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/Workspace;->isDragWidget(Lcom/android/launcher2/DropTarget$DragObject;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 2792
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/android/launcher2/Hotseat;->getHitRect(Landroid/graphics/Rect;)V

    .line 2793
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2794
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v27

    .line 2797
    :cond_e
    if-nez v27, :cond_f

    .line 2798
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getCurrentDropLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v27

    .line 2800
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, v27

    if-eq v0, v2, :cond_6

    .line 2801
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setCurrentDropLayout(Lcom/android/launcher2/CellLayout;)V

    .line 2802
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher2/CellLayout;)V

    goto/16 :goto_3

    .line 2812
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    goto/16 :goto_4

    .line 2848
    .restart local v6    # "targetCellDistance":F
    .restart local v7    # "dragOverView":Landroid/view/View;
    .restart local v17    # "minSpanX":I
    .restart local v18    # "minSpanY":I
    .restart local v24    # "info":Lcom/android/launcher2/ItemInfo;
    .restart local v28    # "nearestDropOccupied":Z
    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/Workspace;->mDragMode:I

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/Workspace;->mDragMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_8

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v2}, Lcom/android/launcher2/Alarm;->alarmPending()Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/Workspace;->mLastReorderX:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    if-ne v2, v3, :cond_13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/Workspace;->mLastReorderY:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    if-eq v2, v3, :cond_8

    .line 2854
    :cond_13
    new-instance v14, Lcom/android/launcher2/Workspace$ReorderAlarmListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v16, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    move/from16 v19, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    move-object/from16 v21, v0

    move-object/from16 v15, p0

    move-object/from16 v22, v13

    invoke-direct/range {v14 .. v22}, Lcom/android/launcher2/Workspace$ReorderAlarmListener;-><init>(Lcom/android/launcher2/Workspace;[FIIIILcom/android/launcher2/DragView;Landroid/view/View;)V

    .line 2856
    .local v14, "listener":Lcom/android/launcher2/Workspace$ReorderAlarmListener;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v2, v14}, Lcom/android/launcher2/Alarm;->setOnAlarmListener(Lcom/android/launcher2/OnAlarmListener;)V

    .line 2857
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    goto/16 :goto_5
.end method

.method public onDragStart(Lcom/android/launcher2/DragSource;Ljava/lang/Object;I)V
    .locals 1
    .param p1, "source"    # Lcom/android/launcher2/DragSource;
    .param p2, "info"    # Ljava/lang/Object;
    .param p3, "dragAction"    # I

    .prologue
    .line 383
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    .line 384
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 385
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->lockScreenOrientation()V

    .line 386
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/android/launcher2/Workspace;->setChildrenBackgroundAlphaMultipliers(F)V

    .line 388
    invoke-static {}, Lcom/android/launcher2/InstallShortcutReceiver;->enableInstallQueue()V

    .line 389
    invoke-static {}, Lcom/android/launcher2/UninstallShortcutReceiver;->enableUninstallQueue()V

    .line 390
    return-void
.end method

.method public onDragStartedWithItem(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1518
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 1521
    .local v0, "canvas":Landroid/graphics/Canvas;
    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/Workspace;->createDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 1522
    return-void
.end method

.method public onDragStartedWithItem(Lcom/android/launcher2/PendingAddItemInfo;Landroid/graphics/Bitmap;Z)V
    .locals 8
    .param p1, "info"    # Lcom/android/launcher2/PendingAddItemInfo;
    .param p2, "b"    # Landroid/graphics/Bitmap;
    .param p3, "clipAlpha"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1525
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 1527
    .local v2, "canvas":Landroid/graphics/Canvas;
    iget v0, p1, Lcom/android/launcher2/PendingAddItemInfo;->spanX:I

    iget v1, p1, Lcom/android/launcher2/PendingAddItemInfo;->spanY:I

    invoke-virtual {p0, v0, v1, p1, v4}, Lcom/android/launcher2/Workspace;->estimateItemSize(IILcom/android/launcher2/ItemInfo;Z)[I

    move-result-object v7

    .line 1530
    .local v7, "size":[I
    const/4 v3, 0x2

    aget v4, v7, v4

    const/4 v0, 0x1

    aget v5, v7, v0

    move-object v0, p0

    move-object v1, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/Workspace;->createDragOutline(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 1532
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1287
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->updateWallpaperOffsets()V

    .line 1290
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/Workspace;->mBackgroundAlpha:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mDrawBackground:Z

    if-eqz v1, :cond_0

    .line 1291
    iget v1, p0, Lcom/android/launcher2/Workspace;->mBackgroundAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 1292
    .local v0, "alpha":I
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1293
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1295
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1298
    .end local v0    # "alpha":I
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1301
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBindPages:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 1302
    return-void
.end method

.method public onDrop(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 64
    .param p1, "d"    # Lcom/android/launcher2/DropTarget$DragObject;

    .prologue
    .line 2164
    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/launcher2/DropTarget$DragObject;->xOffset:I

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/launcher2/DropTarget$DragObject;->yOffset:I

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/launcher2/Workspace;->getDragViewVisualCenter(IIIILcom/android/launcher2/DragView;[F)[F

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    .line 2167
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/Workspace;->mDropToLayout:Lcom/android/launcher2/CellLayout;

    .line 2170
    .local v8, "dropTargetLayout":Lcom/android/launcher2/CellLayout;
    if-eqz v8, :cond_0

    .line 2171
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v5, v8}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2172
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToHotseatLayout(Lcom/android/launcher2/Hotseat;[F)V

    .line 2178
    :cond_0
    :goto_0
    const/16 v63, -0x1

    .line 2179
    .local v63, "snapScreen":I
    const/16 v61, 0x0

    .line 2180
    .local v61, "resizeOnDrop":Z
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    move-object/from16 v0, p0

    if-eq v5, v0, :cond_3

    .line 2181
    const/4 v5, 0x2

    new-array v6, v5, [I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v9, 0x0

    aget v7, v7, v9

    float-to-int v7, v7

    aput v7, v6, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v9, 0x1

    aget v7, v7, v9

    float-to-int v7, v7

    aput v7, v6, v5

    .line 2183
    .local v6, "touchXY":[I
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v5, p0

    move-object/from16 v10, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher2/Workspace;->onDropExternal([ILjava/lang/Object;Lcom/android/launcher2/CellLayout;ZLcom/android/launcher2/DropTarget$DragObject;)V

    .line 2344
    .end local v6    # "touchXY":[I
    :cond_1
    :goto_1
    return-void

    .line 2174
    .end local v61    # "resizeOnDrop":Z
    .end local v63    # "snapScreen":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v5, v7}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    goto :goto_0

    .line 2184
    .restart local v61    # "resizeOnDrop":Z
    .restart local v63    # "snapScreen":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v5, :cond_1

    .line 2185
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v0, v5, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object/from16 v28, v0

    .line 2187
    .local v28, "cell":Landroid/view/View;
    const/16 v62, 0x0

    .line 2188
    .local v62, "resizeRunnable":Ljava/lang/Runnable;
    if-eqz v8, :cond_b

    .line 2190
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher2/CellLayout;

    move-result-object v5

    if-eq v5, v8, :cond_c

    const/16 v54, 0x1

    .line 2191
    .local v54, "hasMovedLayouts":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v5, v8}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v53

    .line 2192
    .local v53, "hasMovedIntoHotseat":Z
    if-eqz v53, :cond_d

    const-wide/16 v16, -0x65

    .line 2195
    .local v16, "container":J
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v7, 0x0

    aget v5, v5, v7

    if-gez v5, :cond_e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v0, v5, Lcom/android/launcher2/CellLayout$CellInfo;->screen:I

    move/from16 v35, v0

    .line 2197
    .local v35, "screen":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v5, :cond_f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v12, v5, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    .line 2198
    .local v12, "spanX":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v5, :cond_10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v13, v5, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    .line 2202
    .local v13, "spanY":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v7, 0x0

    aget v5, v5, v7

    float-to-int v10, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v7, 0x1

    aget v5, v5, v7

    float-to-int v11, v5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v9, p0

    move-object v14, v8

    invoke-direct/range {v9 .. v15}, Lcom/android/launcher2/Workspace;->findNearestArea(IIIILcom/android/launcher2/CellLayout;[I)[I

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 2204
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v7, 0x0

    aget v5, v5, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v9, 0x1

    aget v7, v7, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    invoke-virtual {v8, v5, v7, v9}, Lcom/android/launcher2/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v20

    .line 2209
    .local v20, "distance":F
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    if-nez v5, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v14, p0

    move-object/from16 v15, v28

    move-object/from16 v18, v8

    invoke-virtual/range {v14 .. v23}, Lcom/android/launcher2/Workspace;->createUserFolderIfNecessary(Landroid/view/View;JLcom/android/launcher2/CellLayout;[IFZLcom/android/launcher2/DragView;Ljava/lang/Runnable;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2214
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v24, v0

    const/16 v27, 0x0

    move-object/from16 v21, p0

    move-object/from16 v22, v28

    move-object/from16 v23, v8

    move/from16 v25, v20

    move-object/from16 v26, p1

    invoke-virtual/range {v21 .. v27}, Lcom/android/launcher2/Workspace;->addToExistingFolderIfNecessary(Landroid/view/View;Lcom/android/launcher2/CellLayout;[IFLcom/android/launcher2/DropTarget$DragObject;Z)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2221
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v57, v0

    check-cast v57, Lcom/android/launcher2/ItemInfo;

    .line 2222
    .local v57, "item":Lcom/android/launcher2/ItemInfo;
    move-object/from16 v0, v57

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    move/from16 v24, v0

    .line 2223
    .local v24, "minSpanX":I
    move-object/from16 v0, v57

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    move/from16 v25, v0

    .line 2224
    .local v25, "minSpanY":I
    move-object/from16 v0, v57

    iget v5, v0, Lcom/android/launcher2/ItemInfo;->minSpanX:I

    if-lez v5, :cond_5

    move-object/from16 v0, v57

    iget v5, v0, Lcom/android/launcher2/ItemInfo;->minSpanY:I

    if-lez v5, :cond_5

    .line 2225
    move-object/from16 v0, v57

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->minSpanX:I

    move/from16 v24, v0

    .line 2226
    move-object/from16 v0, v57

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->minSpanY:I

    move/from16 v25, v0

    .line 2229
    :cond_5
    const/4 v5, 0x2

    new-array v0, v5, [I

    move-object/from16 v30, v0

    .line 2230
    .local v30, "resultSpan":[I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v7, 0x0

    aget v5, v5, v7

    float-to-int v0, v5

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v7, 0x1

    aget v5, v5, v7

    float-to-int v0, v5

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v29, v0

    const/16 v31, 0x1

    move-object/from16 v21, v8

    move/from16 v26, v12

    move/from16 v27, v13

    invoke-virtual/range {v21 .. v31}, Lcom/android/launcher2/CellLayout;->createArea(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 2234
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v7, 0x0

    aget v5, v5, v7

    if-ltz v5, :cond_11

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v7, 0x1

    aget v5, v5, v7

    if-ltz v5, :cond_11

    const/16 v52, 0x1

    .line 2237
    .local v52, "foundCell":Z
    :goto_7
    if-eqz v52, :cond_7

    move-object/from16 v0, v28

    instance-of v5, v0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v5, :cond_7

    const/4 v5, 0x0

    aget v5, v30, v5

    move-object/from16 v0, v57

    iget v7, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    if-ne v5, v7, :cond_6

    const/4 v5, 0x1

    aget v5, v30, v5

    move-object/from16 v0, v57

    iget v7, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    if-eq v5, v7, :cond_7

    .line 2239
    :cond_6
    const/16 v61, 0x1

    .line 2240
    const/4 v5, 0x0

    aget v5, v30, v5

    move-object/from16 v0, v57

    iput v5, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 2241
    const/4 v5, 0x1

    aget v5, v30, v5

    move-object/from16 v0, v57

    iput v5, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    move-object/from16 v49, v28

    .line 2242
    check-cast v49, Landroid/appwidget/AppWidgetHostView;

    .line 2243
    .local v49, "awhv":Landroid/appwidget/AppWidgetHostView;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    const/4 v7, 0x0

    aget v7, v30, v7

    const/4 v9, 0x1

    aget v9, v30, v9

    move-object/from16 v0, v49

    invoke-static {v0, v5, v7, v9}, Lcom/android/launcher2/AppWidgetResizeFrame;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher2/Launcher;II)V

    .line 2247
    .end local v49    # "awhv":Landroid/appwidget/AppWidgetHostView;
    :cond_7
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    move/from16 v0, v35

    if-eq v5, v0, :cond_8

    if-nez v53, :cond_8

    .line 2248
    move/from16 v63, v35

    .line 2249
    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 2252
    :cond_8
    if-eqz v52, :cond_12

    .line 2253
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Lcom/android/launcher2/ItemInfo;

    .line 2254
    .local v56, "info":Lcom/android/launcher2/ItemInfo;
    if-eqz v54, :cond_9

    .line 2256
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher2/CellLayout;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Lcom/android/launcher2/CellLayout;->removeView(Landroid/view/View;)V

    .line 2257
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v7, 0x0

    aget v36, v5, v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v7, 0x1

    aget v37, v5, v7

    move-object/from16 v0, v56

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    move/from16 v38, v0

    move-object/from16 v0, v56

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    move/from16 v39, v0

    move-object/from16 v31, p0

    move-object/from16 v32, v28

    move-wide/from16 v33, v16

    invoke-virtual/range {v31 .. v39}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIII)V

    .line 2262
    :cond_9
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v59

    check-cast v59, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 2263
    .local v59, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v7, 0x0

    aget v5, v5, v7

    move-object/from16 v0, v59

    iput v5, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellX:I

    move-object/from16 v0, v59

    iput v5, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 2264
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v7, 0x1

    aget v5, v5, v7

    move-object/from16 v0, v59

    iput v5, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    move-object/from16 v0, v59

    iput v5, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 2265
    move-object/from16 v0, v57

    iget v5, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    move-object/from16 v0, v59

    iput v5, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 2266
    move-object/from16 v0, v57

    iget v5, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    move-object/from16 v0, v59

    iput v5, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 2267
    const/4 v5, 0x1

    move-object/from16 v0, v59

    iput-boolean v5, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 2268
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v0, v5, Lcom/android/launcher2/CellLayout$CellInfo;->screen:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v7, 0x0

    aget v39, v5, v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v7, 0x1

    aget v40, v5, v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v0, v5, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    move/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v0, v5, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    move/from16 v42, v0

    move-wide/from16 v36, v16

    invoke-static/range {v36 .. v42}, Lcom/android/launcher2/LauncherModel;->getCellLayoutChildId(JIIIII)I

    move-result v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/view/View;->setId(I)V

    .line 2271
    const-wide/16 v9, -0x65

    cmp-long v5, v16, v9

    if-eqz v5, :cond_a

    move-object/from16 v0, v28

    instance-of v5, v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v5, :cond_a

    .line 2273
    move-object/from16 v50, v8

    .local v50, "cellLayout":Lcom/android/launcher2/CellLayout;
    move-object/from16 v55, v28

    .line 2277
    check-cast v55, Lcom/android/launcher2/LauncherAppWidgetHostView;

    .line 2278
    .local v55, "hostView":Lcom/android/launcher2/LauncherAppWidgetHostView;
    invoke-virtual/range {v55 .. v55}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v60

    .line 2279
    .local v60, "pinfo":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v60, :cond_a

    move-object/from16 v0, v60

    iget v5, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    if-eqz v5, :cond_a

    .line 2281
    new-instance v48, Lcom/android/launcher2/Workspace$5;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, v56

    move-object/from16 v3, v55

    move-object/from16 v4, v50

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher2/Workspace$5;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/CellLayout;)V

    .line 2287
    .local v48, "addResizeFrame":Ljava/lang/Runnable;
    new-instance v62, Lcom/android/launcher2/Workspace$6;

    .end local v62    # "resizeRunnable":Ljava/lang/Runnable;
    move-object/from16 v0, v62

    move-object/from16 v1, p0

    move-object/from16 v2, v48

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/Workspace$6;-><init>(Lcom/android/launcher2/Workspace;Ljava/lang/Runnable;)V

    .line 2299
    .end local v48    # "addResizeFrame":Ljava/lang/Runnable;
    .end local v50    # "cellLayout":Lcom/android/launcher2/CellLayout;
    .end local v55    # "hostView":Lcom/android/launcher2/LauncherAppWidgetHostView;
    .end local v60    # "pinfo":Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v62    # "resizeRunnable":Ljava/lang/Runnable;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v31, v0

    move-object/from16 v0, v59

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    move/from16 v36, v0

    move-object/from16 v0, v59

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    move/from16 v37, v0

    move-object/from16 v32, v56

    move-wide/from16 v33, v16

    invoke-static/range {v31 .. v37}, Lcom/android/launcher2/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIII)V

    .line 2311
    .end local v12    # "spanX":I
    .end local v13    # "spanY":I
    .end local v16    # "container":J
    .end local v20    # "distance":F
    .end local v24    # "minSpanX":I
    .end local v25    # "minSpanY":I
    .end local v30    # "resultSpan":[I
    .end local v35    # "screen":I
    .end local v52    # "foundCell":Z
    .end local v53    # "hasMovedIntoHotseat":Z
    .end local v54    # "hasMovedLayouts":Z
    .end local v56    # "info":Lcom/android/launcher2/ItemInfo;
    .end local v57    # "item":Lcom/android/launcher2/ItemInfo;
    .end local v59    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_b
    :goto_8
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v38

    check-cast v38, Lcom/android/launcher2/CellLayout;

    .line 2312
    .local v38, "parent":Lcom/android/launcher2/CellLayout;
    move-object/from16 v51, v62

    .line 2315
    .local v51, "finalResizeRunnable":Ljava/lang/Runnable;
    new-instance v40, Lcom/android/launcher2/Workspace$7;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/Workspace$7;-><init>(Lcom/android/launcher2/Workspace;Ljava/lang/Runnable;)V

    .line 2325
    .local v40, "onCompleteRunnable":Ljava/lang/Runnable;
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/launcher2/Workspace;->mAnimatingViewIntoPlace:Z

    .line 2326
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v5}, Lcom/android/launcher2/DragView;->hasDrawn()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 2327
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/launcher2/ItemInfo;

    .line 2328
    .local v37, "info":Lcom/android/launcher2/ItemInfo;
    move-object/from16 v0, v37

    iget v5, v0, Lcom/android/launcher2/ItemInfo;->itemType:I

    const/4 v7, 0x4

    if-ne v5, v7, :cond_14

    .line 2329
    if-eqz v61, :cond_13

    const/16 v41, 0x2

    .line 2331
    .local v41, "animationType":I
    :goto_9
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    move-object/from16 v39, v0

    const/16 v43, 0x0

    move-object/from16 v36, p0

    move-object/from16 v42, v28

    invoke-virtual/range {v36 .. v43}, Lcom/android/launcher2/Workspace;->animateWidgetDrop(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    .line 2342
    .end local v37    # "info":Lcom/android/launcher2/ItemInfo;
    .end local v41    # "animationType":I
    :goto_a
    move-object/from16 v0, v38

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->onDropChild(Landroid/view/View;)V

    goto/16 :goto_1

    .line 2190
    .end local v38    # "parent":Lcom/android/launcher2/CellLayout;
    .end local v40    # "onCompleteRunnable":Ljava/lang/Runnable;
    .end local v51    # "finalResizeRunnable":Ljava/lang/Runnable;
    :cond_c
    const/16 v54, 0x0

    goto/16 :goto_2

    .line 2192
    .restart local v53    # "hasMovedIntoHotseat":Z
    .restart local v54    # "hasMovedLayouts":Z
    :cond_d
    const-wide/16 v16, -0x64

    goto/16 :goto_3

    .line 2195
    .restart local v16    # "container":J
    :cond_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/launcher2/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v35

    goto/16 :goto_4

    .line 2197
    .restart local v35    # "screen":I
    :cond_f
    const/4 v12, 0x1

    goto/16 :goto_5

    .line 2198
    .restart local v12    # "spanX":I
    :cond_10
    const/4 v13, 0x1

    goto/16 :goto_6

    .line 2234
    .restart local v13    # "spanY":I
    .restart local v20    # "distance":F
    .restart local v24    # "minSpanX":I
    .restart local v25    # "minSpanY":I
    .restart local v30    # "resultSpan":[I
    .restart local v57    # "item":Lcom/android/launcher2/ItemInfo;
    :cond_11
    const/16 v52, 0x0

    goto/16 :goto_7

    .line 2303
    .restart local v52    # "foundCell":Z
    :cond_12
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v59

    check-cast v59, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 2304
    .restart local v59    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v7, 0x0

    move-object/from16 v0, v59

    iget v9, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    aput v9, v5, v7

    .line 2305
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v7, 0x1

    move-object/from16 v0, v59

    iget v9, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    aput v9, v5, v7

    .line 2306
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v58

    check-cast v58, Lcom/android/launcher2/CellLayout;

    .line 2307
    .local v58, "layout":Lcom/android/launcher2/CellLayout;
    move-object/from16 v0, v58

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    goto/16 :goto_8

    .line 2329
    .end local v12    # "spanX":I
    .end local v13    # "spanY":I
    .end local v16    # "container":J
    .end local v20    # "distance":F
    .end local v24    # "minSpanX":I
    .end local v25    # "minSpanY":I
    .end local v30    # "resultSpan":[I
    .end local v35    # "screen":I
    .end local v52    # "foundCell":Z
    .end local v53    # "hasMovedIntoHotseat":Z
    .end local v54    # "hasMovedLayouts":Z
    .end local v57    # "item":Lcom/android/launcher2/ItemInfo;
    .end local v58    # "layout":Lcom/android/launcher2/CellLayout;
    .end local v59    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    .restart local v37    # "info":Lcom/android/launcher2/ItemInfo;
    .restart local v38    # "parent":Lcom/android/launcher2/CellLayout;
    .restart local v40    # "onCompleteRunnable":Ljava/lang/Runnable;
    .restart local v51    # "finalResizeRunnable":Ljava/lang/Runnable;
    :cond_13
    const/16 v41, 0x0

    goto :goto_9

    .line 2334
    :cond_14
    if-gez v63, :cond_15

    const/16 v45, -0x1

    .line 2335
    .local v45, "duration":I
    :goto_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v42

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    move-object/from16 v43, v0

    move-object/from16 v44, v28

    move-object/from16 v46, v40

    move-object/from16 v47, p0

    invoke-virtual/range {v42 .. v47}, Lcom/android/launcher2/DragLayer;->animateViewIntoPosition(Lcom/android/launcher2/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    goto :goto_a

    .line 2334
    .end local v45    # "duration":I
    :cond_15
    const/16 v45, 0x12c

    goto :goto_b

    .line 2339
    .end local v37    # "info":Lcom/android/launcher2/ItemInfo;
    :cond_16
    const/4 v5, 0x0

    move-object/from16 v0, p1

    iput-boolean v5, v0, Lcom/android/launcher2/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 2340
    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher2/DropTarget$DragObject;ZZ)V
    .locals 5
    .param p1, "target"    # Landroid/view/View;
    .param p2, "d"    # Lcom/android/launcher2/DropTarget$DragObject;
    .param p3, "isFlingToDelete"    # Z
    .param p4, "success"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3363
    if-eqz p4, :cond_2

    .line 3364
    if-eq p1, p0, :cond_0

    .line 3365
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v1, :cond_0

    .line 3366
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher2/CellLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellLayout;->removeView(Landroid/view/View;)V

    .line 3367
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    instance-of v1, v1, Lcom/android/launcher2/DropTarget;

    if-eqz v1, :cond_0

    .line 3368
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    check-cast v1, Lcom/android/launcher2/DropTarget;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/DragController;->removeDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 3381
    :cond_0
    :goto_0
    iget-boolean v1, p2, Lcom/android/launcher2/DropTarget$DragObject;->cancelled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 3382
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3384
    :cond_1
    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 3385
    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    .line 3388
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->hideScrollingIndicator(Z)V

    .line 3389
    return-void

    .line 3372
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v1, :cond_0

    .line 3374
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3375
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    .line 3379
    .local v0, "cellLayout":Lcom/android/launcher2/CellLayout;
    :goto_1
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->onDropChild(Landroid/view/View;)V

    goto :goto_0

    .line 3377
    .end local v0    # "cellLayout":Lcom/android/launcher2/CellLayout;
    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->screen:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .restart local v0    # "cellLayout":Lcom/android/launcher2/CellLayout;
    goto :goto_1
.end method

.method public onEnterScrollArea(III)Z
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "direction"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3490
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/launcher2/LauncherApplication;->isScreenLandscape(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    move v0, v5

    .line 3491
    .local v0, "isPortrait":Z
    :goto_0
    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v7

    if-eqz v7, :cond_1

    if-eqz v0, :cond_1

    .line 3492
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 3493
    .local v3, "r":Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/android/launcher2/Hotseat;->getHitRect(Landroid/graphics/Rect;)V

    .line 3494
    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3519
    .end local v3    # "r":Landroid/graphics/Rect;
    :goto_1
    return v6

    .end local v0    # "isPortrait":Z
    :cond_0
    move v0, v6

    .line 3490
    goto :goto_0

    .line 3499
    .restart local v0    # "isPortrait":Z
    :cond_1
    const/4 v4, 0x0

    .line 3500
    .local v4, "result":Z
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v6

    if-nez v6, :cond_3

    iget-boolean v6, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v6, :cond_3

    .line 3501
    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    .line 3503
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getNextPage()I

    move-result v6

    if-nez p3, :cond_2

    const/4 v5, -0x1

    :cond_2
    add-int v2, v6, v5

    .line 3507
    .local v2, "page":I
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/launcher2/Workspace;->setCurrentDropLayout(Lcom/android/launcher2/CellLayout;)V

    .line 3509
    if-ltz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 3510
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 3511
    .local v1, "layout":Lcom/android/launcher2/CellLayout;
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher2/CellLayout;)V

    .line 3515
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->invalidate()V

    .line 3516
    const/4 v4, 0x1

    .end local v1    # "layout":Lcom/android/launcher2/CellLayout;
    .end local v2    # "page":I
    :cond_3
    move v6, v4

    .line 3519
    goto :goto_1
.end method

.method public onExitScrollArea()Z
    .locals 3

    .prologue
    .line 3524
    const/4 v1, 0x0

    .line 3525
    .local v1, "result":Z
    iget-boolean v2, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    if-eqz v2, :cond_0

    .line 3526
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->invalidate()V

    .line 3527
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentDropLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    .line 3528
    .local v0, "layout":Lcom/android/launcher2/CellLayout;
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setCurrentDropLayout(Lcom/android/launcher2/CellLayout;)V

    .line 3529
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher2/CellLayout;)V

    .line 3531
    const/4 v1, 0x1

    .line 3532
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    .line 3534
    .end local v0    # "layout":Lcom/android/launcher2/CellLayout;
    :cond_0
    return v1
.end method

.method public onFlingToDelete(Lcom/android/launcher2/DropTarget$DragObject;IILandroid/graphics/PointF;)V
    .locals 0
    .param p1, "d"    # Lcom/android/launcher2/DropTarget$DragObject;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "vec"    # Landroid/graphics/PointF;

    .prologue
    .line 3422
    return-void
.end method

.method public onFlingToDeleteCompleted()V
    .locals 0

    .prologue
    .line 3427
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 651
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    sparse-switch v1, :sswitch_data_0

    .line 665
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 653
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mXDown:F

    .line 654
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mYDown:F

    goto :goto_0

    .line 658
    :sswitch_1
    iget v1, p0, Lcom/android/launcher2/Workspace;->mTouchState:I

    if-nez v1, :cond_0

    .line 659
    iget v1, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 660
    .local v0, "currentPage":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->lastDownOnOccupiedCell()Z

    move-result v1

    if-nez v1, :cond_0

    .line 661
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->onWallpaperTap(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 651
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onLauncherTransitionEnd(Lcom/android/launcher2/Launcher;ZZ)V
    .locals 4
    .param p1, "l"    # Lcom/android/launcher2/Launcher;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1732
    iput-boolean v3, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    .line 1733
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->setOverrideHorizontalCatchupConstant(Z)V

    .line 1734
    invoke-direct {p0, v3}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 1739
    iget-boolean v2, p0, Lcom/android/launcher2/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    if-nez v2, :cond_0

    .line 1740
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1741
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 1742
    .local v0, "cl":Lcom/android/launcher2/CellLayout;
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setShortcutAndWidgetAlpha(F)V

    .line 1740
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1745
    .end local v0    # "cl":Lcom/android/launcher2/CellLayout;
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onLauncherTransitionPrepare(Lcom/android/launcher2/Launcher;ZZ)V
    .locals 1
    .param p1, "l"    # Lcom/android/launcher2/Launcher;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z

    .prologue
    .line 1717
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    .line 1718
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->cancelScrollingIndicatorAnimations()V

    .line 1719
    return-void
.end method

.method public onLauncherTransitionStart(Lcom/android/launcher2/Launcher;ZZ)V
    .locals 0
    .param p1, "l"    # Lcom/android/launcher2/Launcher;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z

    .prologue
    .line 1723
    return-void
.end method

.method public onLauncherTransitionStep(Lcom/android/launcher2/Launcher;F)V
    .locals 0
    .param p1, "l"    # Lcom/android/launcher2/Launcher;
    .param p2, "t"    # F

    .prologue
    .line 1727
    iput p2, p0, Lcom/android/launcher2/Workspace;->mTransitionProgress:F

    .line 1728
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1279
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mFirstLayout:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    .line 1282
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/launcher2/SmoothPagedView;->onLayout(ZIIII)V

    .line 1283
    return-void
.end method

.method protected onPageBeginMoving()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 727
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onPageBeginMoving()V

    .line 729
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 730
    invoke-direct {p0, v2}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 743
    :goto_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 744
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->showOutlines()V

    .line 745
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/launcher2/Workspace;->mIsStaticWallpaper:Z

    .line 750
    :cond_0
    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    if-nez v1, :cond_4

    .line 751
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 752
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Lcom/android/launcher2/CellLayout;->setShortcutAndWidgetAlpha(F)V

    .line 751
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 732
    .end local v0    # "i":I
    :cond_1
    iget v1, p0, Lcom/android/launcher2/Workspace;->mNextPage:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 734
    iget v1, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    iget v3, p0, Lcom/android/launcher2/Workspace;->mNextPage:I

    invoke-virtual {p0, v1, v3}, Lcom/android/launcher2/Workspace;->enableChildrenCache(II)V

    goto :goto_0

    .line 738
    :cond_2
    iget v1, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    add-int/lit8 v1, v1, -0x1

    iget v3, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/android/launcher2/Workspace;->enableChildrenCache(II)V

    goto :goto_0

    :cond_3
    move v1, v2

    .line 745
    goto :goto_1

    .line 757
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->showScrollingIndicator(Z)V

    .line 758
    return-void
.end method

.method protected onPageEndMoving()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 761
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onPageEndMoving()V

    .line 763
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 764
    invoke-direct {p0, v1}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 770
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0}, Lcom/android/launcher2/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 771
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 774
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0}, Lcom/android/launcher2/DragController;->forceMoveEvent()V

    .line 787
    :cond_0
    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/Workspace;->mOverScrollMaxBackgroundAlpha:F

    .line 789
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 790
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 791
    iput-object v2, p0, Lcom/android/launcher2/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    .line 794
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 795
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 796
    iput-object v2, p0, Lcom/android/launcher2/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    .line 798
    :cond_2
    return-void

    .line 766
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->clearChildrenCache()V

    goto :goto_0

    .line 778
    :cond_4
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 779
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->hideOutlines()V

    .line 783
    :cond_5
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0}, Lcom/android/launcher2/DragController;->isDragging()Z

    move-result v0

    if-nez v0, :cond_0

    .line 784
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->hideScrollingIndicator(Z)V

    goto :goto_1
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1310
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->isAllAppsVisible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1311
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 1312
    .local v0, "openFolder":Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_0

    .line 1313
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/Folder;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 1318
    .end local v0    # "openFolder":Lcom/android/launcher2/Folder;
    :goto_0
    return v1

    .line 1315
    .restart local v0    # "openFolder":Lcom/android/launcher2/Folder;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/SmoothPagedView;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_0

    .line 1318
    .end local v0    # "openFolder":Lcom/android/launcher2/Folder;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 3435
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3436
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->setScreen(I)V

    .line 3437
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 623
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isFinishedSwitchingState()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onWallpaperTap(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1437
    iget-object v8, p0, Lcom/android/launcher2/Workspace;->mTempCell:[I

    .line 1438
    .local v8, "position":[I
    invoke-virtual {p0, v8}, Lcom/android/launcher2/Workspace;->getLocationOnScreen([I)V

    .line 1440
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    .line 1441
    .local v7, "pointerIndex":I
    aget v0, v8, v5

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    aput v0, v8, v5

    .line 1442
    aget v0, v8, v4

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    aput v0, v8, v4

    .line 1444
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_0

    const-string v2, "android.wallpaper.tap"

    :goto_0
    aget v3, v8, v5

    aget v4, v8, v4

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 1448
    return-void

    .line 1444
    :cond_0
    const-string v2, "android.wallpaper.secondaryTap"

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Launcher;->onWindowVisibilityChanged(I)V

    .line 638
    return-void
.end method

.method protected overScroll(F)V
    .locals 0
    .param p1, "amount"    # F

    .prologue
    .line 1263
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->acceleratedOverScroll(F)V

    .line 1264
    return-void
.end method

.method overScrollBackgroundAlphaInterpolator(F)F
    .locals 3
    .param p1, "r"    # F

    .prologue
    .line 1186
    const v0, 0x3da3d70a    # 0.08f

    .line 1188
    .local v0, "threshold":F
    iget v1, p0, Lcom/android/launcher2/Workspace;->mOverScrollMaxBackgroundAlpha:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    .line 1189
    iput p1, p0, Lcom/android/launcher2/Workspace;->mOverScrollMaxBackgroundAlpha:F

    .line 1194
    :cond_0
    :goto_0
    div-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    return v1

    .line 1190
    :cond_1
    iget v1, p0, Lcom/android/launcher2/Workspace;->mOverScrollMaxBackgroundAlpha:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 1191
    iget p1, p0, Lcom/android/launcher2/Workspace;->mOverScrollMaxBackgroundAlpha:F

    goto :goto_0
.end method

.method overlaps(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/DragView;IILandroid/graphics/Matrix;)Z
    .locals 10
    .param p1, "cl"    # Lcom/android/launcher2/CellLayout;
    .param p2, "dragView"    # Lcom/android/launcher2/DragView;
    .param p3, "dragViewX"    # I
    .param p4, "dragViewY"    # I
    .param p5, "cachedInverseMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 2625
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mTempDragCoordinates:[F

    .line 2626
    .local v1, "draggedItemTopLeft":[F
    const/4 v7, 0x0

    int-to-float v8, p3

    aput v8, v1, v7

    .line 2627
    const/4 v7, 0x1

    int-to-float v8, p4

    aput v8, v1, v7

    .line 2628
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mTempDragBottomRightCoordinates:[F

    .line 2629
    .local v0, "draggedItemBottomRight":[F
    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v8, v1, v8

    invoke-virtual {p2}, Lcom/android/launcher2/DragView;->getDragRegionWidth()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v0, v7

    .line 2630
    const/4 v7, 0x1

    const/4 v8, 0x1

    aget v8, v1, v8

    invoke-virtual {p2}, Lcom/android/launcher2/DragView;->getDragRegionHeight()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v0, v7

    .line 2634
    invoke-virtual {p0, p1, v1, p5}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    .line 2635
    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v8, v1, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 2636
    .local v4, "overlapRegionLeft":F
    const/4 v7, 0x0

    const/4 v8, 0x1

    aget v8, v1, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 2638
    .local v6, "overlapRegionTop":F
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v7, v4, v7

    if-gtz v7, :cond_0

    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_0

    .line 2641
    invoke-virtual {p0, p1, v0, p5}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    .line 2642
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v7

    int-to-float v7, v7

    const/4 v8, 0x0

    aget v8, v0, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 2643
    .local v5, "overlapRegionRight":F
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const/4 v8, 0x1

    aget v8, v0, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 2645
    .local v3, "overlapRegionBottom":F
    const/4 v7, 0x0

    cmpl-float v7, v5, v7

    if-ltz v7, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getHeight()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v7, v3, v7

    if-gtz v7, :cond_0

    .line 2646
    sub-float v7, v5, v4

    sub-float v8, v3, v6

    mul-float v2, v7, v8

    .line 2648
    .local v2, "overlap":F
    const/4 v7, 0x0

    cmpl-float v7, v2, v7

    if-lez v7, :cond_0

    .line 2649
    const/4 v7, 0x1

    .line 2653
    .end local v2    # "overlap":F
    .end local v3    # "overlapRegionBottom":F
    .end local v5    # "overlapRegionRight":F
    :goto_0
    return v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method protected reinflateWidgetsIfNecessary()V
    .locals 10

    .prologue
    .line 669
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    .line 670
    .local v1, "clCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 671
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 672
    .local v0, "cl":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v7

    .line 673
    .local v7, "swc":Lcom/android/launcher2/ShortcutAndWidgetContainer;
    invoke-virtual {v7}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v4

    .line 674
    .local v4, "itemCount":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v4, :cond_1

    .line 675
    invoke-virtual {v7, v5}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 677
    .local v8, "v":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/android/launcher2/LauncherAppWidgetInfo;

    if-eqz v9, :cond_0

    .line 678
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/LauncherAppWidgetInfo;

    .line 679
    .local v3, "info":Lcom/android/launcher2/LauncherAppWidgetInfo;
    iget-object v6, v3, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    check-cast v6, Lcom/android/launcher2/LauncherAppWidgetHostView;

    .line 680
    .local v6, "lahv":Lcom/android/launcher2/LauncherAppWidgetHostView;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/launcher2/LauncherAppWidgetHostView;->orientationChangedSincedInflation()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 681
    iget-object v9, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v9, v3}, Lcom/android/launcher2/Launcher;->removeAppWidget(Lcom/android/launcher2/LauncherAppWidgetInfo;)V

    .line 683
    invoke-virtual {v0, v6}, Lcom/android/launcher2/CellLayout;->removeView(Landroid/view/View;)V

    .line 684
    iget-object v9, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v9, v3}, Lcom/android/launcher2/Launcher;->bindAppWidget(Lcom/android/launcher2/LauncherAppWidgetInfo;)V

    .line 674
    .end local v3    # "info":Lcom/android/launcher2/LauncherAppWidgetInfo;
    .end local v6    # "lahv":Lcom/android/launcher2/LauncherAppWidgetHostView;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 670
    .end local v8    # "v":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 689
    .end local v0    # "cl":Lcom/android/launcher2/CellLayout;
    .end local v4    # "itemCount":I
    .end local v5    # "j":I
    .end local v7    # "swc":Lcom/android/launcher2/ShortcutAndWidgetContainer;
    :cond_2
    return-void
.end method

.method removeItems(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3636
    .local p1, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 3637
    .local v5, "packageNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v5, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 3639
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;

    move-result-object v0

    .line 3640
    .local v0, "cellLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/CellLayout;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    .line 3641
    .local v4, "layoutParent":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v3

    .line 3644
    .local v3, "layout":Landroid/view/ViewGroup;
    new-instance v6, Lcom/android/launcher2/Workspace$11;

    invoke-direct {v6, p0, v3, v5, v4}, Lcom/android/launcher2/Workspace$11;-><init>(Lcom/android/launcher2/Workspace;Landroid/view/ViewGroup;Ljava/util/HashSet;Lcom/android/launcher2/CellLayout;)V

    invoke-virtual {p0, v6}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3719
    .end local v3    # "layout":Landroid/view/ViewGroup;
    .end local v4    # "layoutParent":Lcom/android/launcher2/CellLayout;
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 3720
    .local v1, "context":Landroid/content/Context;
    new-instance v6, Lcom/android/launcher2/Workspace$12;

    invoke-direct {v6, p0, v1, v5}, Lcom/android/launcher2/Workspace$12;-><init>(Lcom/android/launcher2/Workspace;Landroid/content/Context;Ljava/util/HashSet;)V

    invoke-virtual {p0, v6}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 3755
    return-void
.end method

.method public resetFinalScrollForPageChange(I)V
    .locals 2
    .param p1, "screen"    # I

    .prologue
    .line 2360
    if-ltz p1, :cond_0

    .line 2361
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 2362
    .local v0, "cl":Lcom/android/launcher2/CellLayout;
    iget v1, p0, Lcom/android/launcher2/Workspace;->mSavedScrollX:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->setScrollX(I)V

    .line 2363
    iget v1, p0, Lcom/android/launcher2/Workspace;->mSavedTranslationX:F

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setTranslationX(F)V

    .line 2364
    iget v1, p0, Lcom/android/launcher2/Workspace;->mSavedRotationY:F

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setRotationY(F)V

    .line 2366
    .end local v0    # "cl":Lcom/android/launcher2/CellLayout;
    :cond_0
    return-void
.end method

.method public resetTransitionTransform(Lcom/android/launcher2/CellLayout;)V
    .locals 1
    .param p1, "layout"    # Lcom/android/launcher2/CellLayout;

    .prologue
    .line 3305
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3306
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Workspace;->mCurrentScaleX:F

    .line 3307
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getScaleY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Workspace;->mCurrentScaleY:F

    .line 3308
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getTranslationX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Workspace;->mCurrentTranslationX:F

    .line 3309
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Workspace;->mCurrentTranslationY:F

    .line 3310
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getRotationY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Workspace;->mCurrentRotationY:F

    .line 3311
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentScaleX:F

    invoke-virtual {p1, v0}, Lcom/android/launcher2/CellLayout;->setScaleX(F)V

    .line 3312
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentScaleY:F

    invoke-virtual {p1, v0}, Lcom/android/launcher2/CellLayout;->setScaleY(F)V

    .line 3313
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentTranslationX:F

    invoke-virtual {p1, v0}, Lcom/android/launcher2/CellLayout;->setTranslationX(F)V

    .line 3314
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentTranslationY:F

    invoke-virtual {p1, v0}, Lcom/android/launcher2/CellLayout;->setTranslationY(F)V

    .line 3315
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentRotationY:F

    invoke-virtual {p1, v0}, Lcom/android/launcher2/CellLayout;->setRotationY(F)V

    .line 3317
    :cond_0
    return-void
.end method

.method public restoreInstanceStateForChild(I)V
    .locals 3
    .param p1, "child"    # I

    .prologue
    .line 3448
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mSavedStates:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 3449
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3450
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 3451
    .local v0, "cl":Lcom/android/launcher2/CellLayout;
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mSavedStates:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->restoreInstanceState(Landroid/util/SparseArray;)V

    .line 3453
    .end local v0    # "cl":Lcom/android/launcher2/CellLayout;
    :cond_0
    return-void
.end method

.method public restoreInstanceStateForRemainingPages()V
    .locals 4

    .prologue
    .line 3456
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    .line 3457
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3458
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3459
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->restoreInstanceStateForChild(I)V

    .line 3457
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3462
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3463
    return-void
.end method

.method protected screenScrolled(I)V
    .locals 9
    .param p1, "screenCenter"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1229
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->screenScrolled(I)V

    .line 1231
    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->updatePageAlphaValues(I)V

    .line 1232
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->enableHwLayersOnVisiblePages()V

    .line 1234
    iget v6, p0, Lcom/android/launcher2/Workspace;->mOverScrollX:I

    if-ltz v6, :cond_0

    iget v6, p0, Lcom/android/launcher2/Workspace;->mOverScrollX:I

    iget v7, p0, Lcom/android/launcher2/Workspace;->mMaxScrollX:I

    if-le v6, v7, :cond_5

    .line 1235
    :cond_0
    iget v6, p0, Lcom/android/launcher2/Workspace;->mOverScrollX:I

    if-gez v6, :cond_3

    move v1, v4

    .line 1236
    .local v1, "index":I
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 1237
    .local v0, "cl":Lcom/android/launcher2/CellLayout;
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher2/Workspace;->getScrollProgress(ILandroid/view/View;I)F

    move-result v3

    .line 1238
    .local v3, "scrollProgress":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    if-nez v1, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {v0, v6, v4}, Lcom/android/launcher2/CellLayout;->setOverScrollAmount(FZ)V

    .line 1239
    const/high16 v4, -0x3e400000    # -24.0f

    mul-float v2, v4, v3

    .line 1240
    .local v2, "rotation":F
    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setRotationY(F)V

    .line 1241
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->setFadeForOverScroll(F)V

    .line 1242
    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mOverscrollTransformsSet:Z

    if-nez v4, :cond_2

    .line 1243
    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->mOverscrollTransformsSet:Z

    .line 1244
    iget v4, p0, Lcom/android/launcher2/Workspace;->mDensity:F

    iget v6, p0, Lcom/android/launcher2/Workspace;->mCameraDistance:I

    int-to-float v6, v6

    mul-float/2addr v4, v6

    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayout;->setCameraDistance(F)V

    .line 1245
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v6, v4

    if-nez v1, :cond_4

    const/high16 v4, 0x3f400000    # 0.75f

    :goto_1
    mul-float/2addr v4, v6

    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayout;->setPivotX(F)V

    .line 1246
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v4, v6

    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayout;->setPivotY(F)V

    .line 1247
    invoke-virtual {v0, v5}, Lcom/android/launcher2/CellLayout;->setOverscrollTransformsDirty(Z)V

    .line 1259
    .end local v0    # "cl":Lcom/android/launcher2/CellLayout;
    .end local v1    # "index":I
    .end local v2    # "rotation":F
    .end local v3    # "scrollProgress":F
    :cond_2
    :goto_2
    return-void

    .line 1235
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    goto :goto_0

    .line 1245
    .restart local v0    # "cl":Lcom/android/launcher2/CellLayout;
    .restart local v1    # "index":I
    .restart local v2    # "rotation":F
    .restart local v3    # "scrollProgress":F
    :cond_4
    const/high16 v4, 0x3e800000    # 0.25f

    goto :goto_1

    .line 1250
    .end local v0    # "cl":Lcom/android/launcher2/CellLayout;
    .end local v1    # "index":I
    .end local v2    # "rotation":F
    .end local v3    # "scrollProgress":F
    :cond_5
    iget v5, p0, Lcom/android/launcher2/Workspace;->mOverscrollFade:F

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_6

    .line 1251
    invoke-virtual {p0, v8}, Lcom/android/launcher2/Workspace;->setFadeForOverScroll(F)V

    .line 1253
    :cond_6
    iget-boolean v5, p0, Lcom/android/launcher2/Workspace;->mOverscrollTransformsSet:Z

    if-eqz v5, :cond_2

    .line 1254
    iput-boolean v4, p0, Lcom/android/launcher2/Workspace;->mOverscrollTransformsSet:Z

    .line 1255
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->resetOverscrollTransforms()V

    .line 1256
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->resetOverscrollTransforms()V

    goto :goto_2
.end method

.method public scrollLeft()V
    .locals 2

    .prologue
    .line 3467
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v1, :cond_0

    .line 3468
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->scrollLeft()V

    .line 3470
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 3471
    .local v0, "openFolder":Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_1

    .line 3472
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->completeDragExit()V

    .line 3474
    :cond_1
    return-void
.end method

.method public scrollRight()V
    .locals 2

    .prologue
    .line 3478
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v1, :cond_0

    .line 3479
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->scrollRight()V

    .line 3481
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 3482
    .local v0, "openFolder":Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_1

    .line 3483
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->completeDragExit()V

    .line 3485
    :cond_1
    return-void
.end method

.method public setBackgroundAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 1163
    iget v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundAlpha:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1164
    iput p1, p0, Lcom/android/launcher2/Workspace;->mBackgroundAlpha:F

    .line 1165
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->invalidate()V

    .line 1167
    :cond_0
    return-void
.end method

.method public setChildrenOutlineAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    .line 1116
    iput p1, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineAlpha:F

    .line 1117
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1118
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 1119
    .local v0, "cl":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(F)V

    .line 1117
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1121
    .end local v0    # "cl":Lcom/android/launcher2/CellLayout;
    :cond_0
    return-void
.end method

.method setCurrentDragOverlappingLayout(Lcom/android/launcher2/CellLayout;)V
    .locals 2
    .param p1, "layout"    # Lcom/android/launcher2/CellLayout;

    .prologue
    .line 2486
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOverlappingLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_0

    .line 2487
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOverlappingLayout:Lcom/android/launcher2/CellLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    .line 2489
    :cond_0
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mDragOverlappingLayout:Lcom/android/launcher2/CellLayout;

    .line 2490
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOverlappingLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_1

    .line 2491
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOverlappingLayout:Lcom/android/launcher2/CellLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    .line 2493
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->invalidate()V

    .line 2494
    return-void
.end method

.method setCurrentDropLayout(Lcom/android/launcher2/CellLayout;)V
    .locals 2
    .param p1, "layout"    # Lcom/android/launcher2/CellLayout;

    .prologue
    const/4 v1, -0x1

    .line 2472
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_0

    .line 2473
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->revertTempState()V

    .line 2474
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    .line 2476
    :cond_0
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    .line 2477
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_1

    .line 2478
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->onDragEnter()V

    .line 2480
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher2/Workspace;->cleanupReorder(Z)V

    .line 2481
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->cleanupFolderCreation()V

    .line 2482
    invoke-virtual {p0, v1, v1}, Lcom/android/launcher2/Workspace;->setCurrentDropOverCell(II)V

    .line 2483
    return-void
.end method

.method setCurrentDropOverCell(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2497
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDragOverX:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/Workspace;->mDragOverY:I

    if-eq p2, v0, :cond_1

    .line 2498
    :cond_0
    iput p1, p0, Lcom/android/launcher2/Workspace;->mDragOverX:I

    .line 2499
    iput p2, p0, Lcom/android/launcher2/Workspace;->mDragOverY:I

    .line 2500
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setDragMode(I)V

    .line 2502
    :cond_1
    return-void
.end method

.method setDragMode(I)V
    .locals 2
    .param p1, "dragMode"    # I

    .prologue
    const/4 v1, 0x1

    .line 2505
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDragMode:I

    if-eq p1, v0, :cond_1

    .line 2506
    if-nez p1, :cond_2

    .line 2507
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->cleanupAddToFolder()V

    .line 2510
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher2/Workspace;->cleanupReorder(Z)V

    .line 2511
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->cleanupFolderCreation()V

    .line 2522
    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/launcher2/Workspace;->mDragMode:I

    .line 2524
    :cond_1
    return-void

    .line 2512
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 2513
    invoke-direct {p0, v1}, Lcom/android/launcher2/Workspace;->cleanupReorder(Z)V

    .line 2514
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->cleanupFolderCreation()V

    goto :goto_0

    .line 2515
    :cond_3
    if-ne p1, v1, :cond_4

    .line 2516
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->cleanupAddToFolder()V

    .line 2517
    invoke-direct {p0, v1}, Lcom/android/launcher2/Workspace;->cleanupReorder(Z)V

    goto :goto_0

    .line 2518
    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 2519
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->cleanupAddToFolder()V

    .line 2520
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->cleanupFolderCreation()V

    goto :goto_0
.end method

.method setFadeForOverScroll(F)V
    .locals 8
    .param p1, "fade"    # F

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    .line 3820
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isScrollingIndicatorEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3833
    :goto_0
    return-void

    .line 3822
    :cond_0
    iput p1, p0, Lcom/android/launcher2/Workspace;->mOverscrollFade:F

    .line 3823
    sub-float v5, v7, p1

    mul-float/2addr v5, v6

    add-float v3, v6, v5

    .line 3824
    .local v3, "reducedFade":F
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 3825
    .local v1, "parent":Landroid/view/ViewGroup;
    const v5, 0x7f070022

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    move-object v2, v5

    check-cast v2, Landroid/widget/ImageView;

    .line 3826
    .local v2, "qsbDivider":Landroid/widget/ImageView;
    const v5, 0x7f070023

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    move-object v0, v5

    check-cast v0, Landroid/widget/ImageView;

    .line 3827
    .local v0, "dockDivider":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScrollingIndicator()Landroid/view/View;

    move-result-object v4

    .line 3829
    .local v4, "scrollIndicator":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->cancelScrollingIndicatorAnimations()V

    .line 3830
    if-eqz v2, :cond_1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3831
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3832
    :cond_2
    sub-float v5, v7, p1

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method public setFinalScrollForPageChange(I)V
    .locals 5
    .param p1, "screen"    # I

    .prologue
    const/4 v4, 0x0

    .line 2347
    if-ltz p1, :cond_0

    .line 2348
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/Workspace;->mSavedScrollX:I

    .line 2349
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 2350
    .local v0, "cl":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getTranslationX()F

    move-result v2

    iput v2, p0, Lcom/android/launcher2/Workspace;->mSavedTranslationX:F

    .line 2351
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getRotationY()F

    move-result v2

    iput v2, p0, Lcom/android/launcher2/Workspace;->mSavedRotationY:F

    .line 2352
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildOffset(I)I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getRelativeChildOffset(I)I

    move-result v3

    sub-int v1, v2, v3

    .line 2353
    .local v1, "newX":I
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->setScrollX(I)V

    .line 2354
    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayout;->setTranslationX(F)V

    .line 2355
    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayout;->setRotationY(F)V

    .line 2357
    .end local v0    # "cl":Lcom/android/launcher2/CellLayout;
    .end local v1    # "newX":I
    :cond_0
    return-void
.end method

.method public setFinalTransitionTransform(Lcom/android/launcher2/CellLayout;)V
    .locals 2
    .param p1, "layout"    # Lcom/android/launcher2/CellLayout;

    .prologue
    .line 3290
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSwitchingState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3291
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 3292
    .local v0, "index":I
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getScaleX()F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mCurrentScaleX:F

    .line 3293
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getScaleY()F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mCurrentScaleY:F

    .line 3294
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getTranslationX()F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mCurrentTranslationX:F

    .line 3295
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getTranslationY()F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mCurrentTranslationY:F

    .line 3296
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getRotationY()F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mCurrentRotationY:F

    .line 3297
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mNewScaleXs:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/android/launcher2/CellLayout;->setScaleX(F)V

    .line 3298
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mNewScaleYs:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/android/launcher2/CellLayout;->setScaleY(F)V

    .line 3299
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mNewTranslationXs:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/android/launcher2/CellLayout;->setTranslationX(F)V

    .line 3300
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mNewTranslationYs:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/android/launcher2/CellLayout;->setTranslationY(F)V

    .line 3301
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mNewRotationYs:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/android/launcher2/CellLayout;->setRotationY(F)V

    .line 3303
    .end local v0    # "index":I
    :cond_0
    return-void
.end method

.method protected setWallpaperDimension()V
    .locals 6

    .prologue
    .line 839
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 840
    .local v3, "minDims":Landroid/graphics/Point;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 841
    .local v1, "maxDims":Landroid/graphics/Point;
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 843
    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 844
    .local v0, "maxDim":I
    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v5, v3, Landroid/graphics/Point;->y:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 848
    .local v2, "minDim":I
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 849
    int-to-float v4, v0

    invoke-direct {p0, v0, v2}, Lcom/android/launcher2/Workspace;->wallpaperTravelToScreenWidthRatio(II)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    .line 850
    iput v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperHeight:I

    .line 855
    :goto_0
    new-instance v4, Lcom/android/launcher2/Workspace$2;

    const-string v5, "setWallpaperDimension"

    invoke-direct {v4, p0, v5}, Lcom/android/launcher2/Workspace$2;-><init>(Lcom/android/launcher2/Workspace;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace$2;->start()V

    .line 860
    return-void

    .line 852
    :cond_0
    int-to-float v4, v2

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    .line 853
    iput v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperHeight:I

    goto :goto_0
.end method

.method setup(Lcom/android/launcher2/DragController;)V
    .locals 2
    .param p1, "dragController"    # Lcom/android/launcher2/DragController;

    .prologue
    .line 3349
    new-instance v0, Lcom/android/launcher2/SpringLoadedDragController;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-direct {v0, v1}, Lcom/android/launcher2/SpringLoadedDragController;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mSpringLoadedDragController:Lcom/android/launcher2/SpringLoadedDragController;

    .line 3350
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    .line 3354
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 3355
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->setWallpaperDimension()V

    .line 3356
    return-void
.end method

.method protected shouldDrawChild(Landroid/view/View;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 453
    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 454
    .local v0, "cl":Lcom/android/launcher2/CellLayout;
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->shouldDrawChild(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getBackgroundAlpha()F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method showOutlines()V
    .locals 4

    .prologue
    .line 1089
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v0, :cond_2

    .line 1090
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1091
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1092
    :cond_1
    const-string v0, "childrenOutlineAlpha"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    .line 1093
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1094
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1096
    :cond_2
    return-void
.end method

.method public showOutlinesTemporarily()V
    .locals 1

    .prologue
    .line 1110
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsPageMoving:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isTouchActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1111
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 1113
    :cond_0
    return-void
.end method

.method protected snapToPage(I)V
    .locals 0
    .param p1, "whichPage"    # I

    .prologue
    .line 937
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(I)V

    .line 938
    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->computeWallpaperScrollRatio(I)V

    .line 939
    return-void
.end method

.method protected snapToPage(II)V
    .locals 0
    .param p1, "whichPage"    # I
    .param p2, "duration"    # I

    .prologue
    .line 943
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(II)V

    .line 944
    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->computeWallpaperScrollRatio(I)V

    .line 945
    return-void
.end method

.method protected snapToPage(ILjava/lang/Runnable;)V
    .locals 1
    .param p1, "whichPage"    # I
    .param p2, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 948
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 949
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 951
    :cond_0
    iput-object p2, p0, Lcom/android/launcher2/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    .line 952
    const/16 v0, 0x3b6

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/Workspace;->snapToPage(II)V

    .line 953
    return-void
.end method

.method startDrag(Lcom/android/launcher2/CellLayout$CellInfo;)V
    .locals 4
    .param p1, "cellInfo"    # Lcom/android/launcher2/CellLayout$CellInfo;

    .prologue
    .line 1868
    iget-object v1, p1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 1871
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->isInTouchMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1888
    :goto_0
    return-void

    .line 1875
    :cond_0
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    .line 1876
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1877
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    .line 1878
    .local v2, "layout":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v2, v1}, Lcom/android/launcher2/CellLayout;->prepareChildForDrag(Landroid/view/View;)V

    .line 1880
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 1881
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 1883
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 1886
    .local v0, "canvas":Landroid/graphics/Canvas;
    const/4 v3, 0x2

    invoke-direct {p0, v1, v0, v3}, Lcom/android/launcher2/Workspace;->createDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 1887
    invoke-virtual {p0, v1, p0}, Lcom/android/launcher2/Workspace;->beginDragShared(Landroid/view/View;Lcom/android/launcher2/DragSource;)V

    goto :goto_0
.end method

.method public supportsFlingToDelete()Z
    .locals 1

    .prologue
    .line 3416
    const/4 v0, 0x1

    return v0
.end method

.method public syncPageItems(IZ)V
    .locals 0
    .param p1, "page"    # I
    .param p2, "immediate"    # Z

    .prologue
    .line 3806
    return-void
.end method

.method public syncPages()V
    .locals 0

    .prologue
    .line 3802
    return-void
.end method

.method public transitionStateShouldAllowDrop()Z
    .locals 2

    .prologue
    .line 1952
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/Workspace;->mTransitionProgress:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v1, Lcom/android/launcher2/Workspace$State;->SMALL:Lcom/android/launcher2/Workspace$State;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateCurrentPageScroll()V
    .locals 1

    .prologue
    .line 931
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->updateCurrentPageScroll()V

    .line 932
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    invoke-direct {p0, v0}, Lcom/android/launcher2/Workspace;->computeWallpaperScrollRatio(I)V

    .line 933
    return-void
.end method

.method updateItemLocationsInDatabase(Lcom/android/launcher2/CellLayout;)V
    .locals 13
    .param p1, "cl"    # Lcom/android/launcher2/CellLayout;

    .prologue
    .line 3392
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v10

    .line 3394
    .local v10, "count":I
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .line 3395
    .local v4, "screen":I
    const/16 v9, -0x64

    .line 3397
    .local v9, "container":I
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3398
    const/4 v4, -0x1

    .line 3399
    const/16 v9, -0x65

    .line 3402
    :cond_0
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v10, :cond_2

    .line 3403
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 3404
    .local v12, "v":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ItemInfo;

    .line 3406
    .local v1, "info":Lcom/android/launcher2/ItemInfo;
    if-eqz v1, :cond_1

    iget-boolean v0, v1, Lcom/android/launcher2/ItemInfo;->requiresDbUpdate:Z

    if-eqz v0, :cond_1

    .line 3407
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/launcher2/ItemInfo;->requiresDbUpdate:Z

    .line 3408
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    int-to-long v2, v9

    iget v5, v1, Lcom/android/launcher2/ItemInfo;->cellX:I

    iget v6, v1, Lcom/android/launcher2/ItemInfo;->cellY:I

    iget v7, v1, Lcom/android/launcher2/ItemInfo;->spanX:I

    iget v8, v1, Lcom/android/launcher2/ItemInfo;->spanY:I

    invoke-static/range {v0 .. v8}, Lcom/android/launcher2/LauncherModel;->modifyItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIIIII)V

    .line 3402
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 3412
    .end local v1    # "info":Lcom/android/launcher2/ItemInfo;
    .end local v12    # "v":Landroid/view/View;
    :cond_2
    return-void
.end method

.method updateShortcuts(Ljava/util/ArrayList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3758
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getAllShortcutAndWidgetContainers()Ljava/util/ArrayList;

    move-result-object v4

    .line 3759
    .local v4, "childrenLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutAndWidgetContainer;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/ShortcutAndWidgetContainer;

    .line 3760
    .local v10, "layout":Lcom/android/launcher2/ShortcutAndWidgetContainer;
    invoke-virtual {v10}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v3

    .line 3761
    .local v3, "childCount":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_0
    if-ge v8, v3, :cond_0

    .line 3762
    invoke-virtual {v10, v8}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 3763
    .local v14, "view":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    .line 3764
    .local v13, "tag":Ljava/lang/Object;
    instance-of v15, v13, Lcom/android/launcher2/ShortcutInfo;

    if-eqz v15, :cond_2

    move-object v6, v13

    .line 3765
    check-cast v6, Lcom/android/launcher2/ShortcutInfo;

    .line 3769
    .local v6, "info":Lcom/android/launcher2/ShortcutInfo;
    iget-object v7, v6, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 3770
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    .line 3771
    .local v11, "name":Landroid/content/ComponentName;
    iget v15, v6, Lcom/android/launcher2/ShortcutInfo;->itemType:I

    if-nez v15, :cond_2

    const-string v15, "android.intent.action.MAIN"

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    if-eqz v11, :cond_2

    .line 3773
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3774
    .local v2, "appCount":I
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_1
    if-ge v9, v2, :cond_2

    .line 3775
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ApplicationInfo;

    .line 3776
    .local v1, "app":Lcom/android/launcher2/ApplicationInfo;
    iget-object v15, v1, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v15, v11}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    move-object v12, v14

    .line 3777
    check-cast v12, Lcom/android/launcher2/BubbleTextView;

    .line 3778
    .local v12, "shortcut":Lcom/android/launcher2/BubbleTextView;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/Workspace;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v6, v15}, Lcom/android/launcher2/ShortcutInfo;->updateIcon(Lcom/android/launcher2/IconCache;)V

    .line 3779
    iget-object v15, v1, Lcom/android/launcher2/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v6, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 3780
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/Workspace;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v12, v6, v15}, Lcom/android/launcher2/BubbleTextView;->applyFromShortcutInfo(Lcom/android/launcher2/ShortcutInfo;Lcom/android/launcher2/IconCache;)V

    .line 3774
    .end local v12    # "shortcut":Lcom/android/launcher2/BubbleTextView;
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 3761
    .end local v1    # "app":Lcom/android/launcher2/ApplicationInfo;
    .end local v2    # "appCount":I
    .end local v6    # "info":Lcom/android/launcher2/ShortcutInfo;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v9    # "k":I
    .end local v11    # "name":Landroid/content/ComponentName;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 3787
    .end local v3    # "childCount":I
    .end local v8    # "j":I
    .end local v10    # "layout":Lcom/android/launcher2/ShortcutAndWidgetContainer;
    .end local v13    # "tag":Ljava/lang/Object;
    .end local v14    # "view":Landroid/view/View;
    :cond_3
    return-void
.end method

.method public updateWallpaperOffsetImmediately()V
    .locals 1

    .prologue
    .line 904
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    .line 905
    return-void
.end method

.method willAddToExistingUserFolder(Ljava/lang/Object;Lcom/android/launcher2/CellLayout;[IF)Z
    .locals 7
    .param p1, "dragInfo"    # Ljava/lang/Object;
    .param p2, "target"    # Lcom/android/launcher2/CellLayout;
    .param p3, "targetCell"    # [I
    .param p4, "distance"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2068
    iget v5, p0, Lcom/android/launcher2/Workspace;->mMaxDistanceForFolderCreation:F

    cmpl-float v5, p4, v5

    if-lez v5, :cond_1

    .line 2084
    :cond_0
    :goto_0
    return v3

    .line 2069
    :cond_1
    aget v5, p3, v3

    aget v6, p3, v4

    invoke-virtual {p2, v5, v6}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 2071
    .local v0, "dropOverView":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 2072
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 2073
    .local v2, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    iget-boolean v5, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v5, :cond_2

    iget v5, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellX:I

    iget v6, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    if-ne v5, v6, :cond_0

    iget v5, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    iget v6, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    if-ne v5, v6, :cond_0

    .line 2078
    .end local v2    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_2
    instance-of v5, v0, Lcom/android/launcher2/FolderIcon;

    if-eqz v5, :cond_0

    move-object v1, v0

    .line 2079
    check-cast v1, Lcom/android/launcher2/FolderIcon;

    .line 2080
    .local v1, "fi":Lcom/android/launcher2/FolderIcon;
    invoke-virtual {v1, p1}, Lcom/android/launcher2/FolderIcon;->acceptDrop(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    .line 2081
    goto :goto_0
.end method

.method willCreateUserFolder(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;[IFZ)Z
    .locals 9
    .param p1, "info"    # Lcom/android/launcher2/ItemInfo;
    .param p2, "target"    # Lcom/android/launcher2/CellLayout;
    .param p3, "targetCell"    # [I
    .param p4, "distance"    # F
    .param p5, "considerTimeout"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2039
    iget v7, p0, Lcom/android/launcher2/Workspace;->mMaxDistanceForFolderCreation:F

    cmpl-float v7, p4, v7

    if-lez v7, :cond_1

    .line 2063
    :cond_0
    :goto_0
    return v6

    .line 2040
    :cond_1
    aget v7, p3, v6

    aget v8, p3, v5

    invoke-virtual {p2, v7, v8}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    .line 2042
    .local v1, "dropOverView":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 2043
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 2044
    .local v3, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    iget-boolean v7, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v7, :cond_2

    iget v7, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellX:I

    iget v8, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    if-ne v7, v8, :cond_0

    iget v7, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    iget v8, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    if-ne v7, v8, :cond_0

    .line 2049
    .end local v3    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_2
    const/4 v2, 0x0

    .line 2050
    .local v2, "hasntMoved":Z
    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v7, :cond_3

    .line 2051
    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v7, v7, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-ne v1, v7, :cond_6

    move v2, v5

    .line 2054
    :cond_3
    :goto_1
    if-eqz v1, :cond_0

    if-nez v2, :cond_0

    if-eqz p5, :cond_4

    iget-boolean v7, p0, Lcom/android/launcher2/Workspace;->mCreateUserFolderOnDrop:Z

    if-eqz v7, :cond_0

    .line 2058
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    instance-of v0, v7, Lcom/android/launcher2/ShortcutInfo;

    .line 2059
    .local v0, "aboveShortcut":Z
    iget v7, p1, Lcom/android/launcher2/ItemInfo;->itemType:I

    if-eqz v7, :cond_5

    iget v7, p1, Lcom/android/launcher2/ItemInfo;->itemType:I

    if-ne v7, v5, :cond_7

    :cond_5
    move v4, v5

    .line 2063
    .local v4, "willBecomeShortcut":Z
    :goto_2
    if-eqz v0, :cond_8

    if-eqz v4, :cond_8

    :goto_3
    move v6, v5

    goto :goto_0

    .end local v0    # "aboveShortcut":Z
    .end local v4    # "willBecomeShortcut":Z
    :cond_6
    move v2, v6

    .line 2051
    goto :goto_1

    .restart local v0    # "aboveShortcut":Z
    :cond_7
    move v4, v6

    .line 2059
    goto :goto_2

    .restart local v4    # "willBecomeShortcut":Z
    :cond_8
    move v5, v6

    .line 2063
    goto :goto_3
.end method

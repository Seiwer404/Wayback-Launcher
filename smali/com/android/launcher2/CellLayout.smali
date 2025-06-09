.class public Lcom/android/launcher2/CellLayout;
.super Landroid/view/ViewGroup;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/CellLayout$CellInfo;,
        Lcom/android/launcher2/CellLayout$LayoutParams;,
        Lcom/android/launcher2/CellLayout$CellLayoutAnimationController;,
        Lcom/android/launcher2/CellLayout$CellAndSpan;,
        Lcom/android/launcher2/CellLayout$ItemConfiguration;,
        Lcom/android/launcher2/CellLayout$ReorderHintAnimation;,
        Lcom/android/launcher2/CellLayout$ViewCluster;
    }
.end annotation


# static fields
.field private static final DEBUG_VISUALIZE_OCCUPIED:Z = false

.field private static final DESTRUCTIVE_REORDER:Z = false

.field private static final INVALID_DIRECTION:I = -0x64

.field static final LANDSCAPE:I = 0x0

.field public static final MODE_ACCEPT_DROP:I = 0x3

.field public static final MODE_DRAG_OVER:I = 0x0

.field public static final MODE_ON_DROP:I = 0x1

.field public static final MODE_ON_DROP_EXTERNAL:I = 0x2

.field static final PORTRAIT:I = 0x1

.field private static final REORDER_ANIMATION_DURATION:I = 0x96

.field private static final REORDER_HINT_MAGNITUDE:F = 0.12f

.field static final TAG:Ljava/lang/String; = "CellLayout"

.field private static final sAddBlendMode:Landroid/graphics/PorterDuffXfermode;

.field private static final sPaint:Landroid/graphics/Paint;


# instance fields
.field private mActiveGlowBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundAlpha:F

.field private mBackgroundAlphaMultiplier:F

.field private mBackgroundRect:Landroid/graphics/Rect;

.field private mCellHeight:I

.field private final mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

.field private mCellWidth:I

.field private mCountX:I

.field private mCountY:I

.field private mDirectionVector:[I

.field private final mDragCell:[I

.field private final mDragCenter:Landroid/graphics/Point;

.field private mDragEnforcer:Lcom/android/launcher2/DropTarget$DragEnforcer;

.field private mDragOutlineAlphas:[F

.field private mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

.field private mDragOutlineCurrent:I

.field private final mDragOutlinePaint:Landroid/graphics/Paint;

.field private mDragOutlines:[Landroid/graphics/Rect;

.field private mDragging:Z

.field private mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

.field private mFolderLeaveBehindCell:[I

.field private mFolderOuterRings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/FolderIcon$FolderRingAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mForegroundAlpha:I

.field private mForegroundPadding:I

.field private mForegroundRect:Landroid/graphics/Rect;

.field private mHeightGap:I

.field private mHotseatScale:F

.field private mInterceptTouchListener:Landroid/view/View$OnTouchListener;

.field private mIntersectingViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDragOverlapping:Z

.field private mIsHotseat:Z

.field private mItemPlacementDirty:Z

.field private mLastDownOnOccupiedCell:Z

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mMaxGap:I

.field private mNormalBackground:Landroid/graphics/drawable/Drawable;

.field mOccupied:[[Z

.field private mOccupiedRect:Landroid/graphics/Rect;

.field private mOriginalHeightGap:I

.field private mOriginalWidthGap:I

.field private mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mOverScrollLeft:Landroid/graphics/drawable/Drawable;

.field private mOverScrollRight:Landroid/graphics/drawable/Drawable;

.field private mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

.field mPreviousReorderDirection:[I

.field private final mRect:Landroid/graphics/Rect;

.field private mReorderAnimators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher2/CellLayout$LayoutParams;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mReorderHintAnimationMagnitude:F

.field private mScrollingTransformsDirty:Z

.field private mShakeAnimators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/android/launcher2/CellLayout$ReorderHintAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

.field mTempLocation:[I

.field private final mTempRectStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field mTmpOccupied:[[Z

.field private final mTmpPoint:[I

.field private final mTmpXY:[I

.field private mWidthGap:I

.field temp:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 165
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/android/launcher2/CellLayout;->sAddBlendMode:Landroid/graphics/PorterDuffXfermode;

    .line 167
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher2/CellLayout;->sPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 171
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 175
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 178
    invoke-direct/range {p0 .. p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/launcher2/CellLayout;->mScrollingTransformsDirty:Z

    .line 78
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mRect:Landroid/graphics/Rect;

    .line 79
    new-instance v11, Lcom/android/launcher2/CellLayout$CellInfo;

    invoke-direct {v11}, Lcom/android/launcher2/CellLayout$CellInfo;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    .line 83
    const/4 v11, 0x2

    new-array v11, v11, [I

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    .line 84
    const/4 v11, 0x2

    new-array v11, v11, [I

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mTmpPoint:[I

    .line 85
    const/4 v11, 0x2

    new-array v11, v11, [I

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    .line 89
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/launcher2/CellLayout;->mLastDownOnOccupiedCell:Z

    .line 93
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    .line 94
    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mFolderLeaveBehindCell:[I

    .line 96
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher2/CellLayout;->mForegroundAlpha:I

    .line 98
    const/high16 v11, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher2/CellLayout;->mBackgroundAlphaMultiplier:F

    .line 110
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    .line 111
    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mDragCenter:Landroid/graphics/Point;

    .line 115
    const/4 v11, 0x4

    new-array v11, v11, [Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    .line 116
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v11, v11

    new-array v11, v11, [F

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAlphas:[F

    .line 117
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v11, v11

    new-array v11, v11, [Lcom/android/launcher2/InterruptibleInOutAnimator;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    .line 121
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    .line 122
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    .line 126
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    .line 128
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mShakeAnimators:Ljava/util/HashMap;

    .line 131
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/launcher2/CellLayout;->mItemPlacementDirty:Z

    .line 134
    const/4 v11, 0x2

    new-array v11, v11, [I

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    .line 136
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    .line 141
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/launcher2/CellLayout;->mIsHotseat:Z

    .line 142
    const/high16 v11, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher2/CellLayout;->mHotseatScale:F

    .line 158
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    .line 159
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    .line 160
    const/4 v11, 0x2

    new-array v11, v11, [I

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mDirectionVector:[I

    .line 161
    const/4 v11, 0x2

    new-array v11, v11, [I

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mPreviousReorderDirection:[I

    .line 406
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->temp:Landroid/graphics/Rect;

    .line 1331
    new-instance v11, Ljava/util/Stack;

    invoke-direct {v11}, Ljava/util/Stack;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mTempRectStack:Ljava/util/Stack;

    .line 179
    new-instance v11, Lcom/android/launcher2/DropTarget$DragEnforcer;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lcom/android/launcher2/DropTarget$DragEnforcer;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mDragEnforcer:Lcom/android/launcher2/DropTarget$DragEnforcer;

    .line 183
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher2/CellLayout;->setWillNotDraw(Z)V

    move-object/from16 v11, p1

    .line 184
    check-cast v11, Lcom/android/launcher2/Launcher;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 186
    sget-object v11, Lcom/android/launcher/R$styleable;->CellLayout:[I

    const/4 v12, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v11, v2, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 188
    .local v3, "a":Landroid/content/res/TypedArray;
    const/4 v11, 0x0

    const/16 v12, 0xa

    invoke-virtual {v3, v11, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    .line 189
    const/4 v11, 0x1

    const/16 v12, 0xa

    invoke-virtual {v3, v11, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    .line 190
    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher2/CellLayout;->mOriginalWidthGap:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    .line 191
    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher2/CellLayout;->mOriginalHeightGap:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    .line 192
    const/4 v11, 0x4

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher2/CellLayout;->mMaxGap:I

    .line 193
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    .line 194
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    .line 195
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    filled-new-array {v11, v12}, [I

    move-result-object v11

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v12, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[Z

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    .line 196
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    filled-new-array {v11, v12}, [I

    move-result-object v11

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v12, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[Z

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    .line 197
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayout;->mPreviousReorderDirection:[I

    const/4 v12, 0x0

    const/16 v13, -0x64

    aput v13, v11, v12

    .line 198
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayout;->mPreviousReorderDirection:[I

    const/4 v12, 0x1

    const/16 v13, -0x64

    aput v13, v11, v12

    .line 200
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 202
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher2/CellLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 205
    .local v8, "res":Landroid/content/res/Resources;
    const v11, 0x7f0a0021

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher2/CellLayout;->mHotseatScale:F

    .line 207
    const v11, 0x7f020016

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mNormalBackground:Landroid/graphics/drawable/Drawable;

    .line 208
    const v11, 0x7f020017

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mActiveGlowBackground:Landroid/graphics/drawable/Drawable;

    .line 210
    const v11, 0x7f020027

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mOverScrollLeft:Landroid/graphics/drawable/Drawable;

    .line 211
    const v11, 0x7f020028

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mOverScrollRight:Landroid/graphics/drawable/Drawable;

    .line 212
    const v11, 0x7f0b0016

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher2/CellLayout;->mForegroundPadding:I

    .line 215
    const v11, 0x3df5c28f    # 0.12f

    const v12, 0x7f0b0022

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v11, v12

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher2/CellLayout;->mReorderHintAnimationMagnitude:F

    .line 218
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayout;->mNormalBackground:Landroid/graphics/drawable/Drawable;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 219
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayout;->mActiveGlowBackground:Landroid/graphics/drawable/Drawable;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 223
    new-instance v11, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v12, 0x40200000    # 2.5f

    invoke-direct {v11, v12}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    .line 226
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v14, 0x1

    const/4 v15, -0x1

    aput v15, v13, v14

    aput v15, v11, v12

    .line 227
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v11, v11

    if-ge v7, v11, :cond_0

    .line 228
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    new-instance v12, Landroid/graphics/Rect;

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    invoke-direct/range {v12 .. v16}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v12, v11, v7

    .line 227
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 235
    :cond_0
    const v11, 0x7f0a0011

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 236
    .local v5, "duration":I
    const/4 v6, 0x0

    .line 237
    .local v6, "fromAlphaValue":F
    const v11, 0x7f0a0012

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    int-to-float v10, v11

    .line 239
    .local v10, "toAlphaValue":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAlphas:[F

    const/4 v12, 0x0

    invoke-static {v11, v12}, Ljava/util/Arrays;->fill([FF)V

    .line 241
    const/4 v7, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    array-length v11, v11

    if-ge v7, v11, :cond_1

    .line 242
    new-instance v4, Lcom/android/launcher2/InterruptibleInOutAnimator;

    int-to-long v11, v5

    const/4 v13, 0x0

    invoke-direct {v4, v11, v12, v13, v10}, Lcom/android/launcher2/InterruptibleInOutAnimator;-><init>(JFF)V

    .line 244
    .local v4, "anim":Lcom/android/launcher2/InterruptibleInOutAnimator;
    invoke-virtual {v4}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 245
    move v9, v7

    .line 246
    .local v9, "thisIndex":I
    invoke-virtual {v4}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v11

    new-instance v12, Lcom/android/launcher2/CellLayout$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v4, v9}, Lcom/android/launcher2/CellLayout$1;-><init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/InterruptibleInOutAnimator;I)V

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 270
    invoke-virtual {v4}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v11

    new-instance v12, Lcom/android/launcher2/CellLayout$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v4}, Lcom/android/launcher2/CellLayout$2;-><init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/InterruptibleInOutAnimator;)V

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 278
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    aput-object v4, v11, v7

    .line 241
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 281
    .end local v4    # "anim":Lcom/android/launcher2/InterruptibleInOutAnimator;
    .end local v9    # "thisIndex":I
    :cond_1
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    .line 282
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mForegroundRect:Landroid/graphics/Rect;

    .line 284
    new-instance v11, Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    .line 285
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->setCellDimensions(IIII)V

    .line 286
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher2/CellLayout;->addView(Landroid/view/View;)V

    .line 287
    return-void

    .line 94
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/launcher2/CellLayout;)[F
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/CellLayout;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAlphas:[F

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/CellLayout;)[Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/CellLayout;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/CellLayout;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/CellLayout;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/CellLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/CellLayout;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/CellLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/CellLayout;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/CellLayout;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/CellLayout;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mTmpPoint:[I

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/CellLayout;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/CellLayout;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mReorderHintAnimationMagnitude:F

    return v0
.end method

.method static synthetic access$700(Lcom/android/launcher2/CellLayout;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/CellLayout;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mShakeAnimators:Ljava/util/HashMap;

    return-object v0
.end method

.method private addViewToTempLocation(Landroid/view/View;Landroid/graphics/Rect;[ILcom/android/launcher2/CellLayout$ItemConfiguration;)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "rectOccupiedByPotentialDrop"    # Landroid/graphics/Rect;
    .param p3, "direction"    # [I
    .param p4, "currentState"    # Lcom/android/launcher2/CellLayout$ItemConfiguration;

    .prologue
    .line 1561
    iget-object v0, p4, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/CellLayout$CellAndSpan;

    .line 1562
    .local v9, "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    const/4 v10, 0x0

    .line 1563
    .local v10, "success":Z
    iget v1, v9, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v2, v9, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v3, v9, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    iget v4, v9, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIII[[ZZ)V

    .line 1564
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Lcom/android/launcher2/CellLayout;->markCellsForRect(Landroid/graphics/Rect;[[ZZ)V

    .line 1566
    iget v1, v9, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v2, v9, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v3, v9, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    iget v4, v9, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    iget-object v6, p0, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    const/4 v7, 0x0

    check-cast v7, [[Z

    iget-object v8, p0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    move-object v0, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher2/CellLayout;->findNearestArea(IIII[I[[Z[[Z[I)[I

    .line 1568
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    if-ltz v0, :cond_0

    .line 1569
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, v9, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    .line 1570
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, v9, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    .line 1571
    const/4 v10, 0x1

    .line 1573
    :cond_0
    iget v1, v9, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v2, v9, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v3, v9, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    iget v4, v9, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIII[[ZZ)V

    .line 1574
    return v10
.end method

.method private addViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher2/CellLayout$ItemConfiguration;)Z
    .locals 26
    .param p2, "rectOccupiedByPotentialDrop"    # Landroid/graphics/Rect;
    .param p3, "direction"    # [I
    .param p4, "dragView"    # Landroid/view/View;
    .param p5, "currentState"    # Lcom/android/launcher2/CellLayout$ItemConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/graphics/Rect;",
            "[I",
            "Landroid/view/View;",
            "Lcom/android/launcher2/CellLayout$ItemConfiguration;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1909
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    const/16 v23, 0x1

    .line 1961
    :cond_0
    return v23

    .line 1911
    :cond_1
    const/16 v23, 0x0

    .line 1912
    .local v23, "success":Z
    const/16 v17, 0x0

    .line 1914
    .local v17, "boundingRect":Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/view/View;

    .line 1915
    .local v25, "v":Landroid/view/View;
    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/CellLayout$CellAndSpan;

    .line 1916
    .local v18, "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    if-nez v17, :cond_2

    .line 1917
    new-instance v17, Landroid/graphics/Rect;

    .end local v17    # "boundingRect":Landroid/graphics/Rect;
    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v4, v5

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v5, v6

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v17    # "boundingRect":Landroid/graphics/Rect;
    goto :goto_0

    .line 1919
    :cond_2
    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v4, v5

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v5, v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->union(IIII)V

    goto :goto_0

    .line 1924
    .end local v18    # "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    .end local v25    # "v":Landroid/view/View;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/view/View;

    .line 1925
    .restart local v25    # "v":Landroid/view/View;
    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/CellLayout$CellAndSpan;

    .line 1926
    .restart local v18    # "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_1

    .line 1929
    .end local v18    # "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    .end local v25    # "v":Landroid/view/View;
    :cond_4
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v3

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Z

    .line 1930
    .local v7, "blockOccupied":[[Z
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    .line 1931
    .local v24, "top":I
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    .line 1934
    .local v22, "left":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/view/View;

    .line 1935
    .restart local v25    # "v":Landroid/view/View;
    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/CellLayout$CellAndSpan;

    .line 1936
    .restart local v18    # "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    sub-int v3, v2, v22

    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    sub-int v4, v2, v24

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_2

    .line 1939
    .end local v18    # "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    .end local v25    # "v":Landroid/view/View;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout;->markCellsForRect(Landroid/graphics/Rect;[[ZZ)V

    .line 1941
    move-object/from16 v0, v17

    iget v9, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iget v10, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    move-object/from16 v16, v0

    move-object/from16 v8, p0

    move-object/from16 v13, p3

    move-object v15, v7

    invoke-direct/range {v8 .. v16}, Lcom/android/launcher2/CellLayout;->findNearestArea(IIII[I[[Z[[Z[I)[I

    .line 1945
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ltz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-ltz v2, :cond_7

    .line 1946
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int v19, v2, v3

    .line 1947
    .local v19, "deltaX":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int v20, v2, v3

    .line 1948
    .local v20, "deltaY":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/view/View;

    .line 1949
    .restart local v25    # "v":Landroid/view/View;
    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/CellLayout$CellAndSpan;

    .line 1950
    .restart local v18    # "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    add-int v2, v2, v19

    move-object/from16 v0, v18

    iput v2, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    .line 1951
    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    add-int v2, v2, v20

    move-object/from16 v0, v18

    iput v2, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    goto :goto_3

    .line 1953
    .end local v18    # "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    .end local v25    # "v":Landroid/view/View;
    :cond_6
    const/16 v23, 0x1

    .line 1957
    .end local v19    # "deltaX":I
    .end local v20    # "deltaY":I
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/view/View;

    .line 1958
    .restart local v25    # "v":Landroid/view/View;
    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/CellLayout$CellAndSpan;

    .line 1959
    .restart local v18    # "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    move-object/from16 v0, v18

    iget v9, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    move-object/from16 v0, v18

    iget v10, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    move-object/from16 v0, v18

    iget v11, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    move-object/from16 v0, v18

    iget v12, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    const/4 v14, 0x1

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v14}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_4
.end method

.method private animateItemsToSolution(Lcom/android/launcher2/CellLayout$ItemConfiguration;Landroid/view/View;Z)V
    .locals 15
    .param p1, "solution"    # Lcom/android/launcher2/CellLayout$ItemConfiguration;
    .param p2, "dragView"    # Landroid/view/View;
    .param p3, "commitDragView"    # Z

    .prologue
    .line 2227
    iget-object v14, p0, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    check-cast v14, [[Z

    .line 2228
    .local v14, "occupied":[[Z
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    if-ge v12, v1, :cond_1

    .line 2229
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_1
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    if-ge v13, v1, :cond_0

    .line 2230
    aget-object v1, v14, v12

    const/4 v3, 0x0

    aput-boolean v3, v1, v13

    .line 2229
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 2228
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 2234
    .end local v13    # "j":I
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v11

    .line 2235
    .local v11, "childCount":I
    const/4 v12, 0x0

    :goto_2
    if-ge v12, v11, :cond_4

    .line 2236
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v1, v12}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2237
    .local v2, "child":Landroid/view/View;
    move-object/from16 v0, p2

    if-ne v2, v0, :cond_3

    .line 2235
    :cond_2
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 2238
    :cond_3
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/CellLayout$CellAndSpan;

    .line 2239
    .local v10, "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    if-eqz v10, :cond_2

    .line 2240
    iget v3, v10, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v4, v10, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    const/16 v5, 0x96

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher2/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    .line 2242
    iget v4, v10, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v5, v10, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v6, v10, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    iget v7, v10, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    const/4 v9, 0x1

    move-object v3, p0

    move-object v8, v14

    invoke-direct/range {v3 .. v9}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_3

    .line 2245
    .end local v2    # "child":Landroid/view/View;
    .end local v10    # "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    :cond_4
    if-eqz p3, :cond_5

    .line 2246
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewX:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewY:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewSpanX:I

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewSpanY:I

    const/4 v9, 0x1

    move-object v3, p0

    move-object v8, v14

    invoke-direct/range {v3 .. v9}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIII[[ZZ)V

    .line 2249
    :cond_5
    return-void
.end method

.method private attemptPushInDirection(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher2/CellLayout$ItemConfiguration;)Z
    .locals 5
    .param p2, "occupied"    # Landroid/graphics/Rect;
    .param p3, "direction"    # [I
    .param p4, "ignoreView"    # Landroid/view/View;
    .param p5, "solution"    # Lcom/android/launcher2/CellLayout$ItemConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/graphics/Rect;",
            "[I",
            "Landroid/view/View;",
            "Lcom/android/launcher2/CellLayout$ItemConfiguration;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "intersectingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1973
    aget v3, p3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    aget v4, p3, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v3, v4

    if-le v3, v1, :cond_2

    .line 1976
    aget v0, p3, v1

    .line 1977
    .local v0, "temp":I
    aput v2, p3, v1

    .line 1979
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher2/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher2/CellLayout$ItemConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2062
    .end local v0    # "temp":I
    :cond_0
    :goto_0
    return v1

    .line 1983
    .restart local v0    # "temp":I
    :cond_1
    aput v0, p3, v1

    .line 1984
    aget v0, p3, v2

    .line 1985
    aput v2, p3, v2

    .line 1987
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher2/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher2/CellLayout$ItemConfiguration;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1992
    aput v0, p3, v2

    .line 1995
    aget v3, p3, v2

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v2

    .line 1996
    aget v3, p3, v1

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v1

    .line 1997
    aget v0, p3, v1

    .line 1998
    aput v2, p3, v1

    .line 1999
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher2/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher2/CellLayout$ItemConfiguration;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2004
    aput v0, p3, v1

    .line 2005
    aget v0, p3, v2

    .line 2006
    aput v2, p3, v2

    .line 2007
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher2/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher2/CellLayout$ItemConfiguration;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2012
    aput v0, p3, v2

    .line 2013
    aget v3, p3, v2

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v2

    .line 2014
    aget v3, p3, v1

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v1

    :goto_1
    move v1, v2

    .line 2062
    goto :goto_0

    .line 2019
    .end local v0    # "temp":I
    :cond_2
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher2/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher2/CellLayout$ItemConfiguration;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2024
    aget v3, p3, v2

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v2

    .line 2025
    aget v3, p3, v1

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v1

    .line 2026
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher2/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher2/CellLayout$ItemConfiguration;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2031
    aget v3, p3, v2

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v2

    .line 2032
    aget v3, p3, v1

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v1

    .line 2038
    aget v0, p3, v1

    .line 2039
    .restart local v0    # "temp":I
    aget v3, p3, v2

    aput v3, p3, v1

    .line 2040
    aput v0, p3, v2

    .line 2041
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher2/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher2/CellLayout$ItemConfiguration;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2047
    aget v3, p3, v2

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v2

    .line 2048
    aget v3, p3, v1

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v1

    .line 2049
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher2/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher2/CellLayout$ItemConfiguration;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2054
    aget v3, p3, v2

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v2

    .line 2055
    aget v3, p3, v1

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v1

    .line 2058
    aget v0, p3, v1

    .line 2059
    aget v3, p3, v2

    aput v3, p3, v1

    .line 2060
    aput v0, p3, v2

    goto :goto_1
.end method

.method private beginOrAdjustHintAnimations(Lcom/android/launcher2/CellLayout$ItemConfiguration;Landroid/view/View;I)V
    .locals 13
    .param p1, "solution"    # Lcom/android/launcher2/CellLayout$ItemConfiguration;
    .param p2, "dragView"    # Landroid/view/View;
    .param p3, "delay"    # I

    .prologue
    .line 2253
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v10

    .line 2254
    .local v10, "childCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v10, :cond_2

    .line 2255
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v1, v11}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2256
    .local v2, "child":Landroid/view/View;
    if-ne v2, p2, :cond_1

    .line 2254
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 2257
    :cond_1
    iget-object v1, p1, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/CellLayout$CellAndSpan;

    .line 2258
    .local v9, "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 2259
    .local v12, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    if-eqz v9, :cond_0

    .line 2260
    new-instance v0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;

    iget v3, v12, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v4, v12, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v5, v9, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v6, v9, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v7, v9, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    iget v8, v9, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;-><init>(Lcom/android/launcher2/CellLayout;Landroid/view/View;IIIIII)V

    .line 2262
    .local v0, "rha":Lcom/android/launcher2/CellLayout$ReorderHintAnimation;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->animate()V

    goto :goto_1

    .line 2265
    .end local v0    # "rha":Lcom/android/launcher2/CellLayout$ReorderHintAnimation;
    .end local v2    # "child":Landroid/view/View;
    .end local v9    # "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    .end local v12    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_2
    return-void
.end method

.method private clearOccupiedCells()V
    .locals 4

    .prologue
    .line 3071
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_0
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    if-ge v0, v2, :cond_1

    .line 3072
    const/4 v1, 0x0

    .local v1, "y":I
    :goto_1
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    if-ge v1, v2, :cond_0

    .line 3073
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 3072
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3071
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3076
    .end local v1    # "y":I
    :cond_1
    return-void
.end method

.method private clearTagCellInfo()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 777
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    .line 778
    .local v0, "cellInfo":Lcom/android/launcher2/CellLayout$CellInfo;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 779
    iput v2, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    .line 780
    iput v2, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    .line 781
    iput v3, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    .line 782
    iput v3, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    .line 783
    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->setTag(Ljava/lang/Object;)V

    .line 784
    return-void
.end method

.method private commitTempPlacement()V
    .locals 8

    .prologue
    .line 2390
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v6, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    if-ge v2, v6, :cond_1

    .line 2391
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    iget v6, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    if-ge v4, v6, :cond_0

    .line 2392
    iget-object v6, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    aget-object v6, v6, v2

    iget-object v7, p0, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    aget-object v7, v7, v2

    aget-boolean v7, v7, v4

    aput-boolean v7, v6, v4

    .line 2391
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2390
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2395
    .end local v4    # "j":I
    :cond_1
    iget-object v6, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v6}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v1

    .line 2396
    .local v1, "childCount":I
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_5

    .line 2397
    iget-object v6, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v6, v2}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2398
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 2399
    .local v5, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/ItemInfo;

    .line 2402
    .local v3, "info":Lcom/android/launcher2/ItemInfo;
    if-eqz v3, :cond_4

    .line 2403
    iget v6, v3, Lcom/android/launcher2/ItemInfo;->cellX:I

    iget v7, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellX:I

    if-ne v6, v7, :cond_2

    iget v6, v3, Lcom/android/launcher2/ItemInfo;->cellY:I

    iget v7, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    if-ne v6, v7, :cond_2

    iget v6, v3, Lcom/android/launcher2/ItemInfo;->spanX:I

    iget v7, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    if-ne v6, v7, :cond_2

    iget v6, v3, Lcom/android/launcher2/ItemInfo;->spanY:I

    iget v7, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    if-eq v6, v7, :cond_3

    .line 2405
    :cond_2
    const/4 v6, 0x1

    iput-boolean v6, v3, Lcom/android/launcher2/ItemInfo;->requiresDbUpdate:Z

    .line 2407
    :cond_3
    iget v6, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellX:I

    iput v6, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iput v6, v3, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 2408
    iget v6, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    iput v6, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iput v6, v3, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 2409
    iget v6, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iput v6, v3, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 2410
    iget v6, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    iput v6, v3, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 2396
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2413
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "info":Lcom/android/launcher2/ItemInfo;
    .end local v5    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_5
    iget-object v6, p0, Lcom/android/launcher2/CellLayout;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/android/launcher2/Workspace;->updateItemLocationsInDatabase(Lcom/android/launcher2/CellLayout;)V

    .line 2414
    return-void
.end method

.method private completeAndClearReorderHintAnimations()V
    .locals 3

    .prologue
    .line 2383
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mShakeAnimators:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;

    .line 2384
    .local v0, "a":Lcom/android/launcher2/CellLayout$ReorderHintAnimation;
    invoke-static {v0}, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->access$800(Lcom/android/launcher2/CellLayout$ReorderHintAnimation;)V

    goto :goto_0

    .line 2386
    .end local v0    # "a":Lcom/android/launcher2/CellLayout$ReorderHintAnimation;
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mShakeAnimators:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 2387
    return-void
.end method

.method private computeDirectionVector(FF[I)V
    .locals 8
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F
    .param p3, "result"    # [I

    .prologue
    const/4 v7, 0x1

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    const/4 v4, 0x0

    .line 2124
    div-float v2, p2, p1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    .line 2126
    .local v0, "angle":D
    aput v4, p3, v4

    .line 2127
    aput v4, p3, v7

    .line 2128
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v2, v2, v5

    if-lez v2, :cond_0

    .line 2129
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, p3, v4

    .line 2131
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v2, v2, v5

    if-lez v2, :cond_1

    .line 2132
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, p3, v7

    .line 2134
    :cond_1
    return-void
.end method

.method private copyCurrentStateToSolution(Lcom/android/launcher2/CellLayout$ItemConfiguration;Z)V
    .locals 10
    .param p1, "solution"    # Lcom/android/launcher2/CellLayout$ItemConfiguration;
    .param p2, "temp"    # Z

    .prologue
    .line 2185
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v7

    .line 2186
    .local v7, "childCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_1

    .line 2187
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v1, v8}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2188
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 2190
    .local v9, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    if-eqz p2, :cond_0

    .line 2191
    new-instance v0, Lcom/android/launcher2/CellLayout$CellAndSpan;

    iget v2, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellX:I

    iget v3, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    iget v4, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v5, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/CellLayout$CellAndSpan;-><init>(Lcom/android/launcher2/CellLayout;IIII)V

    .line 2195
    .local v0, "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    :goto_1
    invoke-virtual {p1, v6, v0}, Lcom/android/launcher2/CellLayout$ItemConfiguration;->add(Landroid/view/View;Lcom/android/launcher2/CellLayout$CellAndSpan;)V

    .line 2186
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2193
    .end local v0    # "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    :cond_0
    new-instance v0, Lcom/android/launcher2/CellLayout$CellAndSpan;

    iget v2, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v3, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v4, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v5, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/CellLayout$CellAndSpan;-><init>(Lcom/android/launcher2/CellLayout;IIII)V

    .restart local v0    # "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    goto :goto_1

    .line 2197
    .end local v0    # "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    .end local v6    # "child":Landroid/view/View;
    .end local v9    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method private copyOccupiedArray([[Z)V
    .locals 4
    .param p1, "occupied"    # [[Z

    .prologue
    .line 2137
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    if-ge v0, v2, :cond_1

    .line 2138
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    if-ge v1, v2, :cond_0

    .line 2139
    aget-object v2, p1, v0

    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    aget-object v3, v3, v0

    aget-boolean v3, v3, v1

    aput-boolean v3, v2, v1

    .line 2138
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2137
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2142
    .end local v1    # "j":I
    :cond_1
    return-void
.end method

.method private copySolutionToTempState(Lcom/android/launcher2/CellLayout$ItemConfiguration;Landroid/view/View;)V
    .locals 13
    .param p1, "solution"    # Lcom/android/launcher2/CellLayout$ItemConfiguration;
    .param p2, "dragView"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 2200
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    if-ge v10, v0, :cond_1

    .line 2201
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    if-ge v11, v0, :cond_0

    .line 2202
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    aget-object v0, v0, v10

    const/4 v1, 0x0

    aput-boolean v1, v0, v11

    .line 2201
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 2200
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 2206
    .end local v11    # "j":I
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v9

    .line 2207
    .local v9, "childCount":I
    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_4

    .line 2208
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v0, v10}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 2209
    .local v8, "child":Landroid/view/View;
    if-ne v8, p2, :cond_3

    .line 2207
    :cond_2
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 2210
    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 2211
    .local v12, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    iget-object v0, p1, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout$CellAndSpan;

    .line 2212
    .local v7, "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    if-eqz v7, :cond_2

    .line 2213
    iget v0, v7, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iput v0, v12, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellX:I

    .line 2214
    iget v0, v7, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iput v0, v12, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    .line 2215
    iget v0, v7, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    iput v0, v12, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 2216
    iget v0, v7, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    iput v0, v12, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 2217
    iget v1, v7, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v2, v7, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v3, v7, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    iget v4, v7, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_3

    .line 2220
    .end local v7    # "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    .end local v8    # "child":Landroid/view/View;
    .end local v12    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_4
    iget v1, p1, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewX:I

    iget v2, p1, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewY:I

    iget v3, p1, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewSpanX:I

    iget v4, p1, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewSpanY:I

    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIII[[ZZ)V

    .line 2222
    return-void
.end method

.method private findNearestArea(IIII[I[[Z[[Z[I)[I
    .locals 20
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "direction"    # [I
    .param p6, "occupied"    # [[Z
    .param p7, "blockOccupied"    # [[Z
    .param p8, "result"    # [I

    .prologue
    .line 1510
    if-eqz p8, :cond_1

    move-object/from16 v5, p8

    .line 1511
    .local v5, "bestXY":[I
    :goto_0
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    .line 1512
    .local v4, "bestDistance":F
    const/high16 v3, -0x80000000

    .line 1514
    .local v3, "bestDirectionScore":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    .line 1515
    .local v6, "countX":I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    .line 1517
    .local v7, "countY":I
    const/16 v16, 0x0

    .local v16, "y":I
    :goto_1
    add-int/lit8 v17, p4, -0x1

    sub-int v17, v7, v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_a

    .line 1519
    const/4 v15, 0x0

    .local v15, "x":I
    :goto_2
    add-int/lit8 v17, p3, -0x1

    sub-int v17, v6, v17

    move/from16 v0, v17

    if-ge v15, v0, :cond_9

    .line 1521
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3
    move/from16 v0, p3

    if-ge v13, v0, :cond_4

    .line 1522
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_4
    move/from16 v0, p4

    if-ge v14, v0, :cond_3

    .line 1523
    add-int v17, v15, v13

    aget-object v17, p6, v17

    add-int v18, v16, v14

    aget-boolean v17, v17, v18

    if-eqz v17, :cond_2

    if-eqz p7, :cond_0

    aget-object v17, p7, v13

    aget-boolean v17, v17, v14

    if-eqz v17, :cond_2

    .line 1519
    .end local v14    # "j":I
    :cond_0
    :goto_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 1510
    .end local v3    # "bestDirectionScore":I
    .end local v4    # "bestDistance":F
    .end local v5    # "bestXY":[I
    .end local v6    # "countX":I
    .end local v7    # "countY":I
    .end local v13    # "i":I
    .end local v15    # "x":I
    .end local v16    # "y":I
    :cond_1
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v5, v0, [I

    goto :goto_0

    .line 1522
    .restart local v3    # "bestDirectionScore":I
    .restart local v4    # "bestDistance":F
    .restart local v5    # "bestXY":[I
    .restart local v6    # "countX":I
    .restart local v7    # "countY":I
    .restart local v13    # "i":I
    .restart local v14    # "j":I
    .restart local v15    # "x":I
    .restart local v16    # "y":I
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 1521
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 1529
    .end local v14    # "j":I
    :cond_4
    sub-int v17, v15, p1

    sub-int v18, v15, p1

    mul-int v17, v17, v18

    sub-int v18, v16, p2

    sub-int v19, v16, p2

    mul-int v18, v18, v19

    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v11, v0

    .line 1531
    .local v11, "distance":F
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/CellLayout;->mTmpPoint:[I

    .line 1532
    .local v8, "curDirection":[I
    sub-int v17, v15, p1

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-int v18, v16, p2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v8}, Lcom/android/launcher2/CellLayout;->computeDirectionVector(FF[I)V

    .line 1535
    const/16 v17, 0x0

    aget v17, p5, v17

    const/16 v18, 0x0

    aget v18, v8, v18

    mul-int v17, v17, v18

    const/16 v18, 0x1

    aget v18, p5, v18

    const/16 v19, 0x1

    aget v19, v8, v19

    mul-int v18, v18, v19

    add-int v9, v17, v18

    .line 1537
    .local v9, "curDirectionScore":I
    const/4 v12, 0x0

    .line 1538
    .local v12, "exactDirectionOnly":Z
    const/16 v17, 0x0

    aget v17, p5, v17

    const/16 v18, 0x0

    aget v18, v8, v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    const/16 v17, 0x0

    aget v17, p5, v17

    const/16 v18, 0x0

    aget v18, v8, v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    const/4 v10, 0x1

    .line 1540
    .local v10, "directionMatches":Z
    :goto_6
    if-nez v10, :cond_5

    if-nez v12, :cond_6

    :cond_5
    invoke-static {v11, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v17

    if-ltz v17, :cond_7

    :cond_6
    invoke-static {v11, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v17

    if-nez v17, :cond_0

    if-le v9, v3, :cond_0

    .line 1543
    :cond_7
    move v4, v11

    .line 1544
    move v3, v9

    .line 1545
    const/16 v17, 0x0

    aput v15, v5, v17

    .line 1546
    const/16 v17, 0x1

    aput v16, v5, v17

    goto/16 :goto_5

    .line 1538
    .end local v10    # "directionMatches":Z
    :cond_8
    const/4 v10, 0x0

    goto :goto_6

    .line 1517
    .end local v8    # "curDirection":[I
    .end local v9    # "curDirectionScore":I
    .end local v11    # "distance":F
    .end local v12    # "exactDirectionOnly":Z
    .end local v13    # "i":I
    :cond_9
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 1552
    .end local v15    # "x":I
    :cond_a
    const v17, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v17, v4, v17

    if-nez v17, :cond_b

    .line 1553
    const/16 v17, 0x0

    const/16 v18, -0x1

    aput v18, v5, v17

    .line 1554
    const/16 v17, 0x1

    const/16 v18, -0x1

    aput v18, v5, v17

    .line 1556
    :cond_b
    return-object v5
.end method

.method static findVacantCell([IIIII[[Z)Z
    .locals 8
    .param p0, "vacant"    # [I
    .param p1, "spanX"    # I
    .param p2, "spanY"    # I
    .param p3, "xCount"    # I
    .param p4, "yCount"    # I
    .param p5, "occupied"    # [[Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 3049
    const/4 v4, 0x0

    .local v4, "y":I
    :goto_0
    if-ge v4, p4, :cond_7

    .line 3050
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_1
    if-ge v3, p3, :cond_6

    .line 3051
    aget-object v7, p5, v3

    aget-boolean v7, v7, v4

    if-nez v7, :cond_1

    move v0, v5

    .line 3052
    .local v0, "available":Z
    :goto_2
    move v1, v3

    .local v1, "i":I
    :goto_3
    add-int v7, v3, p1

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_0

    if-ge v3, p3, :cond_0

    .line 3053
    move v2, v4

    .local v2, "j":I
    :goto_4
    add-int v7, v4, p2

    add-int/lit8 v7, v7, -0x1

    if-ge v2, v7, :cond_4

    if-ge v4, p4, :cond_4

    .line 3054
    if-eqz v0, :cond_2

    aget-object v7, p5, v1

    aget-boolean v7, v7, v2

    if-nez v7, :cond_2

    move v0, v5

    .line 3055
    :goto_5
    if-nez v0, :cond_3

    .line 3059
    .end local v2    # "j":I
    :cond_0
    if-eqz v0, :cond_5

    .line 3060
    aput v3, p0, v6

    .line 3061
    aput v4, p0, v5

    .line 3067
    .end local v0    # "available":Z
    .end local v1    # "i":I
    .end local v3    # "x":I
    :goto_6
    return v5

    .restart local v3    # "x":I
    :cond_1
    move v0, v6

    .line 3051
    goto :goto_2

    .restart local v0    # "available":Z
    .restart local v1    # "i":I
    .restart local v2    # "j":I
    :cond_2
    move v0, v6

    .line 3054
    goto :goto_5

    .line 3053
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 3052
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3050
    .end local v2    # "j":I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3049
    .end local v0    # "available":Z
    .end local v1    # "i":I
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v3    # "x":I
    :cond_7
    move v5, v6

    .line 3067
    goto :goto_6
.end method

.method private getDirectionVectorForDrop(IIIILandroid/view/View;[I)V
    .locals 26
    .param p1, "dragViewCenterX"    # I
    .param p2, "dragViewCenterY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "dragView"    # Landroid/view/View;
    .param p6, "resultDirection"    # [I

    .prologue
    .line 2457
    const/4 v2, 0x2

    new-array v7, v2, [I

    .local v7, "targetDestination":[I
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    .line 2459
    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher2/CellLayout;->findNearestArea(IIII[I)[I

    .line 2460
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 2461
    .local v13, "dragRect":Landroid/graphics/Rect;
    const/4 v2, 0x0

    aget v9, v7, v2

    const/4 v2, 0x1

    aget v10, v7, v2

    move-object/from16 v8, p0

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual/range {v8 .. v13}, Lcom/android/launcher2/CellLayout;->regionToRect(IIIILandroid/graphics/Rect;)V

    .line 2462
    invoke-virtual {v13}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v13}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    sub-int v3, p2, v3

    invoke-virtual {v13, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 2464
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    .line 2465
    .local v20, "dropRegionRect":Landroid/graphics/Rect;
    const/4 v2, 0x0

    aget v15, v7, v2

    const/4 v2, 0x1

    aget v16, v7, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v14, p0

    move/from16 v17, p3

    move/from16 v18, p4

    move-object/from16 v19, p5

    invoke-direct/range {v14 .. v21}, Lcom/android/launcher2/CellLayout;->getViewsIntersectingRegion(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V

    .line 2468
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v24

    .line 2469
    .local v24, "dropRegionSpanX":I
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v25

    .line 2471
    .local v25, "dropRegionSpanY":I
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v18

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v19

    move-object/from16 v15, p0

    invoke-virtual/range {v15 .. v20}, Lcom/android/launcher2/CellLayout;->regionToRect(IIIILandroid/graphics/Rect;)V

    .line 2474
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int v2, v2, p1

    div-int v22, v2, p3

    .line 2475
    .local v22, "deltaX":I
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    sub-int v2, v2, p2

    div-int v23, v2, p4

    .line 2477
    .local v23, "deltaY":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    move/from16 v0, v24

    if-eq v0, v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    move/from16 v0, p3

    if-ne v0, v2, :cond_1

    .line 2478
    :cond_0
    const/16 v22, 0x0

    .line 2480
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    move/from16 v0, v25

    if-eq v0, v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    move/from16 v0, p4

    if-ne v0, v2, :cond_3

    .line 2481
    :cond_2
    const/16 v23, 0x0

    .line 2484
    :cond_3
    if-nez v22, :cond_4

    if-nez v23, :cond_4

    .line 2486
    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, p6, v2

    .line 2487
    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, p6, v2

    .line 2491
    :goto_0
    return-void

    .line 2489
    :cond_4
    move/from16 v0, v22

    int-to-float v2, v0

    move/from16 v0, v23

    int-to-float v3, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v2, v3, v1}, Lcom/android/launcher2/CellLayout;->computeDirectionVector(FF[I)V

    goto :goto_0
.end method

.method static getMetrics(Landroid/graphics/Rect;Landroid/content/res/Resources;IIIII)V
    .locals 18
    .param p0, "metrics"    # Landroid/graphics/Rect;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "measureWidth"    # I
    .param p3, "measureHeight"    # I
    .param p4, "countX"    # I
    .param p5, "countY"    # I
    .param p6, "orientation"    # I

    .prologue
    .line 920
    add-int/lit8 v9, p4, -0x1

    .line 921
    .local v9, "numWidthGaps":I
    add-int/lit8 v8, p5, -0x1

    .line 932
    .local v8, "numHeightGaps":I
    const v17, 0x7f0b000a

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 933
    .local v7, "maxGap":I
    if-nez p6, :cond_2

    .line 934
    const v17, 0x7f0b0052

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 935
    .local v3, "cellWidth":I
    const v17, 0x7f0b0054

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 936
    .local v2, "cellHeight":I
    const v17, 0x7f0b0056

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 937
    .local v16, "widthGap":I
    const v17, 0x7f0b0058

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 938
    .local v6, "heightGap":I
    const v17, 0x7f0b0043

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 939
    .local v11, "paddingLeft":I
    const v17, 0x7f0b0045

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 940
    .local v12, "paddingRight":I
    const v17, 0x7f0b0047

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 941
    .local v13, "paddingTop":I
    const v17, 0x7f0b0049

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 954
    .local v10, "paddingBottom":I
    :goto_0
    if-ltz v16, :cond_0

    if-gez v6, :cond_1

    .line 955
    :cond_0
    sub-int v17, p2, v11

    sub-int v5, v17, v12

    .line 956
    .local v5, "hSpace":I
    sub-int v17, p3, v13

    sub-int v15, v17, v10

    .line 957
    .local v15, "vSpace":I
    mul-int v17, p4, v3

    sub-int v4, v5, v17

    .line 958
    .local v4, "hFreeSpace":I
    mul-int v17, p5, v2

    sub-int v14, v15, v17

    .line 959
    .local v14, "vFreeSpace":I
    if-lez v9, :cond_3

    div-int v17, v4, v9

    :goto_1
    move/from16 v0, v17

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 960
    if-lez v8, :cond_4

    div-int v17, v14, v8

    :goto_2
    move/from16 v0, v17

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 962
    .end local v4    # "hFreeSpace":I
    .end local v5    # "hSpace":I
    .end local v14    # "vFreeSpace":I
    .end local v15    # "vSpace":I
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v3, v2, v1, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 963
    return-void

    .line 944
    .end local v2    # "cellHeight":I
    .end local v3    # "cellWidth":I
    .end local v6    # "heightGap":I
    .end local v10    # "paddingBottom":I
    .end local v11    # "paddingLeft":I
    .end local v12    # "paddingRight":I
    .end local v13    # "paddingTop":I
    .end local v16    # "widthGap":I
    :cond_2
    const v17, 0x7f0b0053

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 945
    .restart local v3    # "cellWidth":I
    const v17, 0x7f0b0055

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 946
    .restart local v2    # "cellHeight":I
    const v17, 0x7f0b0057

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 947
    .restart local v16    # "widthGap":I
    const v17, 0x7f0b0059

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 948
    .restart local v6    # "heightGap":I
    const v17, 0x7f0b0042

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 949
    .restart local v11    # "paddingLeft":I
    const v17, 0x7f0b0044

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 950
    .restart local v12    # "paddingRight":I
    const v17, 0x7f0b0046

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 951
    .restart local v13    # "paddingTop":I
    const v17, 0x7f0b0048

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .restart local v10    # "paddingBottom":I
    goto/16 :goto_0

    .line 959
    .restart local v4    # "hFreeSpace":I
    .restart local v5    # "hSpace":I
    .restart local v14    # "vFreeSpace":I
    .restart local v15    # "vSpace":I
    :cond_3
    const/16 v17, 0x0

    goto :goto_1

    .line 960
    :cond_4
    const/16 v17, 0x0

    goto :goto_2
.end method

.method private getViewsIntersectingRegion(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V
    .locals 12
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "dragView"    # Landroid/view/View;
    .param p6, "boundingRect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2496
    .local p7, "intersectingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p6, :cond_0

    .line 2497
    add-int v7, p1, p3

    add-int v8, p2, p4

    move-object/from16 v0, p6

    invoke-virtual {v0, p1, p2, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 2499
    :cond_0
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->clear()V

    .line 2500
    new-instance v5, Landroid/graphics/Rect;

    add-int v7, p1, p3

    add-int v8, p2, p4

    invoke-direct {v5, p1, p2, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2501
    .local v5, "r0":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 2502
    .local v6, "r1":Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v7}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v2

    .line 2503
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 2504
    iget-object v7, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v7, v3}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2505
    .local v1, "child":Landroid/view/View;
    move-object/from16 v0, p5

    if-ne v1, v0, :cond_2

    .line 2503
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2506
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 2507
    .local v4, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v7, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v8, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v9, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v10, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v9, v10

    iget v10, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v11, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 2508
    invoke-static {v5, v6}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2509
    iget-object v7, p0, Lcom/android/launcher2/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2510
    if-eqz p6, :cond_1

    .line 2511
    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 2515
    .end local v1    # "child":Landroid/view/View;
    .end local v4    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_3
    return-void
.end method

.method static heightInLandscape(Landroid/content/res/Resources;I)I
    .locals 4
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "numCells"    # I

    .prologue
    .line 304
    const v2, 0x7f0b006a

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 305
    .local v0, "cellHeight":I
    const v2, 0x7f0b006b

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0b006c

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 308
    .local v1, "minGap":I
    add-int/lit8 v2, p1, -0x1

    mul-int/2addr v2, v1

    mul-int v3, v0, p1

    add-int/2addr v2, v3

    return v2
.end method

.method private invalidateBubbleTextView(Lcom/android/launcher2/BubbleTextView;)V
    .locals 6
    .param p1, "icon"    # Lcom/android/launcher2/BubbleTextView;

    .prologue
    .line 337
    invoke-virtual {p1}, Lcom/android/launcher2/BubbleTextView;->getPressedOrFocusedBackgroundPadding()I

    move-result v0

    .line 338
    .local v0, "padding":I
    invoke-virtual {p1}, Lcom/android/launcher2/BubbleTextView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v1, v0

    invoke-virtual {p1}, Lcom/android/launcher2/BubbleTextView;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v0

    invoke-virtual {p1}, Lcom/android/launcher2/BubbleTextView;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v0

    invoke-virtual {p1}, Lcom/android/launcher2/BubbleTextView;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/launcher2/CellLayout;->invalidate(IIII)V

    .line 342
    return-void
.end method

.method private lazyInitTempRectStack()V
    .locals 3

    .prologue
    .line 1333
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1334
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    mul-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 1335
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mTempRectStack:Ljava/util/Stack;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1334
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1338
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private markCellsForRect(Landroid/graphics/Rect;[[ZZ)V
    .locals 7
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "occupied"    # [[Z
    .param p3, "value"    # Z

    .prologue
    .line 1965
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object v0, p0

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIII[[ZZ)V

    .line 1966
    return-void
.end method

.method private markCellsForView(IIII[[ZZ)V
    .locals 3
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "occupied"    # [[Z
    .param p6, "value"    # Z

    .prologue
    .line 3103
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 3109
    :cond_0
    return-void

    .line 3104
    :cond_1
    move v0, p1

    .local v0, "x":I
    :goto_0
    add-int v2, p1, p3

    if-ge v0, v2, :cond_0

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    if-ge v0, v2, :cond_0

    .line 3105
    move v1, p2

    .local v1, "y":I
    :goto_1
    add-int v2, p2, p4

    if-ge v1, v2, :cond_2

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    if-ge v1, v2, :cond_2

    .line 3106
    aget-object v2, p5, v0

    aput-boolean p6, v2, v1

    .line 3105
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3104
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher2/CellLayout$ItemConfiguration;)Z
    .locals 20
    .param p2, "rectOccupiedByPotentialDrop"    # Landroid/graphics/Rect;
    .param p3, "direction"    # [I
    .param p4, "dragView"    # Landroid/view/View;
    .param p5, "currentState"    # Lcom/android/launcher2/CellLayout$ItemConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/graphics/Rect;",
            "[I",
            "Landroid/view/View;",
            "Lcom/android/launcher2/CellLayout$ItemConfiguration;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1815
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v11, Lcom/android/launcher2/CellLayout$ViewCluster;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-direct {v11, v0, v1, v2}, Lcom/android/launcher2/CellLayout$ViewCluster;-><init>(Lcom/android/launcher2/CellLayout;Ljava/util/ArrayList;Lcom/android/launcher2/CellLayout$ItemConfiguration;)V

    .line 1816
    .local v11, "cluster":Lcom/android/launcher2/CellLayout$ViewCluster;
    invoke-virtual {v11}, Lcom/android/launcher2/CellLayout$ViewCluster;->getBoundingRect()Landroid/graphics/Rect;

    move-result-object v12

    .line 1819
    .local v12, "clusterRect":Landroid/graphics/Rect;
    const/4 v13, 0x0

    .line 1823
    .local v13, "fail":Z
    const/4 v3, 0x0

    aget v3, p3, v3

    if-gez v3, :cond_1

    .line 1824
    const/16 v19, 0x0

    .line 1825
    .local v19, "whichEdge":I
    iget v3, v12, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int v17, v3, v4

    .line 1838
    .local v17, "pushDistance":I
    :goto_0
    if-gtz v17, :cond_4

    .line 1839
    const/4 v14, 0x0

    .line 1904
    :cond_0
    return v14

    .line 1826
    .end local v17    # "pushDistance":I
    .end local v19    # "whichEdge":I
    :cond_1
    const/4 v3, 0x0

    aget v3, p3, v3

    if-lez v3, :cond_2

    .line 1827
    const/16 v19, 0x2

    .line 1828
    .restart local v19    # "whichEdge":I
    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v12, Landroid/graphics/Rect;->left:I

    sub-int v17, v3, v4

    .restart local v17    # "pushDistance":I
    goto :goto_0

    .line 1829
    .end local v17    # "pushDistance":I
    .end local v19    # "whichEdge":I
    :cond_2
    const/4 v3, 0x1

    aget v3, p3, v3

    if-gez v3, :cond_3

    .line 1830
    const/16 v19, 0x1

    .line 1831
    .restart local v19    # "whichEdge":I
    iget v3, v12, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int v17, v3, v4

    .restart local v17    # "pushDistance":I
    goto :goto_0

    .line 1833
    .end local v17    # "pushDistance":I
    .end local v19    # "whichEdge":I
    :cond_3
    const/16 v19, 0x3

    .line 1834
    .restart local v19    # "whichEdge":I
    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v12, Landroid/graphics/Rect;->top:I

    sub-int v17, v3, v4

    .restart local v17    # "pushDistance":I
    goto :goto_0

    .line 1843
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/View;

    .line 1844
    .local v18, "v":Landroid/view/View;
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/CellLayout$CellAndSpan;

    .line 1845
    .local v10, "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    iget v4, v10, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v5, v10, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v6, v10, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    iget v7, v10, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_1

    .line 1851
    .end local v10    # "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    .end local v18    # "v":Landroid/view/View;
    :cond_5
    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher2/CellLayout$ItemConfiguration;->save()V

    .line 1856
    move/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/android/launcher2/CellLayout$ViewCluster;->sortConfigurationForEdgePush(I)V

    .line 1858
    :goto_2
    if-lez v17, :cond_9

    if-nez v13, :cond_9

    .line 1859
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_6
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/View;

    .line 1863
    .restart local v18    # "v":Landroid/view/View;
    iget-object v3, v11, Lcom/android/launcher2/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    if-eq v0, v1, :cond_6

    .line 1864
    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Lcom/android/launcher2/CellLayout$ViewCluster;->isViewTouchingEdge(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1865
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1866
    .local v16, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    move-object/from16 v0, v16

    iget-boolean v3, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->canReorder:Z

    if-nez v3, :cond_8

    .line 1868
    const/4 v13, 0x1

    .line 1879
    .end local v16    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v18    # "v":Landroid/view/View;
    :cond_7
    add-int/lit8 v17, v17, -0x1

    .line 1883
    const/4 v3, 0x1

    move/from16 v0, v19

    invoke-virtual {v11, v0, v3}, Lcom/android/launcher2/CellLayout$ViewCluster;->shift(II)V

    goto :goto_2

    .line 1871
    .restart local v16    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    .restart local v18    # "v":Landroid/view/View;
    :cond_8
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/android/launcher2/CellLayout$ViewCluster;->addView(Landroid/view/View;)V

    .line 1872
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/CellLayout$CellAndSpan;

    .line 1875
    .restart local v10    # "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    iget v4, v10, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v5, v10, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v6, v10, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    iget v7, v10, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_3

    .line 1886
    .end local v10    # "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    .end local v16    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v18    # "v":Landroid/view/View;
    :cond_9
    const/4 v14, 0x0

    .line 1887
    .local v14, "foundSolution":Z
    invoke-virtual {v11}, Lcom/android/launcher2/CellLayout$ViewCluster;->getBoundingRect()Landroid/graphics/Rect;

    move-result-object v12

    .line 1891
    if-nez v13, :cond_a

    iget v3, v12, Landroid/graphics/Rect;->left:I

    if-ltz v3, :cond_a

    iget v3, v12, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    if-gt v3, v4, :cond_a

    iget v3, v12, Landroid/graphics/Rect;->top:I

    if-ltz v3, :cond_a

    iget v3, v12, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    if-gt v3, v4, :cond_a

    .line 1893
    const/4 v14, 0x1

    .line 1899
    :goto_4
    iget-object v3, v11, Lcom/android/launcher2/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/View;

    .line 1900
    .restart local v18    # "v":Landroid/view/View;
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/CellLayout$CellAndSpan;

    .line 1901
    .restart local v10    # "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    iget v4, v10, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v5, v10, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v6, v10, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    iget v7, v10, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    const/4 v9, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_5

    .line 1895
    .end local v10    # "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    .end local v18    # "v":Landroid/view/View;
    :cond_a
    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher2/CellLayout$ItemConfiguration;->restore()V

    goto :goto_4
.end method

.method private rearrangementExists(IIII[ILandroid/view/View;Lcom/android/launcher2/CellLayout$ItemConfiguration;)Z
    .locals 15
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "direction"    # [I
    .param p6, "ignoreView"    # Landroid/view/View;
    .param p7, "solution"    # Lcom/android/launcher2/CellLayout$ItemConfiguration;

    .prologue
    .line 2068
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 2116
    :goto_0
    return v2

    .line 2070
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2071
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    add-int v3, p1, p3

    add-int v4, p2, p4

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2074
    if-eqz p6, :cond_2

    .line 2075
    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout$CellAndSpan;

    .line 2076
    .local v8, "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    if-eqz v8, :cond_2

    .line 2077
    move/from16 v0, p1

    iput v0, v8, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    .line 2078
    move/from16 v0, p2

    iput v0, v8, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    .line 2081
    .end local v8    # "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    :cond_2
    new-instance v12, Landroid/graphics/Rect;

    add-int v2, p1, p3

    add-int v3, p2, p4

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v12, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2082
    .local v12, "r0":Landroid/graphics/Rect;
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 2083
    .local v13, "r1":Landroid/graphics/Rect;
    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 2084
    .local v9, "child":Landroid/view/View;
    move-object/from16 v0, p6

    if-eq v9, v0, :cond_3

    .line 2085
    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout$CellAndSpan;

    .line 2086
    .restart local v8    # "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 2087
    .local v11, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v2, v8, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v3, v8, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v4, v8, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v5, v8, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v4, v5

    iget v5, v8, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v6, v8, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v5, v6

    invoke-virtual {v13, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 2088
    invoke-static {v12, v13}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2089
    iget-boolean v2, v11, Lcom/android/launcher2/CellLayout$LayoutParams;->canReorder:Z

    if-nez v2, :cond_4

    .line 2090
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2092
    :cond_4
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2099
    .end local v8    # "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    .end local v9    # "child":Landroid/view/View;
    .end local v11    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_5
    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    move-object v2, p0

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher2/CellLayout;->attemptPushInDirection(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher2/CellLayout$ItemConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2101
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2105
    :cond_6
    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    move-object v2, p0

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher2/CellLayout;->addViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher2/CellLayout$ItemConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2107
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2111
    :cond_7
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    .line 2112
    .local v14, "v":Landroid/view/View;
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p5

    move-object/from16 v1, p7

    invoke-direct {p0, v14, v2, v0, v1}, Lcom/android/launcher2/CellLayout;->addViewToTempLocation(Landroid/view/View;Landroid/graphics/Rect;[ILcom/android/launcher2/CellLayout$ItemConfiguration;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 2113
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2116
    .end local v14    # "v":Landroid/view/View;
    :cond_9
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public static rectToCell(Landroid/content/res/Resources;II[I)[I
    .locals 9
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "result"    # [I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2986
    const v5, 0x7f0b0069

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2987
    .local v1, "actualWidth":I
    const v5, 0x7f0b006a

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2988
    .local v0, "actualHeight":I
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2991
    .local v2, "smallerSize":I
    int-to-float v5, p1

    int-to-float v6, v2

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v3, v5

    .line 2992
    .local v3, "spanX":I
    int-to-float v5, p2

    int-to-float v6, v2

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v4, v5

    .line 2994
    .local v4, "spanY":I
    if-nez p3, :cond_0

    .line 2995
    const/4 v5, 0x2

    new-array p3, v5, [I

    .end local p3    # "result":[I
    aput v3, p3, v7

    aput v4, p3, v8

    .line 2999
    :goto_0
    return-object p3

    .line 2997
    .restart local p3    # "result":[I
    :cond_0
    aput v3, p3, v7

    .line 2998
    aput v4, p3, v8

    goto :goto_0
.end method

.method private recycleTempRects(Ljava/util/Stack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1341
    .local p1, "used":Ljava/util/Stack;, "Ljava/util/Stack<Landroid/graphics/Rect;>;"
    :goto_0
    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1342
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1344
    :cond_0
    return-void
.end method

.method static widthInPortrait(Landroid/content/res/Resources;I)I
    .locals 4
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "numCells"    # I

    .prologue
    .line 293
    const v2, 0x7f0b0069

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 294
    .local v0, "cellWidth":I
    const v2, 0x7f0b006b

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0b006c

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 297
    .local v1, "minGap":I
    add-int/lit8 v2, p1, -0x1

    mul-int/2addr v2, v1

    mul-int v3, v0, p1

    add-int/2addr v2, v3

    return v2
.end method


# virtual methods
.method public addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/CellLayout$LayoutParams;Z)Z
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "childId"    # I
    .param p4, "params"    # Lcom/android/launcher2/CellLayout$LayoutParams;
    .param p5, "markCells"    # Z

    .prologue
    .line 607
    move-object v1, p4

    .line 610
    .local v1, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    instance-of v3, p1, Lcom/android/launcher2/BubbleTextView;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 611
    check-cast v0, Lcom/android/launcher2/BubbleTextView;

    .line 613
    .local v0, "bubbleChild":Lcom/android/launcher2/BubbleTextView;
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 614
    .local v2, "res":Landroid/content/res/Resources;
    iget-boolean v3, p0, Lcom/android/launcher2/CellLayout;->mIsHotseat:Z

    if-eqz v3, :cond_4

    .line 615
    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/launcher2/BubbleTextView;->setTextColor(I)V

    .line 621
    .end local v0    # "bubbleChild":Lcom/android/launcher2/BubbleTextView;
    .end local v2    # "res":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildrenScale()F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 622
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildrenScale()F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleY(F)V

    .line 626
    iget v3, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    if-ltz v3, :cond_5

    iget v3, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    add-int/lit8 v4, v4, -0x1

    if-gt v3, v4, :cond_5

    iget v3, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-ltz v3, :cond_5

    iget v3, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    add-int/lit8 v4, v4, -0x1

    if-gt v3, v4, :cond_5

    .line 629
    iget v3, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    if-gez v3, :cond_1

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iput v3, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 630
    :cond_1
    iget v3, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    if-gez v3, :cond_2

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    iput v3, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 632
    :cond_2
    invoke-virtual {p1, p3}, Landroid/view/View;->setId(I)V

    .line 634
    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v3, p1, p2, v1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 636
    if-eqz p5, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 638
    :cond_3
    const/4 v3, 0x1

    .line 640
    :goto_1
    return v3

    .line 617
    .restart local v0    # "bubbleChild":Lcom/android/launcher2/BubbleTextView;
    .restart local v2    # "res":Landroid/content/res/Resources;
    :cond_4
    const v3, 0x7f080006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/launcher2/BubbleTextView;->setTextColor(I)V

    goto :goto_0

    .line 640
    .end local v0    # "bubbleChild":Lcom/android/launcher2/BubbleTextView;
    .end local v2    # "res":Landroid/content/res/Resources;
    :cond_5
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public animateChildToPosition(Landroid/view/View;IIIIZZ)Z
    .locals 13
    .param p1, "child"    # Landroid/view/View;
    .param p2, "cellX"    # I
    .param p3, "cellY"    # I
    .param p4, "duration"    # I
    .param p5, "delay"    # I
    .param p6, "permanent"    # Z
    .param p7, "adjustOccupied"    # Z

    .prologue
    .line 1086
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v9

    .line 1087
    .local v9, "clc":Lcom/android/launcher2/ShortcutAndWidgetContainer;
    iget-object v11, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    .line 1088
    .local v11, "occupied":[[Z
    if-nez p6, :cond_0

    .line 1089
    iget-object v11, p0, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    .line 1092
    :cond_0
    invoke-virtual {v9, p1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 1093
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1094
    .local v3, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/ItemInfo;

    .line 1097
    .local v10, "info":Lcom/android/launcher2/ItemInfo;
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1098
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 1099
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    :cond_1
    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 1103
    .local v4, "oldX":I
    iget v6, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 1104
    .local v6, "oldY":I
    if-eqz p7, :cond_2

    .line 1105
    iget v1, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    aget-object v1, v11, v1

    iget v2, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    const/4 v8, 0x0

    aput-boolean v8, v1, v2

    .line 1106
    aget-object v1, v11, p2

    const/4 v2, 0x1

    aput-boolean v2, v1, p3

    .line 1108
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1109
    if-eqz p6, :cond_3

    .line 1110
    iput p2, v10, Lcom/android/launcher2/ItemInfo;->cellX:I

    iput p2, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 1111
    move/from16 v0, p3

    iput v0, v10, Lcom/android/launcher2/ItemInfo;->cellY:I

    move/from16 v0, p3

    iput v0, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 1116
    :goto_0
    invoke-virtual {v9, v3}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->setupLp(Lcom/android/launcher2/CellLayout$LayoutParams;)V

    .line 1117
    const/4 v1, 0x0

    iput-boolean v1, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1118
    iget v5, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 1119
    .local v5, "newX":I
    iget v7, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 1121
    .local v7, "newY":I
    iput v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 1122
    iput v6, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 1125
    if-ne v4, v5, :cond_4

    if-ne v6, v7, :cond_4

    .line 1126
    const/4 v1, 0x1

    iput-boolean v1, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1127
    const/4 v1, 0x1

    .line 1165
    .end local v3    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v4    # "oldX":I
    .end local v5    # "newX":I
    .end local v6    # "oldY":I
    .end local v7    # "newY":I
    .end local v10    # "info":Lcom/android/launcher2/ItemInfo;
    :goto_1
    return v1

    .line 1113
    .restart local v3    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    .restart local v4    # "oldX":I
    .restart local v6    # "oldY":I
    .restart local v10    # "info":Lcom/android/launcher2/ItemInfo;
    :cond_3
    iput p2, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellX:I

    .line 1114
    move/from16 v0, p3

    iput v0, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    goto :goto_0

    .line 1130
    .restart local v5    # "newX":I
    .restart local v7    # "newY":I
    :cond_4
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v12

    .line 1131
    .local v12, "va":Landroid/animation/ValueAnimator;
    move/from16 v0, p4

    int-to-long v1, v0

    invoke-virtual {v12, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1132
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v1, v3, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1134
    new-instance v1, Lcom/android/launcher2/CellLayout$3;

    move-object v2, p0

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher2/CellLayout$3;-><init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/CellLayout$LayoutParams;IIIILandroid/view/View;)V

    invoke-virtual {v12, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1143
    new-instance v1, Lcom/android/launcher2/CellLayout$4;

    invoke-direct {v1, p0, v3, p1}, Lcom/android/launcher2/CellLayout$4;-><init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/CellLayout$LayoutParams;Landroid/view/View;)V

    invoke-virtual {v12, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1161
    move/from16 v0, p5

    int-to-long v1, v0

    invoke-virtual {v12, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1162
    invoke-virtual {v12}, Landroid/animation/ValueAnimator;->start()V

    .line 1163
    const/4 v1, 0x1

    goto :goto_1

    .line 1165
    .end local v3    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v4    # "oldX":I
    .end local v5    # "newX":I
    .end local v6    # "oldY":I
    .end local v7    # "newY":I
    .end local v10    # "info":Lcom/android/launcher2/ItemInfo;
    .end local v12    # "va":Landroid/animation/ValueAnimator;
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 1130
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public buildHardwareLayer()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->buildLayer()V

    .line 321
    return-void
.end method

.method public calculateSpans(Lcom/android/launcher2/ItemInfo;)V
    .locals 5
    .param p1, "info"    # Lcom/android/launcher2/ItemInfo;

    .prologue
    const/4 v4, 0x1

    .line 3016
    instance-of v3, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;

    if-eqz v3, :cond_0

    move-object v3, p1

    .line 3017
    check-cast v3, Lcom/android/launcher2/LauncherAppWidgetInfo;

    iget v1, v3, Lcom/android/launcher2/LauncherAppWidgetInfo;->minWidth:I

    .local v1, "minWidth":I
    move-object v3, p1

    .line 3018
    check-cast v3, Lcom/android/launcher2/LauncherAppWidgetInfo;

    iget v0, v3, Lcom/android/launcher2/LauncherAppWidgetInfo;->minHeight:I

    .line 3027
    .local v0, "minHeight":I
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v3}, Lcom/android/launcher2/CellLayout;->rectToCell(II[I)[I

    move-result-object v2

    .line 3028
    .local v2, "spans":[I
    const/4 v3, 0x0

    aget v3, v2, v3

    iput v3, p1, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 3029
    aget v3, v2, v4

    iput v3, p1, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 3030
    .end local v0    # "minHeight":I
    .end local v1    # "minWidth":I
    .end local v2    # "spans":[I
    :goto_1
    return-void

    .line 3019
    :cond_0
    instance-of v3, p1, Lcom/android/launcher2/PendingAddWidgetInfo;

    if-eqz v3, :cond_1

    move-object v3, p1

    .line 3020
    check-cast v3, Lcom/android/launcher2/PendingAddWidgetInfo;

    iget v1, v3, Lcom/android/launcher2/PendingAddWidgetInfo;->minWidth:I

    .restart local v1    # "minWidth":I
    move-object v3, p1

    .line 3021
    check-cast v3, Lcom/android/launcher2/PendingAddWidgetInfo;

    iget v0, v3, Lcom/android/launcher2/PendingAddWidgetInfo;->minHeight:I

    .restart local v0    # "minHeight":I
    goto :goto_0

    .line 3024
    .end local v0    # "minHeight":I
    .end local v1    # "minWidth":I
    :cond_1
    iput v4, p1, Lcom/android/launcher2/ItemInfo;->spanY:I

    iput v4, p1, Lcom/android/launcher2/ItemInfo;->spanX:I

    goto :goto_1
.end method

.method public cancelLongPress()V
    .locals 3

    .prologue
    .line 579
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 582
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v1

    .line 583
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 584
    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 585
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 583
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 587
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public cellSpansToSize(II)[I
    .locals 5
    .param p1, "hSpans"    # I
    .param p2, "vSpans"    # I

    .prologue
    .line 3003
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 3004
    .local v0, "size":[I
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    mul-int/2addr v2, p1

    add-int/lit8 v3, p1, -0x1

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 3005
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    mul-int/2addr v2, p2

    add-int/lit8 v3, p2, -0x1

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 3006
    return-object v0
.end method

.method cellToCenterPoint(II[I)V
    .locals 6
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "result"    # [I

    .prologue
    const/4 v3, 0x1

    .line 847
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->regionToCenterPoint(IIII[I)V

    .line 848
    return-void
.end method

.method cellToPoint(II[I)V
    .locals 5
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "result"    # [I

    .prologue
    .line 831
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 832
    .local v0, "hStartPadding":I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v1

    .line 834
    .local v1, "vStartPadding":I
    const/4 v2, 0x0

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p1

    add-int/2addr v3, v0

    aput v3, p3, v2

    .line 835
    const/4 v2, 0x1

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p2

    add-int/2addr v3, v1

    aput v3, p3, v2

    .line 836
    return-void
.end method

.method public cellToRect(IIIILandroid/graphics/Rect;)V
    .locals 13
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "cellHSpan"    # I
    .param p4, "cellVSpan"    # I
    .param p5, "resultRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2954
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    .line 2955
    .local v2, "cellWidth":I
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    .line 2956
    .local v1, "cellHeight":I
    iget v8, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    .line 2957
    .local v8, "widthGap":I
    iget v5, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    .line 2959
    .local v5, "heightGap":I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v3

    .line 2960
    .local v3, "hStartPadding":I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v6

    .line 2962
    .local v6, "vStartPadding":I
    mul-int v11, p3, v2

    add-int/lit8 v12, p3, -0x1

    mul-int/2addr v12, v8

    add-int v7, v11, v12

    .line 2963
    .local v7, "width":I
    mul-int v11, p4, v1

    add-int/lit8 v12, p4, -0x1

    mul-int/2addr v12, v5

    add-int v4, v11, v12

    .line 2965
    .local v4, "height":I
    add-int v11, v2, v8

    mul-int/2addr v11, p1

    add-int v9, v3, v11

    .line 2966
    .local v9, "x":I
    add-int v11, v1, v5

    mul-int/2addr v11, p2

    add-int v10, v6, v11

    .line 2968
    .local v10, "y":I
    add-int v11, v9, v7

    add-int v12, v10, v4

    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 2969
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 3136
    instance-of v0, p1, Lcom/android/launcher2/CellLayout$LayoutParams;

    return v0
.end method

.method public clearDragOutlines()V
    .locals 6

    .prologue
    .line 1267
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    .line 1268
    .local v0, "oldIndex":I
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateOut()V

    .line 1269
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v4, 0x1

    const/4 v5, -0x1

    aput v5, v3, v4

    aput v5, v1, v2

    .line 1270
    return-void
.end method

.method public clearFolderLeaveBehind()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 563
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mFolderLeaveBehindCell:[I

    const/4 v1, 0x0

    aput v2, v0, v1

    .line 564
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mFolderLeaveBehindCell:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 565
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 566
    return-void
.end method

.method createArea(IIIIIILandroid/view/View;[I[II)[I
    .locals 17
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "minSpanX"    # I
    .param p4, "minSpanY"    # I
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I
    .param p7, "dragView"    # Landroid/view/View;
    .param p8, "result"    # [I
    .param p9, "resultSpan"    # [I
    .param p10, "mode"    # I

    .prologue
    .line 2576
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p8

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher2/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object p8

    .line 2578
    if-nez p9, :cond_0

    .line 2579
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 p9, v0

    .line 2585
    :cond_0
    const/4 v2, 0x1

    move/from16 v0, p10

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    move/from16 v0, p10

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    move/from16 v0, p10

    if-ne v0, v2, :cond_a

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mPreviousReorderDirection:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/16 v3, -0x64

    if-eq v2, v3, :cond_a

    .line 2587
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDirectionVector:[I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mPreviousReorderDirection:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    aput v4, v2, v3

    .line 2588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDirectionVector:[I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mPreviousReorderDirection:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    aput v4, v2, v3

    .line 2590
    const/4 v2, 0x1

    move/from16 v0, p10

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    move/from16 v0, p10

    if-ne v0, v2, :cond_3

    .line 2591
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mPreviousReorderDirection:[I

    const/4 v3, 0x0

    const/16 v4, -0x64

    aput v4, v2, v3

    .line 2592
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mPreviousReorderDirection:[I

    const/4 v3, 0x1

    const/16 v4, -0x64

    aput v4, v2, v3

    .line 2600
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/CellLayout;->mDirectionVector:[I

    const/4 v11, 0x1

    new-instance v12, Lcom/android/launcher2/CellLayout$ItemConfiguration;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v2}, Lcom/android/launcher2/CellLayout$ItemConfiguration;-><init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/CellLayout$1;)V

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v2 .. v12}, Lcom/android/launcher2/CellLayout;->simpleSwap(IIIIII[ILandroid/view/View;ZLcom/android/launcher2/CellLayout$ItemConfiguration;)Lcom/android/launcher2/CellLayout$ItemConfiguration;

    move-result-object v16

    .line 2604
    .local v16, "swapSolution":Lcom/android/launcher2/CellLayout$ItemConfiguration;
    new-instance v10, Lcom/android/launcher2/CellLayout$ItemConfiguration;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v2}, Lcom/android/launcher2/CellLayout$ItemConfiguration;-><init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/CellLayout$1;)V

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v10}, Lcom/android/launcher2/CellLayout;->findConfigurationNoShuffle(IIIIIILandroid/view/View;Lcom/android/launcher2/CellLayout$ItemConfiguration;)Lcom/android/launcher2/CellLayout$ItemConfiguration;

    move-result-object v15

    .line 2607
    .local v15, "noShuffleSolution":Lcom/android/launcher2/CellLayout$ItemConfiguration;
    const/4 v13, 0x0

    .line 2608
    .local v13, "finalSolution":Lcom/android/launcher2/CellLayout$ItemConfiguration;
    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v2, :cond_b

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/CellLayout$ItemConfiguration;->area()I

    move-result v2

    invoke-virtual {v15}, Lcom/android/launcher2/CellLayout$ItemConfiguration;->area()I

    move-result v3

    if-lt v2, v3, :cond_b

    .line 2609
    move-object/from16 v13, v16

    .line 2614
    :cond_4
    :goto_1
    const/4 v14, 0x1

    .line 2616
    .local v14, "foundSolution":Z
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setUseTempCoords(Z)V

    .line 2619
    if-eqz v13, :cond_e

    .line 2620
    const/4 v2, 0x0

    iget v3, v13, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewX:I

    aput v3, p8, v2

    .line 2621
    const/4 v2, 0x1

    iget v3, v13, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewY:I

    aput v3, p8, v2

    .line 2622
    const/4 v2, 0x0

    iget v3, v13, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewSpanX:I

    aput v3, p9, v2

    .line 2623
    const/4 v2, 0x1

    iget v3, v13, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewSpanY:I

    aput v3, p9, v2

    .line 2628
    if-eqz p10, :cond_5

    const/4 v2, 0x1

    move/from16 v0, p10

    if-eq v0, v2, :cond_5

    const/4 v2, 0x2

    move/from16 v0, p10

    if-ne v0, v2, :cond_7

    .line 2630
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v13, v1}, Lcom/android/launcher2/CellLayout;->copySolutionToTempState(Lcom/android/launcher2/CellLayout$ItemConfiguration;Landroid/view/View;)V

    .line 2632
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setItemPlacementDirty(Z)V

    .line 2633
    const/4 v2, 0x1

    move/from16 v0, p10

    if-ne v0, v2, :cond_c

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v13, v1, v2}, Lcom/android/launcher2/CellLayout;->animateItemsToSolution(Lcom/android/launcher2/CellLayout$ItemConfiguration;Landroid/view/View;Z)V

    .line 2635
    const/4 v2, 0x1

    move/from16 v0, p10

    if-eq v0, v2, :cond_6

    const/4 v2, 0x2

    move/from16 v0, p10

    if-ne v0, v2, :cond_d

    .line 2637
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->commitTempPlacement()V

    .line 2638
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->completeAndClearReorderHintAnimations()V

    .line 2639
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setItemPlacementDirty(Z)V

    .line 2650
    :cond_7
    :goto_3
    const/4 v2, 0x1

    move/from16 v0, p10

    if-eq v0, v2, :cond_8

    if-nez v14, :cond_9

    .line 2651
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setUseTempCoords(Z)V

    .line 2654
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v2}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->requestLayout()V

    .line 2655
    return-object p8

    .line 2595
    .end local v13    # "finalSolution":Lcom/android/launcher2/CellLayout$ItemConfiguration;
    .end local v14    # "foundSolution":Z
    .end local v15    # "noShuffleSolution":Lcom/android/launcher2/CellLayout$ItemConfiguration;
    .end local v16    # "swapSolution":Lcom/android/launcher2/CellLayout$ItemConfiguration;
    :cond_a
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/CellLayout;->mDirectionVector:[I

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher2/CellLayout;->getDirectionVectorForDrop(IIIILandroid/view/View;[I)V

    .line 2596
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mPreviousReorderDirection:[I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mDirectionVector:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    aput v4, v2, v3

    .line 2597
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mPreviousReorderDirection:[I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mDirectionVector:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    aput v4, v2, v3

    goto/16 :goto_0

    .line 2610
    .restart local v13    # "finalSolution":Lcom/android/launcher2/CellLayout$ItemConfiguration;
    .restart local v15    # "noShuffleSolution":Lcom/android/launcher2/CellLayout$ItemConfiguration;
    .restart local v16    # "swapSolution":Lcom/android/launcher2/CellLayout$ItemConfiguration;
    :cond_b
    iget-boolean v2, v15, Lcom/android/launcher2/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v2, :cond_4

    .line 2611
    move-object v13, v15

    goto/16 :goto_1

    .line 2633
    .restart local v14    # "foundSolution":Z
    :cond_c
    const/4 v2, 0x0

    goto :goto_2

    .line 2641
    :cond_d
    const/16 v2, 0x96

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v13, v1, v2}, Lcom/android/launcher2/CellLayout;->beginOrAdjustHintAnimations(Lcom/android/launcher2/CellLayout$ItemConfiguration;Landroid/view/View;I)V

    goto :goto_3

    .line 2646
    :cond_e
    const/4 v14, 0x0

    .line 2647
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    aput v6, p9, v5

    aput v6, p9, v4

    aput v6, p8, v3

    aput v6, p8, v2

    goto :goto_3
.end method

.method createAreaForResize(IIIILandroid/view/View;[IZ)Z
    .locals 22
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "dragView"    # Landroid/view/View;
    .param p6, "direction"    # [I
    .param p7, "commit"    # Z

    .prologue
    .line 2544
    const/4 v4, 0x2

    new-array v9, v4, [I

    .local v9, "pixelXY":[I
    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    .line 2545
    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher2/CellLayout;->regionToCenterPoint(IIII[I)V

    .line 2548
    const/4 v4, 0x0

    aget v11, v9, v4

    const/4 v4, 0x1

    aget v12, v9, v4

    const/16 v19, 0x1

    new-instance v20, Lcom/android/launcher2/CellLayout$ItemConfiguration;

    const/4 v4, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/android/launcher2/CellLayout$ItemConfiguration;-><init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/CellLayout$1;)V

    move-object/from16 v10, p0

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p3

    move/from16 v16, p4

    move-object/from16 v17, p6

    move-object/from16 v18, p5

    invoke-virtual/range {v10 .. v20}, Lcom/android/launcher2/CellLayout;->simpleSwap(IIIIII[ILandroid/view/View;ZLcom/android/launcher2/CellLayout$ItemConfiguration;)Lcom/android/launcher2/CellLayout$ItemConfiguration;

    move-result-object v21

    .line 2551
    .local v21, "swapSolution":Lcom/android/launcher2/CellLayout$ItemConfiguration;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayout;->setUseTempCoords(Z)V

    .line 2552
    if-eqz v21, :cond_0

    move-object/from16 v0, v21

    iget-boolean v4, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v4, :cond_0

    .line 2556
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/CellLayout;->copySolutionToTempState(Lcom/android/launcher2/CellLayout$ItemConfiguration;Landroid/view/View;)V

    .line 2557
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayout;->setItemPlacementDirty(Z)V

    .line 2558
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p5

    move/from16 v3, p7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout;->animateItemsToSolution(Lcom/android/launcher2/CellLayout$ItemConfiguration;Landroid/view/View;Z)V

    .line 2560
    if-eqz p7, :cond_1

    .line 2561
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->commitTempPlacement()V

    .line 2562
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->completeAndClearReorderHintAnimations()V

    .line 2563
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayout;->setItemPlacementDirty(Z)V

    .line 2568
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v4}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->requestLayout()V

    .line 2570
    :cond_0
    move-object/from16 v0, v21

    iget-boolean v4, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->isSolution:Z

    return v4

    .line 2565
    :cond_1
    const/16 v4, 0x96

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2, v4}, Lcom/android/launcher2/CellLayout;->beginOrAdjustHintAnimations(Lcom/android/launcher2/CellLayout$ItemConfiguration;Landroid/view/View;I)V

    goto :goto_0
.end method

.method public disableHardwareLayers()V
    .locals 3

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/launcher2/CellLayout;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 317
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 535
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 536
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mForegroundAlpha:I

    if-lez v1, :cond_0

    .line 537
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mForegroundRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 538
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 539
    .local v0, "p":Landroid/graphics/Paint;
    sget-object v1, Lcom/android/launcher2/CellLayout;->sAddBlendMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 540
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 541
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 543
    .end local v0    # "p":Landroid/graphics/Paint;
    :cond_0
    return-void
.end method

.method public enableHardwareLayers()V
    .locals 3

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    const/4 v1, 0x2

    sget-object v2, Lcom/android/launcher2/CellLayout;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 313
    return-void
.end method

.method estimateDropCell(IIII[I)V
    .locals 7
    .param p1, "originX"    # I
    .param p2, "originY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "result"    # [I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1178
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    .line 1179
    .local v1, "countX":I
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    .line 1183
    .local v2, "countY":I
    invoke-virtual {p0, p1, p2, p5}, Lcom/android/launcher2/CellLayout;->pointToCellRounded(II[I)V

    .line 1186
    aget v4, p5, v5

    add-int/2addr v4, p3

    sub-int v3, v4, v1

    .line 1187
    .local v3, "rightOverhang":I
    if-lez v3, :cond_0

    .line 1188
    aget v4, p5, v5

    sub-int/2addr v4, v3

    aput v4, p5, v5

    .line 1190
    :cond_0
    aget v4, p5, v5

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, p5, v5

    .line 1191
    aget v4, p5, v6

    add-int/2addr v4, p4

    sub-int v0, v4, v2

    .line 1192
    .local v0, "bottomOverhang":I
    if-lez v0, :cond_1

    .line 1193
    aget v4, p5, v6

    sub-int/2addr v4, v0

    aput v4, p5, v6

    .line 1195
    :cond_1
    aget v4, p5, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, p5, v6

    .line 1196
    return-void
.end method

.method existsEmptyCell()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2782
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v0

    return v0
.end method

.method findCellForSpan([III)Z
    .locals 8
    .param p1, "cellXY"    # [I
    .param p2, "spanX"    # I
    .param p3, "spanY"    # I

    .prologue
    const/4 v4, -0x1

    .line 2799
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/CellLayout;->findCellForSpanThatIntersectsIgnoring([IIIIILandroid/view/View;[[Z)Z

    move-result v0

    return v0
.end method

.method findCellForSpanIgnoring([IIILandroid/view/View;)Z
    .locals 8
    .param p1, "cellXY"    # [I
    .param p2, "spanX"    # I
    .param p3, "spanY"    # I
    .param p4, "ignoreView"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x1

    .line 2813
    iget-object v7, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    move-object v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/CellLayout;->findCellForSpanThatIntersectsIgnoring([IIIIILandroid/view/View;[[Z)Z

    move-result v0

    return v0
.end method

.method findCellForSpanThatIntersects([IIIII)Z
    .locals 8
    .param p1, "cellXY"    # [I
    .param p2, "spanX"    # I
    .param p3, "spanY"    # I
    .param p4, "intersectX"    # I
    .param p5, "intersectY"    # I

    .prologue
    .line 2831
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/CellLayout;->findCellForSpanThatIntersectsIgnoring([IIIIILandroid/view/View;[[Z)Z

    move-result v0

    return v0
.end method

.method findCellForSpanThatIntersectsIgnoring([IIIIILandroid/view/View;[[Z)Z
    .locals 13
    .param p1, "cellXY"    # [I
    .param p2, "spanX"    # I
    .param p3, "spanY"    # I
    .param p4, "intersectX"    # I
    .param p5, "intersectY"    # I
    .param p6, "ignoreView"    # Landroid/view/View;
    .param p7, "occupied"    # [[Z

    .prologue
    .line 2841
    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;[[Z)V

    .line 2843
    const/4 v4, 0x0

    .line 2845
    .local v4, "foundCell":Z
    :goto_0
    const/4 v7, 0x0

    .line 2846
    .local v7, "startX":I
    if-ltz p4, :cond_0

    .line 2847
    add-int/lit8 v11, p2, -0x1

    sub-int v11, p4, v11

    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2849
    :cond_0
    iget v11, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    add-int/lit8 v12, p2, -0x1

    sub-int v2, v11, v12

    .line 2850
    .local v2, "endX":I
    if-ltz p4, :cond_1

    .line 2851
    add-int/lit8 v11, p2, -0x1

    add-int v12, p4, v11

    const/4 v11, 0x1

    if-ne p2, v11, :cond_4

    const/4 v11, 0x1

    :goto_1
    add-int/2addr v11, v12

    invoke-static {v2, v11}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2853
    :cond_1
    const/4 v8, 0x0

    .line 2854
    .local v8, "startY":I
    if-ltz p5, :cond_2

    .line 2855
    add-int/lit8 v11, p3, -0x1

    sub-int v11, p5, v11

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 2857
    :cond_2
    iget v11, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    add-int/lit8 v12, p3, -0x1

    sub-int v3, v11, v12

    .line 2858
    .local v3, "endY":I
    if-ltz p5, :cond_3

    .line 2859
    add-int/lit8 v11, p3, -0x1

    add-int v12, p5, v11

    const/4 v11, 0x1

    move/from16 v0, p3

    if-ne v0, v11, :cond_5

    const/4 v11, 0x1

    :goto_2
    add-int/2addr v11, v12

    invoke-static {v3, v11}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2862
    :cond_3
    move v10, v8

    .local v10, "y":I
    :goto_3
    if-ge v10, v3, :cond_b

    if-nez v4, :cond_b

    .line 2864
    move v9, v7

    .local v9, "x":I
    :goto_4
    if-ge v9, v2, :cond_a

    .line 2865
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_5
    if-ge v5, p2, :cond_8

    .line 2866
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_6
    move/from16 v0, p3

    if-ge v6, v0, :cond_7

    .line 2867
    add-int v11, v9, v5

    aget-object v11, p7, v11

    add-int v12, v10, v6

    aget-boolean v11, v11, v12

    if-eqz v11, :cond_6

    .line 2870
    add-int/2addr v9, v5

    .line 2864
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 2851
    .end local v3    # "endY":I
    .end local v5    # "i":I
    .end local v6    # "j":I
    .end local v8    # "startY":I
    .end local v9    # "x":I
    .end local v10    # "y":I
    :cond_4
    const/4 v11, 0x0

    goto :goto_1

    .line 2859
    .restart local v3    # "endY":I
    .restart local v8    # "startY":I
    :cond_5
    const/4 v11, 0x0

    goto :goto_2

    .line 2866
    .restart local v5    # "i":I
    .restart local v6    # "j":I
    .restart local v9    # "x":I
    .restart local v10    # "y":I
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 2865
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 2875
    .end local v6    # "j":I
    :cond_8
    if-eqz p1, :cond_9

    .line 2876
    const/4 v11, 0x0

    aput v9, p1, v11

    .line 2877
    const/4 v11, 0x1

    aput v10, p1, v11

    .line 2879
    :cond_9
    const/4 v4, 0x1

    .line 2862
    .end local v5    # "i":I
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 2883
    .end local v9    # "x":I
    :cond_b
    const/4 v11, -0x1

    move/from16 v0, p4

    if-ne v0, v11, :cond_c

    const/4 v11, -0x1

    move/from16 v0, p5

    if-ne v0, v11, :cond_c

    .line 2895
    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;[[Z)V

    .line 2896
    return v4

    .line 2888
    :cond_c
    const/16 p4, -0x1

    .line 2889
    const/16 p5, -0x1

    .line 2890
    goto/16 :goto_0
.end method

.method findConfigurationNoShuffle(IIIIIILandroid/view/View;Lcom/android/launcher2/CellLayout$ItemConfiguration;)Lcom/android/launcher2/CellLayout$ItemConfiguration;
    .locals 11
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "minSpanX"    # I
    .param p4, "minSpanY"    # I
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I
    .param p7, "dragView"    # Landroid/view/View;
    .param p8, "solution"    # Lcom/android/launcher2/CellLayout$ItemConfiguration;

    .prologue
    .line 2426
    const/4 v1, 0x2

    new-array v9, v1, [I

    .line 2427
    .local v9, "result":[I
    const/4 v1, 0x2

    new-array v10, v1, [I

    .line 2428
    .local v10, "resultSpan":[I
    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v10}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIIIIILandroid/view/View;[I[I)[I

    .line 2430
    const/4 v1, 0x0

    aget v1, v9, v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    aget v1, v9, v1

    if-ltz v1, :cond_0

    .line 2431
    const/4 v1, 0x0

    move-object/from16 v0, p8

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/CellLayout;->copyCurrentStateToSolution(Lcom/android/launcher2/CellLayout$ItemConfiguration;Z)V

    .line 2432
    const/4 v1, 0x0

    aget v1, v9, v1

    move-object/from16 v0, p8

    iput v1, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewX:I

    .line 2433
    const/4 v1, 0x1

    aget v1, v9, v1

    move-object/from16 v0, p8

    iput v1, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewY:I

    .line 2434
    const/4 v1, 0x0

    aget v1, v10, v1

    move-object/from16 v0, p8

    iput v1, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewSpanX:I

    .line 2435
    const/4 v1, 0x1

    aget v1, v10, v1

    move-object/from16 v0, p8

    iput v1, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewSpanY:I

    .line 2436
    const/4 v1, 0x1

    move-object/from16 v0, p8

    iput-boolean v1, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->isSolution:Z

    .line 2440
    :goto_0
    return-object p8

    .line 2438
    :cond_0
    const/4 v1, 0x0

    move-object/from16 v0, p8

    iput-boolean v1, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->isSolution:Z

    goto :goto_0
.end method

.method findNearestArea(IIIIIILandroid/view/View;Z[I[I[[Z)[I
    .locals 33
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "minSpanX"    # I
    .param p4, "minSpanY"    # I
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I
    .param p7, "ignoreView"    # Landroid/view/View;
    .param p8, "ignoreOccupied"    # Z
    .param p9, "result"    # [I
    .param p10, "resultSpan"    # [I
    .param p11, "occupied"    # [[Z

    .prologue
    .line 1365
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->lazyInitTempRectStack()V

    .line 1367
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p11

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;[[Z)V

    .line 1372
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    move/from16 v29, v0

    add-int v28, v28, v29

    add-int/lit8 v29, p5, -0x1

    mul-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x40000000    # 2.0f

    div-float v28, v28, v29

    sub-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 p1, v0

    .line 1373
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    move/from16 v29, v0

    add-int v28, v28, v29

    add-int/lit8 v29, p6, -0x1

    mul-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x40000000    # 2.0f

    div-float v28, v28, v29

    sub-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 p2, v0

    .line 1376
    if-eqz p9, :cond_1

    move-object/from16 v7, p9

    .line 1377
    .local v7, "bestXY":[I
    :goto_0
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 1378
    .local v4, "bestDistance":D
    new-instance v6, Landroid/graphics/Rect;

    const/16 v27, -0x1

    const/16 v28, -0x1

    const/16 v29, -0x1

    const/16 v30, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1379
    .local v6, "bestRect":Landroid/graphics/Rect;
    new-instance v22, Ljava/util/Stack;

    invoke-direct/range {v22 .. v22}, Ljava/util/Stack;-><init>()V

    .line 1381
    .local v22, "validRegions":Ljava/util/Stack;, "Ljava/util/Stack<Landroid/graphics/Rect;>;"
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    .line 1382
    .local v10, "countX":I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    .line 1384
    .local v11, "countY":I
    if-lez p3, :cond_0

    if-lez p4, :cond_0

    if-lez p5, :cond_0

    if-lez p6, :cond_0

    move/from16 v0, p5

    move/from16 v1, p3

    if-lt v0, v1, :cond_0

    move/from16 v0, p6

    move/from16 v1, p4

    if-ge v0, v1, :cond_2

    .line 1483
    :cond_0
    :goto_1
    return-object v7

    .line 1376
    .end local v4    # "bestDistance":D
    .end local v6    # "bestRect":Landroid/graphics/Rect;
    .end local v7    # "bestXY":[I
    .end local v10    # "countX":I
    .end local v11    # "countY":I
    .end local v22    # "validRegions":Ljava/util/Stack;, "Ljava/util/Stack<Landroid/graphics/Rect;>;"
    :cond_1
    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v7, v0, [I

    goto :goto_0

    .line 1389
    .restart local v4    # "bestDistance":D
    .restart local v6    # "bestRect":Landroid/graphics/Rect;
    .restart local v7    # "bestXY":[I
    .restart local v10    # "countX":I
    .restart local v11    # "countY":I
    .restart local v22    # "validRegions":Ljava/util/Stack;, "Ljava/util/Stack<Landroid/graphics/Rect;>;"
    :cond_2
    const/16 v25, 0x0

    .local v25, "y":I
    :goto_2
    add-int/lit8 v27, p4, -0x1

    sub-int v27, v11, v27

    move/from16 v0, v25

    move/from16 v1, v27

    if-ge v0, v1, :cond_1e

    .line 1391
    const/16 v23, 0x0

    .local v23, "x":I
    :goto_3
    add-int/lit8 v27, p3, -0x1

    sub-int v27, v10, v27

    move/from16 v0, v23

    move/from16 v1, v27

    if-ge v0, v1, :cond_1d

    .line 1392
    const/16 v26, -0x1

    .line 1393
    .local v26, "ySize":I
    const/16 v24, -0x1

    .line 1394
    .local v24, "xSize":I
    if-eqz p8, :cond_16

    .line 1396
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_4
    move/from16 v0, v17

    move/from16 v1, p3

    if-ge v0, v1, :cond_6

    .line 1397
    const/16 v20, 0x0

    .local v20, "j":I
    :goto_5
    move/from16 v0, v20

    move/from16 v1, p4

    if-ge v0, v1, :cond_5

    .line 1398
    add-int v27, v23, v17

    aget-object v27, p11, v27

    add-int v28, v25, v20

    aget-boolean v27, v27, v28

    if-eqz v27, :cond_4

    .line 1391
    .end local v17    # "i":I
    .end local v20    # "j":I
    :cond_3
    :goto_6
    add-int/lit8 v23, v23, 0x1

    goto :goto_3

    .line 1397
    .restart local v17    # "i":I
    .restart local v20    # "j":I
    :cond_4
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    .line 1396
    :cond_5
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 1403
    .end local v20    # "j":I
    :cond_6
    move/from16 v24, p3

    .line 1404
    move/from16 v26, p4

    .line 1409
    const/16 v19, 0x1

    .line 1410
    .local v19, "incX":Z
    move/from16 v0, v24

    move/from16 v1, p5

    if-lt v0, v1, :cond_a

    const/4 v15, 0x1

    .line 1411
    .local v15, "hitMaxX":Z
    :goto_7
    move/from16 v0, v26

    move/from16 v1, p6

    if-lt v0, v1, :cond_b

    const/16 v16, 0x1

    .line 1412
    .local v16, "hitMaxY":Z
    :goto_8
    if-eqz v15, :cond_7

    if-nez v16, :cond_15

    .line 1413
    :cond_7
    if-eqz v19, :cond_e

    if-nez v15, :cond_e

    .line 1414
    const/16 v20, 0x0

    .restart local v20    # "j":I
    :goto_9
    move/from16 v0, v20

    move/from16 v1, v26

    if-ge v0, v1, :cond_c

    .line 1415
    add-int v27, v23, v24

    add-int/lit8 v28, v10, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-gt v0, v1, :cond_8

    add-int v27, v23, v24

    aget-object v27, p11, v27

    add-int v28, v25, v20

    aget-boolean v27, v27, v28

    if-eqz v27, :cond_9

    .line 1417
    :cond_8
    const/4 v15, 0x1

    .line 1414
    :cond_9
    add-int/lit8 v20, v20, 0x1

    goto :goto_9

    .line 1410
    .end local v15    # "hitMaxX":Z
    .end local v16    # "hitMaxY":Z
    .end local v20    # "j":I
    :cond_a
    const/4 v15, 0x0

    goto :goto_7

    .line 1411
    .restart local v15    # "hitMaxX":Z
    :cond_b
    const/16 v16, 0x0

    goto :goto_8

    .line 1420
    .restart local v16    # "hitMaxY":Z
    .restart local v20    # "j":I
    :cond_c
    if-nez v15, :cond_d

    .line 1421
    add-int/lit8 v24, v24, 0x1

    .line 1434
    .end local v20    # "j":I
    :cond_d
    :goto_a
    move/from16 v0, v24

    move/from16 v1, p5

    if-lt v0, v1, :cond_12

    const/16 v27, 0x1

    :goto_b
    or-int v15, v15, v27

    .line 1435
    move/from16 v0, v26

    move/from16 v1, p6

    if-lt v0, v1, :cond_13

    const/16 v27, 0x1

    :goto_c
    or-int v16, v16, v27

    .line 1436
    if-nez v19, :cond_14

    const/16 v19, 0x1

    :goto_d
    goto :goto_8

    .line 1423
    :cond_e
    if-nez v16, :cond_d

    .line 1424
    const/16 v17, 0x0

    :goto_e
    move/from16 v0, v17

    move/from16 v1, v24

    if-ge v0, v1, :cond_11

    .line 1425
    add-int v27, v25, v26

    add-int/lit8 v28, v11, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-gt v0, v1, :cond_f

    add-int v27, v23, v17

    aget-object v27, p11, v27

    add-int v28, v25, v26

    aget-boolean v27, v27, v28

    if-eqz v27, :cond_10

    .line 1427
    :cond_f
    const/16 v16, 0x1

    .line 1424
    :cond_10
    add-int/lit8 v17, v17, 0x1

    goto :goto_e

    .line 1430
    :cond_11
    if-nez v16, :cond_d

    .line 1431
    add-int/lit8 v26, v26, 0x1

    goto :goto_a

    .line 1434
    :cond_12
    const/16 v27, 0x0

    goto :goto_b

    .line 1435
    :cond_13
    const/16 v27, 0x0

    goto :goto_c

    .line 1436
    :cond_14
    const/16 v19, 0x0

    goto :goto_d

    .line 1438
    :cond_15
    const/16 v19, 0x1

    .line 1439
    move/from16 v0, v24

    move/from16 v1, p5

    if-lt v0, v1, :cond_1c

    const/4 v15, 0x1

    .line 1440
    :goto_f
    move/from16 v0, v26

    move/from16 v1, p6

    if-lt v0, v1, :cond_16

    .line 1442
    .end local v15    # "hitMaxX":Z
    .end local v16    # "hitMaxY":Z
    .end local v17    # "i":I
    .end local v19    # "incX":Z
    :cond_16
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    .line 1443
    .local v8, "cellXY":[I
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/launcher2/CellLayout;->cellToCenterPoint(II[I)V

    .line 1448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mTempRectStack:Ljava/util/Stack;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    .line 1449
    .local v12, "currentRect":Landroid/graphics/Rect;
    add-int v27, v23, v24

    add-int v28, v25, v26

    move/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1450
    const/4 v9, 0x0

    .line 1451
    .local v9, "contained":Z
    invoke-virtual/range {v22 .. v22}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :cond_17
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_18

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/graphics/Rect;

    .line 1452
    .local v21, "r":Landroid/graphics/Rect;
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v27

    if-eqz v27, :cond_17

    .line 1453
    const/4 v9, 0x1

    .line 1457
    .end local v21    # "r":Landroid/graphics/Rect;
    :cond_18
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1458
    const/16 v27, 0x0

    aget v27, v8, v27

    sub-int v27, v27, p1

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    const-wide/high16 v29, 0x4000000000000000L    # 2.0

    invoke-static/range {v27 .. v30}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v27

    const/16 v29, 0x1

    aget v29, v8, v29

    sub-int v29, v29, p2

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v29, v0

    const-wide/high16 v31, 0x4000000000000000L    # 2.0

    invoke-static/range {v29 .. v32}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v29

    add-double v27, v27, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    .line 1461
    .local v13, "distance":D
    cmpg-double v27, v13, v4

    if-gtz v27, :cond_19

    if-eqz v9, :cond_1a

    :cond_19
    invoke-virtual {v12, v6}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v27

    if-eqz v27, :cond_3

    .line 1463
    :cond_1a
    move-wide v4, v13

    .line 1464
    const/16 v27, 0x0

    aput v23, v7, v27

    .line 1465
    const/16 v27, 0x1

    aput v25, v7, v27

    .line 1466
    if-eqz p10, :cond_1b

    .line 1467
    const/16 v27, 0x0

    aput v24, p10, v27

    .line 1468
    const/16 v27, 0x1

    aput v26, p10, v27

    .line 1470
    :cond_1b
    invoke-virtual {v6, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_6

    .line 1439
    .end local v8    # "cellXY":[I
    .end local v9    # "contained":Z
    .end local v12    # "currentRect":Landroid/graphics/Rect;
    .end local v13    # "distance":D
    .end local v18    # "i$":Ljava/util/Iterator;
    .restart local v15    # "hitMaxX":Z
    .restart local v16    # "hitMaxY":Z
    .restart local v17    # "i":I
    .restart local v19    # "incX":Z
    :cond_1c
    const/4 v15, 0x0

    goto/16 :goto_f

    .line 1389
    .end local v15    # "hitMaxX":Z
    .end local v16    # "hitMaxY":Z
    .end local v17    # "i":I
    .end local v19    # "incX":Z
    .end local v24    # "xSize":I
    .end local v26    # "ySize":I
    :cond_1d
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_2

    .line 1475
    .end local v23    # "x":I
    :cond_1e
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p11

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;[[Z)V

    .line 1478
    const-wide v27, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v27, v4, v27

    if-nez v27, :cond_1f

    .line 1479
    const/16 v27, 0x0

    const/16 v28, -0x1

    aput v28, v7, v27

    .line 1480
    const/16 v27, 0x1

    const/16 v28, -0x1

    aput v28, v7, v27

    .line 1482
    :cond_1f
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/launcher2/CellLayout;->recycleTempRects(Ljava/util/Stack;)V

    goto/16 :goto_1
.end method

.method findNearestArea(IIIILandroid/view/View;Z[I)[I
    .locals 12
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "ignoreView"    # Landroid/view/View;
    .param p6, "ignoreOccupied"    # Z
    .param p7, "result"    # [I

    .prologue
    .line 1327
    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v11}, Lcom/android/launcher2/CellLayout;->findNearestArea(IIIIIILandroid/view/View;Z[I[I[[Z)[I

    move-result-object v0

    return-object v0
.end method

.method findNearestArea(IIII[I)[I
    .locals 8
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "result"    # [I

    .prologue
    .line 2778
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/CellLayout;->findNearestArea(IIIILandroid/view/View;Z[I)[I

    move-result-object v0

    return-object v0
.end method

.method findNearestVacantArea(IIIIIILandroid/view/View;[I[I)[I
    .locals 12
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "minSpanX"    # I
    .param p4, "minSpanY"    # I
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I
    .param p7, "ignoreView"    # Landroid/view/View;
    .param p8, "result"    # [I
    .param p9, "resultSpan"    # [I

    .prologue
    .line 2759
    const/4 v8, 0x1

    iget-object v11, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v11}, Lcom/android/launcher2/CellLayout;->findNearestArea(IIIIIILandroid/view/View;Z[I[I[[Z)[I

    move-result-object v0

    return-object v0
.end method

.method findNearestVacantArea(IIIIII[I[I)[I
    .locals 10
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "minSpanX"    # I
    .param p4, "minSpanY"    # I
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I
    .param p7, "result"    # [I
    .param p8, "resultSpan"    # [I

    .prologue
    .line 1307
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIIIIILandroid/view/View;[I[I)[I

    move-result-object v0

    return-object v0
.end method

.method findNearestVacantArea(IIIILandroid/view/View;[I)[I
    .locals 8
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "ignoreView"    # Landroid/view/View;
    .param p6, "result"    # [I

    .prologue
    .line 2739
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/CellLayout;->findNearestArea(IIIILandroid/view/View;Z[I)[I

    move-result-object v0

    return-object v0
.end method

.method findNearestVacantArea(IIII[I)[I
    .locals 7
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "result"    # [I

    .prologue
    .line 1287
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIIILandroid/view/View;[I)[I

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 3131
    new-instance v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 3141
    new-instance v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBackgroundAlpha()F
    .locals 1

    .prologue
    .line 1045
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    return v0
.end method

.method public getBackgroundAlphaMultiplier()F
    .locals 1

    .prologue
    .line 1056
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlphaMultiplier:F

    return v0
.end method

.method getCellHeight()I
    .locals 1

    .prologue
    .line 895
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    return v0
.end method

.method getCellWidth()I
    .locals 1

    .prologue
    .line 891
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    return v0
.end method

.method public getChildAt(II)Landroid/view/View;
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildrenScale()F
    .locals 1

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mIsHotseat:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mHotseatScale:F

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method getContentRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 907
    if-nez p1, :cond_0

    .line 908
    new-instance p1, Landroid/graphics/Rect;

    .end local p1    # "r":Landroid/graphics/Rect;
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 910
    .restart local p1    # "r":Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v1

    .line 911
    .local v1, "left":I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v3

    .line 912
    .local v3, "top":I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingRight()I

    move-result v5

    sub-int v2, v4, v5

    .line 913
    .local v2, "right":I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getHeight()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingBottom()I

    move-result v5

    sub-int v0, v4, v5

    .line 914
    .local v0, "bottom":I
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 915
    return-object p1
.end method

.method getCountX()I
    .locals 1

    .prologue
    .line 594
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    return v0
.end method

.method getCountY()I
    .locals 1

    .prologue
    .line 598
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    return v0
.end method

.method public getDesiredHeight()I
    .locals 3

    .prologue
    .line 3117
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getDesiredWidth()I
    .locals 3

    .prologue
    .line 3112
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getDistanceFromCell(FF[I)F
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "cell"    # [I

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 884
    aget v1, p3, v4

    aget v2, p3, v7

    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mTmpPoint:[I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/launcher2/CellLayout;->cellToCenterPoint(II[I)V

    .line 885
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mTmpPoint:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sub-float v1, p1, v1

    float-to-double v1, v1

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mTmpPoint:[I

    aget v3, v3, v7

    int-to-float v3, v3

    sub-float v3, p2, v3

    float-to-double v3, v3

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v0, v1

    .line 887
    .local v0, "distance":F
    return v0
.end method

.method getHeightGap()I
    .locals 1

    .prologue
    .line 903
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    return v0
.end method

.method getIsDragOverlapping()Z
    .locals 1

    .prologue
    .line 377
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    return v0
.end method

.method public getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;
    .locals 1

    .prologue
    .line 1074
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1075
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ShortcutAndWidgetContainer;

    .line 1077
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTag()Lcom/android/launcher2/CellLayout$CellInfo;
    .locals 1

    .prologue
    .line 787
    invoke-super {p0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$CellInfo;

    return-object v0
.end method

.method public bridge synthetic getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getTag()Lcom/android/launcher2/CellLayout$CellInfo;

    move-result-object v0

    return-object v0
.end method

.method public getVacantCell([III)Z
    .locals 6
    .param p1, "vacant"    # [I
    .param p2, "spanX"    # I
    .param p3, "spanY"    # I

    .prologue
    .line 3043
    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    move-object v0, p1

    move v1, p2

    move v2, p3

    invoke-static/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->findVacantCell([IIIII[[Z)Z

    move-result v0

    return v0
.end method

.method getWidthGap()I
    .locals 1

    .prologue
    .line 899
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    return v0
.end method

.method public hideFolderAccept(Lcom/android/launcher2/FolderIcon$FolderRingAnimator;)V
    .locals 1
    .param p1, "fra"    # Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 553
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 554
    return-void
.end method

.method isItemPlacementDirty()Z
    .locals 1

    .prologue
    .line 2662
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mItemPlacementDirty:Z

    return v0
.end method

.method isNearestDropLocationOccupied(IIIILandroid/view/View;[I)Z
    .locals 8
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "dragView"    # Landroid/view/View;
    .param p6, "result"    # [I

    .prologue
    .line 2519
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object p6

    .line 2520
    const/4 v0, 0x0

    aget v1, p6, v0

    const/4 v0, 0x1

    aget v2, p6, v0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/launcher2/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    move-object v0, p0

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/CellLayout;->getViewsIntersectingRegion(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V

    .line 2522
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOccupied(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3122
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    if-ge p2, v0, :cond_0

    .line 3123
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    aget-object v0, v0, p1

    aget-boolean v0, v0, p2

    return v0

    .line 3125
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Position exceeds the bound of this CellLayout"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public lastDownOnOccupiedCell()Z
    .locals 1

    .prologue
    .line 3320
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mLastDownOnOccupiedCell:Z

    return v0
.end method

.method public markCellsAsOccupiedForView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3084
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;[[Z)V

    .line 3085
    return-void
.end method

.method public markCellsAsOccupiedForView(Landroid/view/View;[[Z)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "occupied"    # [[Z

    .prologue
    .line 3087
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    if-eq v0, v1, :cond_1

    .line 3090
    :cond_0
    :goto_0
    return-void

    .line 3088
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 3089
    .local v7, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v1, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v2, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v3, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v6, 0x1

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_0
.end method

.method public markCellsAsUnoccupiedForView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3093
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;[[Z)V

    .line 3094
    return-void
.end method

.method public markCellsAsUnoccupiedForView(Landroid/view/View;[[Z)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "occupied"    # [[Z

    .prologue
    .line 3096
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    if-eq v0, v1, :cond_1

    .line 3099
    :cond_0
    :goto_0
    return-void

    .line 3097
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 3098
    .local v7, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v1, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v2, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v3, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v6, 0x0

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 697
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 698
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, v1, Lcom/android/launcher2/CellLayout$CellInfo;->screen:I

    .line 699
    return-void
.end method

.method onDragEnter()V
    .locals 1

    .prologue
    .line 2905
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragEnforcer:Lcom/android/launcher2/DropTarget$DragEnforcer;

    invoke-virtual {v0}, Lcom/android/launcher2/DropTarget$DragEnforcer;->onDragEnter()V

    .line 2906
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    .line 2907
    return-void
.end method

.method onDragExit()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2913
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragEnforcer:Lcom/android/launcher2/DropTarget$DragEnforcer;

    invoke-virtual {v0}, Lcom/android/launcher2/DropTarget$DragEnforcer;->onDragExit()V

    .line 2917
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    if-eqz v0, :cond_0

    .line 2918
    iput-boolean v4, p0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    .line 2922
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v2, 0x1

    const/4 v3, -0x1

    aput v3, v1, v2

    aput v3, v0, v4

    .line 2923
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateOut()V

    .line 2924
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    .line 2925
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->revertTempState()V

    .line 2926
    invoke-virtual {p0, v4}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    .line 2927
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 423
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    move/from16 v18, v0

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_0

    .line 426
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 428
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/CellLayout;->mActiveGlowBackground:Landroid/graphics/drawable/Drawable;

    .line 433
    .local v6, "bg":Landroid/graphics/drawable/Drawable;
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mBackgroundAlphaMultiplier:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    const/high16 v19, 0x437f0000    # 255.0f

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 435
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 438
    .end local v6    # "bg":Landroid/graphics/drawable/Drawable;
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    .line 439
    .local v14, "paint":Landroid/graphics/Paint;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v12, v0, :cond_3

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAlphas:[F

    move-object/from16 v18, v0

    aget v4, v18, v12

    .line 441
    .local v4, "alpha":F
    const/16 v18, 0x0

    cmpl-float v18, v4, v18

    if-lez v18, :cond_1

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    move-object/from16 v18, v0

    aget-object v16, v18, v12

    .line 443
    .local v16, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->temp:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getChildrenScale()F

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout;->scaleRectAboutCenter(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    move-object/from16 v18, v0

    aget-object v18, v18, v12

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    .line 445
    .local v5, "b":Landroid/graphics/Bitmap;
    const/high16 v18, 0x3f000000    # 0.5f

    add-float v18, v18, v4

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 446
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->temp:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v5, v1, v2, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 439
    .end local v5    # "b":Landroid/graphics/Bitmap;
    .end local v16    # "r":Landroid/graphics/Rect;
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 430
    .end local v4    # "alpha":F
    .end local v12    # "i":I
    .end local v14    # "paint":Landroid/graphics/Paint;
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/CellLayout;->mNormalBackground:Landroid/graphics/drawable/Drawable;

    .restart local v6    # "bg":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 452
    .end local v6    # "bg":Landroid/graphics/drawable/Drawable;
    .restart local v12    # "i":I
    .restart local v14    # "paint":Landroid/graphics/Paint;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/BubbleTextView;->getPressedOrFocusedBackgroundPadding()I

    move-result v13

    .line 454
    .local v13, "padding":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/BubbleTextView;->getPressedOrFocusedBackground()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 455
    .restart local v5    # "b":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_4

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/BubbleTextView;->getLeft()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v19

    add-int v18, v18, v19

    sub-int v18, v18, v13

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/BubbleTextView;->getTop()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v20

    add-int v19, v19, v20

    sub-int v19, v19, v13

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 480
    .end local v5    # "b":Landroid/graphics/Bitmap;
    .end local v13    # "padding":I
    :cond_4
    sget v15, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->sPreviewSize:I

    .line 483
    .local v15, "previewOffset":I
    const/4 v12, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v12, v0, :cond_5

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    .line 487
    .local v10, "fra":Lcom/android/launcher2/FolderIcon$FolderRingAnimator;
    sget-object v9, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->sSharedOuterRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 488
    .local v9, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v10}, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->getOuterRingSize()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v17, v0

    .line 489
    .local v17, "width":I
    move/from16 v11, v17

    .line 490
    .local v11, "height":I
    iget v0, v10, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->mCellX:I

    move/from16 v18, v0

    iget v0, v10, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->mCellY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout;->cellToPoint(II[I)V

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    add-int v7, v18, v19

    .line 493
    .local v7, "centerX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    div-int/lit8 v19, v15, 0x2

    add-int v8, v18, v19

    .line 495
    .local v8, "centerY":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 496
    div-int/lit8 v18, v17, 0x2

    sub-int v18, v7, v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-int/lit8 v19, v11, 0x2

    sub-int v19, v8, v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 497
    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v9, v0, v1, v2, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 498
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 499
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 502
    sget-object v9, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->sSharedInnerRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 503
    invoke-virtual {v10}, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->getInnerRingSize()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v17, v0

    .line 504
    move/from16 v11, v17

    .line 505
    iget v0, v10, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->mCellX:I

    move/from16 v18, v0

    iget v0, v10, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->mCellY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout;->cellToPoint(II[I)V

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    add-int v7, v18, v19

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    div-int/lit8 v19, v15, 0x2

    add-int v8, v18, v19

    .line 509
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 510
    div-int/lit8 v18, v17, 0x2

    sub-int v18, v7, v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-int/lit8 v19, v17, 0x2

    sub-int v19, v8, v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 511
    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v9, v0, v1, v2, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 512
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 513
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 483
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 516
    .end local v7    # "centerX":I
    .end local v8    # "centerY":I
    .end local v9    # "d":Landroid/graphics/drawable/Drawable;
    .end local v10    # "fra":Lcom/android/launcher2/FolderIcon$FolderRingAnimator;
    .end local v11    # "height":I
    .end local v17    # "width":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mFolderLeaveBehindCell:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    if-ltz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mFolderLeaveBehindCell:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    if-ltz v18, :cond_6

    .line 517
    sget-object v9, Lcom/android/launcher2/FolderIcon;->sSharedFolderLeaveBehind:Landroid/graphics/drawable/Drawable;

    .line 518
    .restart local v9    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v17

    .line 519
    .restart local v17    # "width":I
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    .line 521
    .restart local v11    # "height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mFolderLeaveBehindCell:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mFolderLeaveBehindCell:[I

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout;->cellToPoint(II[I)V

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    add-int v7, v18, v19

    .line 523
    .restart local v7    # "centerX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    div-int/lit8 v19, v15, 0x2

    add-int v8, v18, v19

    .line 525
    .restart local v8    # "centerY":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 526
    div-int/lit8 v18, v17, 0x2

    sub-int v18, v7, v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-int/lit8 v19, v17, 0x2

    sub-int v19, v8, v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 527
    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v9, v0, v1, v2, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 528
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 529
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 531
    .end local v7    # "centerX":I
    .end local v8    # "centerY":I
    .end local v9    # "d":Landroid/graphics/drawable/Drawable;
    .end local v11    # "height":I
    .end local v17    # "width":I
    :cond_6
    return-void
.end method

.method onDropChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2937
    if-eqz p1, :cond_0

    .line 2938
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 2939
    .local v0, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->dropped:Z

    .line 2940
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 2942
    .end local v0    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 759
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 761
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 762
    invoke-direct {p0}, Lcom/android/launcher2/CellLayout;->clearTagCellInfo()V

    .line 765
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v1, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 766
    const/4 v1, 0x1

    .line 773
    :goto_0
    return v1

    .line 769
    :cond_1
    if-nez v0, :cond_2

    .line 770
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/CellLayout;->setTagToCellInfoForPoint(II)V

    .line 773
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1018
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v1

    .line 1019
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1020
    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1021
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v4

    sub-int v5, p4, p2

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int v6, p5, p3

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 1019
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1024
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 24
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 967
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 968
    .local v17, "widthSpecMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    .line 970
    .local v18, "widthSpecSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 971
    .local v8, "heightSpecMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 973
    .local v9, "heightSpecSize":I
    if-eqz v17, :cond_0

    if-nez v8, :cond_1

    .line 974
    :cond_0
    new-instance v19, Ljava/lang/RuntimeException;

    const-string v20, "CellLayout cannot have UNSPECIFIED dimensions"

    invoke-direct/range {v19 .. v20}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 977
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    move/from16 v19, v0

    add-int/lit8 v14, v19, -0x1

    .line 978
    .local v14, "numWidthGaps":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    move/from16 v19, v0

    add-int/lit8 v13, v19, -0x1

    .line 980
    .local v13, "numHeightGaps":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mOriginalWidthGap:I

    move/from16 v19, v0

    if-ltz v19, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mOriginalHeightGap:I

    move/from16 v19, v0

    if-gez v19, :cond_6

    .line 981
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v19

    sub-int v19, v18, v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingRight()I

    move-result v20

    sub-int v7, v19, v20

    .line 982
    .local v7, "hSpace":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v19

    sub-int v19, v9, v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingBottom()I

    move-result v20

    sub-int v16, v19, v20

    .line 983
    .local v16, "vSpace":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    sub-int v6, v7, v19

    .line 984
    .local v6, "hFreeSpace":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    sub-int v15, v16, v19

    .line 985
    .local v15, "vFreeSpace":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mMaxGap:I

    move/from16 v20, v0

    if-lez v14, :cond_4

    div-int v19, v6, v14

    :goto_0
    move/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    .line 986
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mMaxGap:I

    move/from16 v20, v0

    if-lez v13, :cond_5

    div-int v19, v15, v13

    :goto_1
    move/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    move/from16 v23, v0

    invoke-virtual/range {v19 .. v23}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->setCellDimensions(IIII)V

    .line 994
    .end local v6    # "hFreeSpace":I
    .end local v7    # "hSpace":I
    .end local v15    # "vFreeSpace":I
    .end local v16    # "vSpace":I
    :goto_2
    move/from16 v12, v18

    .line 995
    .local v12, "newWidth":I
    move v11, v9

    .line 996
    .local v11, "newHeight":I
    const/high16 v19, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 997
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingRight()I

    move-result v20

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    add-int v12, v19, v20

    .line 999
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingBottom()I

    move-result v20

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    add-int v11, v19, v20

    .line 1001
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11}, Lcom/android/launcher2/CellLayout;->setMeasuredDimension(II)V

    .line 1004
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v5

    .line 1005
    .local v5, "count":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    if-ge v10, v5, :cond_7

    .line 1006
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1007
    .local v2, "child":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v19

    sub-int v19, v12, v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingRight()I

    move-result v20

    sub-int v19, v19, v20

    const/high16 v20, 0x40000000    # 2.0f

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1009
    .local v3, "childWidthMeasureSpec":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v19

    sub-int v19, v11, v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingBottom()I

    move-result v20

    sub-int v19, v19, v20

    const/high16 v20, 0x40000000    # 2.0f

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1011
    .local v4, "childheightMeasureSpec":I
    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 1005
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 985
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childWidthMeasureSpec":I
    .end local v4    # "childheightMeasureSpec":I
    .end local v5    # "count":I
    .end local v10    # "i":I
    .end local v11    # "newHeight":I
    .end local v12    # "newWidth":I
    .restart local v6    # "hFreeSpace":I
    .restart local v7    # "hSpace":I
    .restart local v15    # "vFreeSpace":I
    .restart local v16    # "vSpace":I
    :cond_4
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 986
    :cond_5
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 989
    .end local v6    # "hFreeSpace":I
    .end local v7    # "hSpace":I
    .end local v15    # "vFreeSpace":I
    .end local v16    # "vSpace":I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mOriginalWidthGap:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    .line 990
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mOriginalHeightGap:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    goto/16 :goto_2

    .line 1013
    .restart local v5    # "count":I
    .restart local v10    # "i":I
    .restart local v11    # "newHeight":I
    .restart local v12    # "newWidth":I
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11}, Lcom/android/launcher2/CellLayout;->setMeasuredDimension(II)V

    .line 1014
    return-void
.end method

.method public onMove(Landroid/view/View;IIII)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "newCellX"    # I
    .param p3, "newCellY"    # I
    .param p4, "newSpanX"    # I
    .param p5, "newSpanY"    # I

    .prologue
    .line 3079
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 3080
    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIII[[ZZ)V

    .line 3081
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v1, 0x0

    .line 1028
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1029
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1030
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mForegroundRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mForegroundPadding:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mForegroundPadding:I

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mForegroundPadding:I

    sub-int v3, p1, v3

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mForegroundPadding:I

    sub-int v4, p2, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1032
    return-void
.end method

.method pointToCellExact(II[I)V
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "result"    # [I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 797
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 798
    .local v0, "hStartPadding":I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v1

    .line 800
    .local v1, "vStartPadding":I
    sub-int v4, p1, v0

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget v6, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    add-int/2addr v5, v6

    div-int/2addr v4, v5

    aput v4, p3, v7

    .line 801
    sub-int v4, p2, v1

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget v6, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    add-int/2addr v5, v6

    div-int/2addr v4, v5

    aput v4, p3, v8

    .line 803
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    .line 804
    .local v2, "xAxis":I
    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    .line 806
    .local v3, "yAxis":I
    aget v4, p3, v7

    if-gez v4, :cond_0

    aput v7, p3, v7

    .line 807
    :cond_0
    aget v4, p3, v7

    if-lt v4, v2, :cond_1

    add-int/lit8 v4, v2, -0x1

    aput v4, p3, v7

    .line 808
    :cond_1
    aget v4, p3, v8

    if-gez v4, :cond_2

    aput v7, p3, v8

    .line 809
    :cond_2
    aget v4, p3, v8

    if-lt v4, v3, :cond_3

    add-int/lit8 v4, v3, -0x1

    aput v4, p3, v8

    .line 810
    :cond_3
    return-void
.end method

.method pointToCellRounded(II[I)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "result"    # [I

    .prologue
    .line 819
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1, p3}, Lcom/android/launcher2/CellLayout;->pointToCellExact(II[I)V

    .line 820
    return-void
.end method

.method public prepareChildForDrag(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2444
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 2445
    return-void
.end method

.method public rectToCell(II[I)[I
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "result"    # [I

    .prologue
    .line 2980
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/android/launcher2/CellLayout;->rectToCell(Landroid/content/res/Resources;II[I)[I

    move-result-object v0

    return-object v0
.end method

.method regionToCenterPoint(IIII[I)V
    .locals 7
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "result"    # [I

    .prologue
    .line 859
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 860
    .local v0, "hStartPadding":I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v1

    .line 861
    .local v1, "vStartPadding":I
    const/4 v2, 0x0

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p1

    add-int/2addr v3, v0

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    mul-int/2addr v4, p3

    add-int/lit8 v5, p3, -0x1

    iget v6, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    aput v3, p5, v2

    .line 863
    const/4 v2, 0x1

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p2

    add-int/2addr v3, v1

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    mul-int/2addr v4, p4

    add-int/lit8 v5, p4, -0x1

    iget v6, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    aput v3, p5, v2

    .line 865
    return-void
.end method

.method regionToRect(IIIILandroid/graphics/Rect;)V
    .locals 8
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "result"    # Landroid/graphics/Rect;

    .prologue
    .line 875
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 876
    .local v0, "hStartPadding":I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v3

    .line 877
    .local v3, "vStartPadding":I
    iget v4, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    add-int/2addr v4, v5

    mul-int/2addr v4, p1

    add-int v1, v0, v4

    .line 878
    .local v1, "left":I
    iget v4, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    add-int/2addr v4, v5

    mul-int/2addr v4, p2

    add-int v2, v3, v4

    .line 879
    .local v2, "top":I
    iget v4, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    mul-int/2addr v4, p3

    add-int/lit8 v5, p3, -0x1

    iget v6, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    mul-int/2addr v5, p4

    add-int/lit8 v6, p4, -0x1

    iget v7, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v2

    invoke-virtual {p5, v1, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 881
    return-void
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    .line 645
    invoke-direct {p0}, Lcom/android/launcher2/CellLayout;->clearOccupiedCells()V

    .line 646
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->removeAllViews()V

    .line 647
    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 652
    invoke-direct {p0}, Lcom/android/launcher2/CellLayout;->clearOccupiedCells()V

    .line 653
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->removeAllViewsInLayout()V

    .line 655
    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 663
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 664
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->removeView(Landroid/view/View;)V

    .line 665
    return-void
.end method

.method public removeViewAt(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 670
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->removeViewAt(I)V

    .line 671
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 675
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 676
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->removeViewInLayout(Landroid/view/View;)V

    .line 677
    return-void
.end method

.method public removeViewWithoutMarkingCells(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->removeView(Landroid/view/View;)V

    .line 659
    return-void
.end method

.method public removeViews(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 681
    move v0, p1

    .local v0, "i":I
    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    .line 682
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 681
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 684
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->removeViews(II)V

    .line 685
    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 689
    move v0, p1

    .local v0, "i":I
    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    .line 690
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 689
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 692
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->removeViewsInLayout(II)V

    .line 693
    return-void
.end method

.method protected resetOverscrollTransforms()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 385
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mScrollingTransformsDirty:Z

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayout;->setOverscrollTransformsDirty(Z)V

    .line 387
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->setTranslationX(F)V

    .line 388
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->setRotationY(F)V

    .line 391
    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/CellLayout;->setOverScrollAmount(FZ)V

    .line 392
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->setPivotX(F)V

    .line 393
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->setPivotY(F)V

    .line 395
    :cond_0
    return-void
.end method

.method public restoreInstanceState(Landroid/util/SparseArray;)V
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
    .line 574
    .local p1, "states":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 575
    return-void
.end method

.method revertTempState()V
    .locals 11

    .prologue
    const/4 v5, 0x0

    .line 2526
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->isItemPlacementDirty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2527
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v8

    .line 2528
    .local v8, "count":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v8, :cond_2

    .line 2529
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v0, v9}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2530
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 2531
    .local v10, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellX:I

    iget v2, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    if-ne v0, v2, :cond_0

    iget v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    iget v2, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-eq v0, v2, :cond_1

    .line 2532
    :cond_0
    iget v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellX:I

    .line 2533
    iget v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    .line 2534
    iget v2, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v3, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    const/16 v4, 0x96

    move-object v0, p0

    move v6, v5

    move v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    .line 2528
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2538
    .end local v1    # "child":Landroid/view/View;
    .end local v10    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher2/CellLayout;->completeAndClearReorderHintAnimations()V

    .line 2539
    invoke-virtual {p0, v5}, Lcom/android/launcher2/CellLayout;->setItemPlacementDirty(Z)V

    .line 2540
    .end local v8    # "count":I
    .end local v9    # "i":I
    :cond_3
    return-void
.end method

.method public scaleRect(Landroid/graphics/Rect;F)V
    .locals 2
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "scale"    # F

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 398
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_0

    .line 399
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 400
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 401
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 402
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 404
    :cond_0
    return-void
.end method

.method scaleRectAboutCenter(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V
    .locals 4
    .param p1, "in"    # Landroid/graphics/Rect;
    .param p2, "out"    # Landroid/graphics/Rect;
    .param p3, "scale"    # F

    .prologue
    .line 408
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 409
    .local v0, "cx":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 410
    .local v1, "cy":I
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 411
    neg-int v2, v0

    neg-int v3, v1

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 412
    invoke-virtual {p0, p2, p3}, Lcom/android/launcher2/CellLayout;->scaleRect(Landroid/graphics/Rect;F)V

    .line 413
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 414
    return-void
.end method

.method public setBackgroundAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 1060
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1061
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    .line 1062
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 1064
    :cond_0
    return-void
.end method

.method public setBackgroundAlphaMultiplier(F)V
    .locals 1
    .param p1, "multiplier"    # F

    .prologue
    .line 1049
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlphaMultiplier:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1050
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlphaMultiplier:F

    .line 1051
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 1053
    :cond_0
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->setChildrenDrawingCacheEnabled(Z)V

    .line 1037
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1042
    return-void
.end method

.method public setFolderLeaveBehindCell(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mFolderLeaveBehindCell:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 558
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mFolderLeaveBehindCell:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 559
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 560
    return-void
.end method

.method public setGridSize(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 328
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    .line 329
    iput p2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    .line 330
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    .line 331
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    .line 332
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 333
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->requestLayout()V

    .line 334
    return-void
.end method

.method setIsDragOverlapping(Z)V
    .locals 1
    .param p1, "isDragOverlapping"    # Z

    .prologue
    .line 370
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    if-eq v0, p1, :cond_0

    .line 371
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    .line 372
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 374
    :cond_0
    return-void
.end method

.method public setIsHotseat(Z)V
    .locals 0
    .param p1, "isHotseat"    # Z

    .prologue
    .line 602
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout;->mIsHotseat:Z

    .line 603
    return-void
.end method

.method setItemPlacementDirty(Z)V
    .locals 0
    .param p1, "dirty"    # Z

    .prologue
    .line 2659
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout;->mItemPlacementDirty:Z

    .line 2660
    return-void
.end method

.method public setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 590
    iput-object p1, p0, Lcom/android/launcher2/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    .line 591
    return-void
.end method

.method setOverScrollAmount(FZ)V
    .locals 2
    .param p1, "r"    # F
    .param p2, "left"    # Z

    .prologue
    .line 345
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mOverScrollLeft:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_1

    .line 346
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollLeft:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 351
    :cond_0
    :goto_0
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/CellLayout;->mForegroundAlpha:I

    .line 352
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mForegroundAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 353
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 354
    return-void

    .line 347
    :cond_1
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mOverScrollRight:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollRight:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method protected setOverscrollTransformsDirty(Z)V
    .locals 0
    .param p1, "dirty"    # Z

    .prologue
    .line 381
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout;->mScrollingTransformsDirty:Z

    .line 382
    return-void
.end method

.method setPressedOrFocusedIcon(Lcom/android/launcher2/BubbleTextView;)V
    .locals 2
    .param p1, "icon"    # Lcom/android/launcher2/BubbleTextView;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

    .line 360
    .local v0, "oldIcon":Lcom/android/launcher2/BubbleTextView;
    iput-object p1, p0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

    .line 361
    if-eqz v0, :cond_0

    .line 362
    invoke-direct {p0, v0}, Lcom/android/launcher2/CellLayout;->invalidateBubbleTextView(Lcom/android/launcher2/BubbleTextView;)V

    .line 364
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

    if-eqz v1, :cond_1

    .line 365
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

    invoke-direct {p0, v1}, Lcom/android/launcher2/CellLayout;->invalidateBubbleTextView(Lcom/android/launcher2/BubbleTextView;)V

    .line 367
    :cond_1
    return-void
.end method

.method public setShortcutAndWidgetAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    .line 1067
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v0

    .line 1068
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1069
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 1068
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1071
    :cond_0
    return-void
.end method

.method public setTagToCellInfoForPoint(II)V
    .locals 15
    .param p1, "touchX"    # I
    .param p2, "touchY"    # I

    .prologue
    .line 702
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    .line 703
    .local v0, "cellInfo":Lcom/android/launcher2/CellLayout$CellInfo;
    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mRect:Landroid/graphics/Rect;

    .line 704
    .local v5, "frame":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getScrollX()I

    move-result v11

    add-int v9, p1, v11

    .line 705
    .local v9, "x":I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getScrollY()I

    move-result v11

    add-int v10, p2, v11

    .line 706
    .local v10, "y":I
    iget-object v11, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v11}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v3

    .line 708
    .local v3, "count":I
    const/4 v4, 0x0

    .line 709
    .local v4, "found":Z
    add-int/lit8 v6, v3, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_1

    .line 710
    iget-object v11, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v11, v6}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 711
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 713
    .local v7, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v11

    if-eqz v11, :cond_3

    :cond_0
    iget-boolean v11, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    if-eqz v11, :cond_3

    .line 715
    invoke-virtual {v2, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 717
    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v8

    .line 718
    .local v8, "scale":F
    new-instance v5, Landroid/graphics/Rect;

    .end local v5    # "frame":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v12

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v13

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v14

    invoke-direct {v5, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 723
    .restart local v5    # "frame":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v11

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v12

    invoke-virtual {v5, v11, v12}, Landroid/graphics/Rect;->offset(II)V

    .line 724
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v8

    mul-float/2addr v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    float-to-int v11, v11

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v13, v8

    mul-float/2addr v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    float-to-int v12, v12

    invoke-virtual {v5, v11, v12}, Landroid/graphics/Rect;->inset(II)V

    .line 727
    invoke-virtual {v5, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 728
    iput-object v2, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 729
    iget v11, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iput v11, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    .line 730
    iget v11, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iput v11, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    .line 731
    iget v11, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iput v11, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    .line 732
    iget v11, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    iput v11, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    .line 733
    const/4 v4, 0x1

    .line 739
    .end local v2    # "child":Landroid/view/View;
    .end local v7    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v8    # "scale":F
    :cond_1
    iput-boolean v4, p0, Lcom/android/launcher2/CellLayout;->mLastDownOnOccupiedCell:Z

    .line 741
    if-nez v4, :cond_2

    .line 742
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    .line 743
    .local v1, "cellXY":[I
    invoke-virtual {p0, v9, v10, v1}, Lcom/android/launcher2/CellLayout;->pointToCellExact(II[I)V

    .line 745
    const/4 v11, 0x0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 746
    const/4 v11, 0x0

    aget v11, v1, v11

    iput v11, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    .line 747
    const/4 v11, 0x1

    aget v11, v1, v11

    iput v11, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    .line 748
    const/4 v11, 0x1

    iput v11, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    .line 749
    const/4 v11, 0x1

    iput v11, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    .line 751
    .end local v1    # "cellXY":[I
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->setTag(Ljava/lang/Object;)V

    .line 752
    return-void

    .line 709
    .restart local v2    # "child":Landroid/view/View;
    .restart local v7    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_0
.end method

.method public setUseTempCoords(Z)V
    .locals 4
    .param p1, "useTempCoords"    # Z

    .prologue
    .line 2417
    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v3}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    .line 2418
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2419
    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 2420
    .local v2, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    iput-boolean p1, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->useTmpCoords:Z

    .line 2418
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2422
    .end local v2    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 570
    const/4 v0, 0x0

    return v0
.end method

.method public showFolderAccept(Lcom/android/launcher2/FolderIcon$FolderRingAnimator;)V
    .locals 1
    .param p1, "fra"    # Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    return-void
.end method

.method simpleSwap(IIIIII[ILandroid/view/View;ZLcom/android/launcher2/CellLayout$ItemConfiguration;)Lcom/android/launcher2/CellLayout$ItemConfiguration;
    .locals 20
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "minSpanX"    # I
    .param p4, "minSpanY"    # I
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I
    .param p7, "direction"    # [I
    .param p8, "dragView"    # Landroid/view/View;
    .param p9, "decX"    # Z
    .param p10, "solution"    # Lcom/android/launcher2/CellLayout$ItemConfiguration;

    .prologue
    .line 2147
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p10

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/CellLayout;->copyCurrentStateToSolution(Lcom/android/launcher2/CellLayout$ItemConfiguration;Z)V

    .line 2150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher2/CellLayout;->copyOccupiedArray([[Z)V

    .line 2154
    const/4 v2, 0x2

    new-array v7, v2, [I

    .local v7, "result":[I
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p5

    move/from16 v6, p6

    .line 2155
    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher2/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v7

    .line 2157
    const/16 v19, 0x0

    .line 2160
    .local v19, "success":Z
    const/4 v2, 0x0

    aget v9, v7, v2

    const/4 v2, 0x1

    aget v10, v7, v2

    move-object/from16 v8, p0

    move/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, p10

    invoke-direct/range {v8 .. v15}, Lcom/android/launcher2/CellLayout;->rearrangementExists(IIII[ILandroid/view/View;Lcom/android/launcher2/CellLayout$ItemConfiguration;)Z

    move-result v19

    .line 2163
    if-nez v19, :cond_3

    .line 2166
    move/from16 v0, p5

    move/from16 v1, p3

    if-le v0, v1, :cond_1

    move/from16 v0, p4

    move/from16 v1, p6

    if-eq v0, v1, :cond_0

    if-eqz p9, :cond_1

    .line 2167
    :cond_0
    add-int/lit8 v13, p5, -0x1

    const/16 v17, 0x0

    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v14, p6

    move-object/from16 v15, p7

    move-object/from16 v16, p8

    move-object/from16 v18, p10

    invoke-virtual/range {v8 .. v18}, Lcom/android/launcher2/CellLayout;->simpleSwap(IIIIII[ILandroid/view/View;ZLcom/android/launcher2/CellLayout$ItemConfiguration;)Lcom/android/launcher2/CellLayout$ItemConfiguration;

    move-result-object p10

    .line 2181
    .end local p10    # "solution":Lcom/android/launcher2/CellLayout$ItemConfiguration;
    :goto_0
    return-object p10

    .line 2169
    .restart local p10    # "solution":Lcom/android/launcher2/CellLayout$ItemConfiguration;
    :cond_1
    move/from16 v0, p6

    move/from16 v1, p4

    if-le v0, v1, :cond_2

    .line 2170
    add-int/lit8 v14, p6, -0x1

    const/16 v17, 0x1

    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    move-object/from16 v15, p7

    move-object/from16 v16, p8

    move-object/from16 v18, p10

    invoke-virtual/range {v8 .. v18}, Lcom/android/launcher2/CellLayout;->simpleSwap(IIIIII[ILandroid/view/View;ZLcom/android/launcher2/CellLayout$ItemConfiguration;)Lcom/android/launcher2/CellLayout$ItemConfiguration;

    move-result-object p10

    goto :goto_0

    .line 2173
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p10

    iput-boolean v2, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->isSolution:Z

    goto :goto_0

    .line 2175
    :cond_3
    const/4 v2, 0x1

    move-object/from16 v0, p10

    iput-boolean v2, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->isSolution:Z

    .line 2176
    const/4 v2, 0x0

    aget v2, v7, v2

    move-object/from16 v0, p10

    iput v2, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewX:I

    .line 2177
    const/4 v2, 0x1

    aget v2, v7, v2

    move-object/from16 v0, p10

    iput v2, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewY:I

    .line 2178
    move/from16 v0, p5

    move-object/from16 v1, p10

    iput v0, v1, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewSpanX:I

    .line 2179
    move/from16 v0, p6

    move-object/from16 v1, p10

    iput v0, v1, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewSpanY:I

    goto :goto_0
.end method

.method visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;IIIIIIZLandroid/graphics/Point;Landroid/graphics/Rect;)V
    .locals 15
    .param p1, "v"    # Landroid/view/View;
    .param p2, "dragOutline"    # Landroid/graphics/Bitmap;
    .param p3, "originX"    # I
    .param p4, "originY"    # I
    .param p5, "cellX"    # I
    .param p6, "cellY"    # I
    .param p7, "spanX"    # I
    .param p8, "spanY"    # I
    .param p9, "resize"    # Z
    .param p10, "dragOffset"    # Landroid/graphics/Point;
    .param p11, "dragRegion"    # Landroid/graphics/Rect;

    .prologue
    .line 1200
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v3, 0x0

    aget v10, v2, v3

    .line 1201
    .local v10, "oldDragCellX":I
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v3, 0x1

    aget v11, v2, v3

    .line 1203
    .local v11, "oldDragCellY":I
    if-eqz p1, :cond_1

    if-nez p10, :cond_1

    .line 1204
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mDragCenter:Landroid/graphics/Point;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v3, v3, p3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v4, v4, p4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 1209
    :goto_0
    if-nez p2, :cond_2

    if-nez p1, :cond_2

    .line 1264
    :cond_0
    :goto_1
    return-void

    .line 1206
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mDragCenter:Landroid/graphics/Point;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 1213
    :cond_2
    move/from16 v0, p5

    if-ne v0, v10, :cond_3

    move/from16 v0, p6

    if-eq v0, v11, :cond_0

    .line 1214
    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v3, 0x0

    aput p5, v2, v3

    .line 1215
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v3, 0x1

    aput p6, v2, v3

    .line 1217
    iget-object v14, p0, Lcom/android/launcher2/CellLayout;->mTmpPoint:[I

    .line 1218
    .local v14, "topLeft":[I
    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {p0, v0, v1, v14}, Lcom/android/launcher2/CellLayout;->cellToPoint(II[I)V

    .line 1220
    const/4 v2, 0x0

    aget v8, v14, v2

    .line 1221
    .local v8, "left":I
    const/4 v2, 0x1

    aget v13, v14, v2

    .line 1223
    .local v13, "top":I
    if-eqz p1, :cond_5

    if-nez p10, :cond_5

    .line 1226
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1227
    .local v9, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v8, v2

    .line 1228
    iget v2, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v13, v2

    .line 1233
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v13, v2

    .line 1235
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    mul-int v2, v2, p7

    add-int/lit8 v3, p7, -0x1

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v8, v2

    .line 1252
    .end local v9    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :goto_2
    iget v12, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    .line 1253
    .local v12, "oldIndex":I
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    aget-object v2, v2, v12

    invoke-virtual {v2}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateOut()V

    .line 1254
    add-int/lit8 v2, v12, 0x1

    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v3, v3

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    .line 1255
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    aget-object v7, v2, v3

    .line 1256
    .local v7, "r":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/2addr v2, v8

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/2addr v3, v13

    invoke-virtual {v7, v8, v13, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1257
    if-eqz p9, :cond_4

    move-object v2, p0

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    .line 1258
    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher2/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    .line 1261
    :cond_4
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    aget-object v2, v2, v3

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/android/launcher2/InterruptibleInOutAnimator;->setTag(Ljava/lang/Object;)V

    .line 1262
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateIn()V

    goto/16 :goto_1

    .line 1238
    .end local v7    # "r":Landroid/graphics/Rect;
    .end local v12    # "oldIndex":I
    :cond_5
    if-eqz p10, :cond_6

    if-eqz p11, :cond_6

    .line 1241
    move-object/from16 v0, p10

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    mul-int v3, v3, p7

    add-int/lit8 v4, p7, -0x1

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    invoke-virtual/range {p11 .. p11}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v8, v2

    .line 1243
    move-object/from16 v0, p10

    iget v2, v0, Landroid/graphics/Point;->y:I

    add-int/2addr v13, v2

    goto :goto_2

    .line 1246
    :cond_6
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    mul-int v2, v2, p7

    add-int/lit8 v3, p7, -0x1

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v8, v2

    .line 1248
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    mul-int v2, v2, p8

    add-int/lit8 v3, p8, -0x1

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v13, v2

    goto/16 :goto_2
.end method

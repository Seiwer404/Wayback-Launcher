.class public Lcom/android/launcher2/Folder;
.super Landroid/widget/LinearLayout;
.source "Folder.java"

# interfaces
.implements Lcom/android/launcher2/DragSource;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher2/DropTarget;
.implements Lcom/android/launcher2/FolderInfo$FolderListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/Folder$GridComparator;
    }
.end annotation


# static fields
.field private static final ON_EXIT_CLOSE_DELAY:I = 0x320

.field private static final REORDER_ANIMATION_DURATION:I = 0xe6

.field static final STATE_ANIMATING:I = 0x1

.field static final STATE_NONE:I = -0x1

.field static final STATE_OPEN:I = 0x2

.field static final STATE_SMALL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Launcher.Folder"

.field private static sDefaultFolderName:Ljava/lang/String;

.field private static sHintText:Ljava/lang/String;


# instance fields
.field private mActionModeCallback:Landroid/view/ActionMode$Callback;

.field protected mContent:Lcom/android/launcher2/CellLayout;

.field private mCurrentDragInfo:Lcom/android/launcher2/ShortcutInfo;

.field private mCurrentDragView:Landroid/view/View;

.field private mDeleteFolderOnDropCompleted:Z

.field private mDestroyed:Z

.field protected mDragController:Lcom/android/launcher2/DragController;

.field private mDragInProgress:Z

.field private mEmptyCell:[I

.field private mExpandDuration:I

.field private mFolderIcon:Lcom/android/launcher2/FolderIcon;

.field private mFolderIconPivotX:F

.field private mFolderIconPivotY:F

.field mFolderName:Lcom/android/launcher2/FolderEditText;

.field private mFolderNameHeight:I

.field private final mIconCache:Lcom/android/launcher2/IconCache;

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private final mInflater:Landroid/view/LayoutInflater;

.field protected mInfo:Lcom/android/launcher2/FolderInfo;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsEditingName:Z

.field private mItemAddedBackToSelfViaIcon:Z

.field private mItemsInReadingOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mItemsInvalidated:Z

.field protected mLauncher:Lcom/android/launcher2/Launcher;

.field private mMaxCountX:I

.field private mMaxCountY:I

.field private mMaxNumItems:I

.field private mOnExitAlarm:Lcom/android/launcher2/Alarm;

.field mOnExitAlarmListener:Lcom/android/launcher2/OnAlarmListener;

.field private mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

.field private mPreviousTargetCell:[I

.field private mRearrangeOnClose:Z

.field private mReorderAlarm:Lcom/android/launcher2/Alarm;

.field mReorderAlarmListener:Lcom/android/launcher2/OnAlarmListener;

.field private mState:I

.field private mSuppressFolderDeletion:Z

.field mSuppressOnAdd:Z

.field private mTargetCell:[I

.field private mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 120
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher2/Folder;->mState:I

    .line 78
    iput-boolean v2, p0, Lcom/android/launcher2/Folder;->mRearrangeOnClose:Z

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mItemsInReadingOrder:Ljava/util/ArrayList;

    .line 85
    iput-boolean v2, p0, Lcom/android/launcher2/Folder;->mItemsInvalidated:Z

    .line 88
    iput-boolean v2, p0, Lcom/android/launcher2/Folder;->mSuppressOnAdd:Z

    .line 89
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mTargetCell:[I

    .line 90
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mPreviousTargetCell:[I

    .line 91
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mEmptyCell:[I

    .line 92
    new-instance v1, Lcom/android/launcher2/Alarm;

    invoke-direct {v1}, Lcom/android/launcher2/Alarm;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    .line 93
    new-instance v1, Lcom/android/launcher2/Alarm;

    invoke-direct {v1}, Lcom/android/launcher2/Alarm;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    .line 95
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mTempRect:Landroid/graphics/Rect;

    .line 96
    iput-boolean v2, p0, Lcom/android/launcher2/Folder;->mDragInProgress:Z

    .line 97
    iput-boolean v2, p0, Lcom/android/launcher2/Folder;->mDeleteFolderOnDropCompleted:Z

    .line 98
    iput-boolean v2, p0, Lcom/android/launcher2/Folder;->mSuppressFolderDeletion:Z

    .line 99
    iput-boolean v2, p0, Lcom/android/launcher2/Folder;->mItemAddedBackToSelfViaIcon:Z

    .line 104
    iput-boolean v2, p0, Lcom/android/launcher2/Folder;->mIsEditingName:Z

    .line 177
    new-instance v1, Lcom/android/launcher2/Folder$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Folder$1;-><init>(Lcom/android/launcher2/Folder;)V

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    .line 573
    new-instance v1, Lcom/android/launcher2/Folder$6;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Folder$6;-><init>(Lcom/android/launcher2/Folder;)V

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mReorderAlarmListener:Lcom/android/launcher2/OnAlarmListener;

    .line 670
    new-instance v1, Lcom/android/launcher2/Folder$7;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Folder$7;-><init>(Lcom/android/launcher2/Folder;)V

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mOnExitAlarmListener:Lcom/android/launcher2/OnAlarmListener;

    .line 121
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Folder;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 122
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mInflater:Landroid/view/LayoutInflater;

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getIconCache()Lcom/android/launcher2/IconCache;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mIconCache:Lcom/android/launcher2/IconCache;

    .line 125
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 126
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0a001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Folder;->mMaxCountX:I

    .line 127
    const v1, 0x7f0a001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Folder;->mMaxCountY:I

    .line 128
    const v1, 0x7f0a001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Folder;->mMaxNumItems:I

    .line 129
    iget v1, p0, Lcom/android/launcher2/Folder;->mMaxCountX:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/Folder;->mMaxCountY:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/Folder;->mMaxNumItems:I

    if-gez v1, :cond_1

    .line 130
    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Folder;->mMaxCountX:I

    .line 131
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Folder;->mMaxCountY:I

    .line 132
    iget v1, p0, Lcom/android/launcher2/Folder;->mMaxCountX:I

    iget v2, p0, Lcom/android/launcher2/Folder;->mMaxCountY:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher2/Folder;->mMaxNumItems:I

    .line 135
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 138
    const v1, 0x7f0a0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Folder;->mExpandDuration:I

    .line 140
    sget-object v1, Lcom/android/launcher2/Folder;->sDefaultFolderName:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 141
    const v1, 0x7f0d0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/launcher2/Folder;->sDefaultFolderName:Ljava/lang/String;

    .line 143
    :cond_2
    sget-object v1, Lcom/android/launcher2/Folder;->sHintText:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 144
    const v1, 0x7f0d0046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/launcher2/Folder;->sHintText:Ljava/lang/String;

    .line 146
    :cond_3
    check-cast p1, Lcom/android/launcher2/Launcher;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 150
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Folder;->setFocusableInTouchMode(Z)V

    .line 151
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/Folder;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/Folder;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/Folder;->sendCustomAccessibilityEvent(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/launcher2/Folder;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/Folder;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/android/launcher2/Folder;->mState:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/launcher2/Folder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/Folder;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->setFocusOnFirstChild()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher2/Folder;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/Folder;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/Folder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/Folder;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->onCloseComplete()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/launcher2/Folder;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/Folder;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mEmptyCell:[I

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/Folder;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/Folder;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mTargetCell:[I

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher2/Folder;[I[I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/Folder;
    .param p1, "x1"    # [I
    .param p2, "x2"    # [I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/Folder;->realTimeReorder([I[I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/launcher2/Folder;)Lcom/android/launcher2/FolderIcon;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/Folder;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    return-object v0
.end method

.method private arrangeChildren(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 891
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x2

    new-array v12, v0, [I

    .line 892
    .local v12, "vacant":[I
    if-nez p1, :cond_0

    .line 893
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object p1

    .line 895
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->removeAllViews()V

    .line 897
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_4

    .line 898
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 899
    .local v11, "v":Landroid/view/View;
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v12, v2, v3}, Lcom/android/launcher2/CellLayout;->getVacantCell([III)Z

    .line 900
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 901
    .local v10, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    const/4 v0, 0x0

    aget v0, v12, v0

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 902
    const/4 v0, 0x1

    aget v0, v12, v0

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 903
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ItemInfo;

    .line 904
    .local v1, "info":Lcom/android/launcher2/ItemInfo;
    iget v0, v1, Lcom/android/launcher2/ItemInfo;->cellX:I

    const/4 v2, 0x0

    aget v2, v12, v2

    if-ne v0, v2, :cond_1

    iget v0, v1, Lcom/android/launcher2/ItemInfo;->cellY:I

    const/4 v2, 0x1

    aget v2, v12, v2

    if-eq v0, v2, :cond_2

    .line 905
    :cond_1
    const/4 v0, 0x0

    aget v0, v12, v0

    iput v0, v1, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 906
    const/4 v0, 0x1

    aget v0, v12, v0

    iput v0, v1, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 907
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget-wide v2, v2, Lcom/android/launcher2/FolderInfo;->id:J

    const/4 v4, 0x0

    iget v5, v1, Lcom/android/launcher2/ItemInfo;->cellX:I

    iget v6, v1, Lcom/android/launcher2/ItemInfo;->cellY:I

    invoke-static/range {v0 .. v6}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIII)V

    .line 910
    :cond_2
    const/4 v9, 0x0

    .line 911
    .local v9, "insert":Z
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    if-eqz v9, :cond_3

    const/4 v4, 0x0

    :goto_1
    iget-wide v5, v1, Lcom/android/launcher2/ItemInfo;->id:J

    long-to-int v5, v5

    const/4 v7, 0x1

    move-object v3, v11

    move-object v6, v10

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher2/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/CellLayout$LayoutParams;Z)Z

    .line 897
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 911
    :cond_3
    const/4 v4, -0x1

    goto :goto_1

    .line 913
    .end local v1    # "info":Lcom/android/launcher2/ItemInfo;
    .end local v9    # "insert":Z
    .end local v10    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v11    # "v":Landroid/view/View;
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Folder;->mItemsInvalidated:Z

    .line 914
    return-void
.end method

.method private centerAboutIcon()V
    .locals 22

    .prologue
    .line 801
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/DragLayer$LayoutParams;

    .line 803
    .local v14, "lp":Lcom/android/launcher2/DragLayer$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getPaddingLeft()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getPaddingRight()I

    move-result v20

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/CellLayout;->getDesiredWidth()I

    move-result v20

    add-int v18, v19, v20

    .line 804
    .local v18, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getPaddingTop()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getPaddingBottom()I

    move-result v20

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/CellLayout;->getDesiredHeight()I

    move-result v20

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Folder;->mFolderNameHeight:I

    move/from16 v20, v0

    add-int v12, v19, v20

    .line 806
    .local v12, "height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v19, v0

    const v20, 0x7f07001b

    invoke-virtual/range {v19 .. v20}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/DragLayer;

    .line 808
    .local v15, "parent":Lcom/android/launcher2/DragLayer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Lcom/android/launcher2/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v16

    .line 810
    .local v16, "scale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v16

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v4, v0

    .line 811
    .local v4, "centerX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v16

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v5, v0

    .line 812
    .local v5, "centerY":I
    div-int/lit8 v19, v18, 0x2

    sub-int v6, v4, v19

    .line 813
    .local v6, "centeredLeft":I
    div-int/lit8 v19, v12, 0x2

    sub-int v7, v5, v19

    .line 815
    .local v7, "centeredTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v9

    .line 818
    .local v9, "currentPage":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/android/launcher2/Workspace;->setFinalScrollForPageChange(I)V

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout;

    .line 821
    .local v8, "currentLayout":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v8}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v2

    .line 822
    .local v2, "boundingLayout":Lcom/android/launcher2/ShortcutAndWidgetContainer;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 823
    .local v3, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v15, v2, v3}, Lcom/android/launcher2/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/android/launcher2/Workspace;->resetFinalScrollForPageChange(I)V

    .line 828
    iget v0, v3, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v19

    iget v0, v3, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v21

    add-int v20, v20, v21

    sub-int v20, v20, v18

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 830
    .local v13, "left":I
    iget v0, v3, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v19

    iget v0, v3, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v21

    add-int v20, v20, v21

    sub-int v20, v20, v12

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 833
    .local v17, "top":I
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_0

    .line 834
    iget v0, v3, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v20

    sub-int v20, v20, v18

    div-int/lit8 v20, v20, 0x2

    add-int v13, v19, v20

    .line 836
    :cond_0
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v19

    move/from16 v0, v19

    if-lt v12, v0, :cond_1

    .line 837
    iget v0, v3, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v20

    sub-int v20, v20, v12

    div-int/lit8 v20, v20, 0x2

    add-int v17, v19, v20

    .line 840
    :cond_1
    div-int/lit8 v19, v18, 0x2

    sub-int v20, v6, v13

    add-int v10, v19, v20

    .line 841
    .local v10, "folderPivotX":I
    div-int/lit8 v19, v12, 0x2

    sub-int v20, v7, v17

    add-int v11, v19, v20

    .line 842
    .local v11, "folderPivotY":I
    int-to-float v0, v10

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Folder;->setPivotX(F)V

    .line 843
    int-to-float v0, v11

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Folder;->setPivotY(F)V

    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/FolderIcon;->getMeasuredWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3f800000    # 1.0f

    int-to-float v0, v10

    move/from16 v21, v0

    mul-float v20, v20, v21

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/Folder;->mFolderIconPivotX:F

    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/FolderIcon;->getMeasuredHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3f800000    # 1.0f

    int-to-float v0, v11

    move/from16 v21, v0

    mul-float v20, v20, v21

    int-to-float v0, v12

    move/from16 v21, v0

    div-float v20, v20, v21

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/Folder;->mFolderIconPivotY:F

    .line 849
    move/from16 v0, v18

    iput v0, v14, Lcom/android/launcher2/DragLayer$LayoutParams;->width:I

    .line 850
    iput v12, v14, Lcom/android/launcher2/DragLayer$LayoutParams;->height:I

    .line 851
    iput v13, v14, Lcom/android/launcher2/DragLayer$LayoutParams;->x:I

    .line 852
    move/from16 v0, v17

    iput v0, v14, Lcom/android/launcher2/DragLayer$LayoutParams;->y:I

    .line 853
    return-void
.end method

.method static fromXml(Landroid/content/Context;)Lcom/android/launcher2/Folder;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 400
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040015

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Folder;

    return-object v0
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
    .line 650
    if-nez p6, :cond_0

    .line 651
    const/4 v3, 0x2

    new-array v1, v3, [F

    .line 660
    .local v1, "res":[F
    :goto_0
    sub-int v0, p1, p3

    .line 661
    .local v0, "left":I
    sub-int v2, p2, p4

    .line 664
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

    .line 665
    const/4 v3, 0x1

    invoke-virtual {p5}, Lcom/android/launcher2/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    int-to-float v4, v4

    aput v4, v1, v3

    .line 667
    return-object v1

    .line 653
    .end local v0    # "left":I
    .end local v1    # "res":[F
    .end local v2    # "top":I
    :cond_0
    move-object v1, p6

    .restart local v1    # "res":[F
    goto :goto_0
.end method

.method private getViewForInfo(Lcom/android/launcher2/ShortcutInfo;)Landroid/view/View;
    .locals 4
    .param p1, "item"    # Lcom/android/launcher2/ShortcutInfo;

    .prologue
    .line 1068
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1069
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1070
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3, v0, v1}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    .line 1071
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 1076
    .end local v0    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :goto_2
    return-object v2

    .line 1069
    .restart local v0    # "i":I
    .restart local v2    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1068
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1076
    .end local v0    # "i":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private onCloseComplete()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 925
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/DragLayer;

    .line 926
    .local v0, "parent":Lcom/android/launcher2/DragLayer;
    if-eqz v0, :cond_0

    .line 927
    invoke-virtual {v0, p0}, Lcom/android/launcher2/DragLayer;->removeView(Landroid/view/View;)V

    .line 929
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/DragController;->removeDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 930
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->clearFocus()V

    .line 931
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderIcon;->requestFocus()Z

    .line 933
    iget-boolean v1, p0, Lcom/android/launcher2/Folder;->mRearrangeOnClose:Z

    if-eqz v1, :cond_1

    .line 934
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/launcher2/Folder;->setupContentForNumItems(I)V

    .line 935
    iput-boolean v2, p0, Lcom/android/launcher2/Folder;->mRearrangeOnClose:Z

    .line 937
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v1

    if-gt v1, v3, :cond_2

    .line 938
    iget-boolean v1, p0, Lcom/android/launcher2/Folder;->mDragInProgress:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/launcher2/Folder;->mSuppressFolderDeletion:Z

    if-nez v1, :cond_3

    .line 939
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->replaceFolderWithFinalItem()V

    .line 944
    :cond_2
    :goto_0
    iput-boolean v2, p0, Lcom/android/launcher2/Folder;->mSuppressFolderDeletion:Z

    .line 945
    return-void

    .line 940
    :cond_3
    iget-boolean v1, p0, Lcom/android/launcher2/Folder;->mDragInProgress:Z

    if-eqz v1, :cond_2

    .line 941
    iput-boolean v3, p0, Lcom/android/launcher2/Folder;->mDeleteFolderOnDropCompleted:Z

    goto :goto_0
.end method

.method private placeInReadingOrder(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 332
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutInfo;>;"
    const/4 v5, 0x0

    .line 333
    .local v5, "maxX":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 334
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 335
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/ShortcutInfo;

    .line 336
    .local v4, "item":Lcom/android/launcher2/ShortcutInfo;
    iget v8, v4, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    if-le v8, v5, :cond_0

    .line 337
    iget v5, v4, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    .line 334
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 341
    .end local v4    # "item":Lcom/android/launcher2/ShortcutInfo;
    :cond_1
    new-instance v2, Lcom/android/launcher2/Folder$GridComparator;

    add-int/lit8 v8, v5, 0x1

    invoke-direct {v2, p0, v8}, Lcom/android/launcher2/Folder$GridComparator;-><init>(Lcom/android/launcher2/Folder;I)V

    .line 342
    .local v2, "gridComparator":Lcom/android/launcher2/Folder$GridComparator;
    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 343
    iget-object v8, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v8}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v1

    .line 344
    .local v1, "countX":I
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_2

    .line 345
    rem-int v6, v3, v1

    .line 346
    .local v6, "x":I
    div-int v7, v3, v1

    .line 347
    .local v7, "y":I
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/ShortcutInfo;

    .line 348
    .restart local v4    # "item":Lcom/android/launcher2/ShortcutInfo;
    iput v6, v4, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    .line 349
    iput v7, v4, Lcom/android/launcher2/ShortcutInfo;->cellY:I

    .line 344
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 351
    .end local v4    # "item":Lcom/android/launcher2/ShortcutInfo;
    .end local v6    # "x":I
    .end local v7    # "y":I
    :cond_2
    return-void
.end method

.method private positionAndSizeAsIcon()V
    .locals 2

    .prologue
    const v1, 0x3f4ccccd    # 0.8f

    .line 408
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher2/DragLayer;

    if-nez v0, :cond_0

    .line 413
    :goto_0
    return-void

    .line 409
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Folder;->setScaleX(F)V

    .line 410
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Folder;->setScaleY(F)V

    .line 411
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->setAlpha(F)V

    .line 412
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/Folder;->mState:I

    goto :goto_0
.end method

.method private realTimeReorder([I[I)V
    .locals 18
    .param p1, "empty"    # [I
    .param p2, "target"    # [I

    .prologue
    .line 592
    const/4 v8, 0x0

    .line 593
    .local v8, "delay":I
    const/high16 v11, 0x41f00000    # 30.0f

    .line 594
    .local v11, "delayAmount":F
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Folder;->readingOrderGreaterThan([I[I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 595
    const/4 v3, 0x0

    aget v3, p1, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-lt v3, v5, :cond_1

    const/4 v15, 0x1

    .line 596
    .local v15, "wrap":Z
    :goto_0
    if-eqz v15, :cond_2

    const/4 v3, 0x1

    aget v3, p1, v3

    add-int/lit8 v14, v3, 0x1

    .line 597
    .local v14, "startY":I
    :goto_1
    move/from16 v17, v14

    .local v17, "y":I
    :goto_2
    const/4 v3, 0x1

    aget v3, p2, v3

    move/from16 v0, v17

    if-gt v0, v3, :cond_d

    .line 598
    const/4 v3, 0x1

    aget v3, p1, v3

    move/from16 v0, v17

    if-ne v0, v3, :cond_3

    const/4 v3, 0x0

    aget v3, p1, v3

    add-int/lit8 v13, v3, 0x1

    .line 599
    .local v13, "startX":I
    :goto_3
    const/4 v3, 0x1

    aget v3, p2, v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v3

    add-int/lit8 v12, v3, -0x1

    .line 600
    .local v12, "endX":I
    :goto_4
    move/from16 v16, v13

    .local v16, "x":I
    :goto_5
    move/from16 v0, v16

    if-gt v0, v12, :cond_5

    .line 601
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v4

    .line 602
    .local v4, "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    const/4 v5, 0x0

    aget v5, p1, v5

    const/4 v6, 0x1

    aget v6, p1, v6

    const/16 v7, 0xe6

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual/range {v3 .. v10}, Lcom/android/launcher2/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 604
    const/4 v3, 0x0

    aput v16, p1, v3

    .line 605
    const/4 v3, 0x1

    aput v17, p1, v3

    .line 606
    int-to-float v3, v8

    add-float/2addr v3, v11

    float-to-int v8, v3

    .line 607
    float-to-double v5, v11

    const-wide v9, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v5, v9

    double-to-float v11, v5

    .line 600
    :cond_0
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 595
    .end local v4    # "v":Landroid/view/View;
    .end local v12    # "endX":I
    .end local v13    # "startX":I
    .end local v14    # "startY":I
    .end local v15    # "wrap":Z
    .end local v16    # "x":I
    .end local v17    # "y":I
    :cond_1
    const/4 v15, 0x0

    goto :goto_0

    .line 596
    .restart local v15    # "wrap":Z
    :cond_2
    const/4 v3, 0x1

    aget v14, p1, v3

    goto :goto_1

    .line 598
    .restart local v14    # "startY":I
    .restart local v17    # "y":I
    :cond_3
    const/4 v13, 0x0

    goto :goto_3

    .line 599
    .restart local v13    # "startX":I
    :cond_4
    const/4 v3, 0x0

    aget v12, p2, v3

    goto :goto_4

    .line 597
    .restart local v12    # "endX":I
    .restart local v16    # "x":I
    :cond_5
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 612
    .end local v12    # "endX":I
    .end local v13    # "startX":I
    .end local v14    # "startY":I
    .end local v15    # "wrap":Z
    .end local v16    # "x":I
    .end local v17    # "y":I
    :cond_6
    const/4 v3, 0x0

    aget v3, p1, v3

    if-nez v3, :cond_8

    const/4 v15, 0x1

    .line 613
    .restart local v15    # "wrap":Z
    :goto_6
    if-eqz v15, :cond_9

    const/4 v3, 0x1

    aget v3, p1, v3

    add-int/lit8 v14, v3, -0x1

    .line 614
    .restart local v14    # "startY":I
    :goto_7
    move/from16 v17, v14

    .restart local v17    # "y":I
    :goto_8
    const/4 v3, 0x1

    aget v3, p2, v3

    move/from16 v0, v17

    if-lt v0, v3, :cond_d

    .line 615
    const/4 v3, 0x1

    aget v3, p1, v3

    move/from16 v0, v17

    if-ne v0, v3, :cond_a

    const/4 v3, 0x0

    aget v3, p1, v3

    add-int/lit8 v13, v3, -0x1

    .line 616
    .restart local v13    # "startX":I
    :goto_9
    const/4 v3, 0x1

    aget v3, p2, v3

    move/from16 v0, v17

    if-le v0, v3, :cond_b

    const/4 v12, 0x0

    .line 617
    .restart local v12    # "endX":I
    :goto_a
    move/from16 v16, v13

    .restart local v16    # "x":I
    :goto_b
    move/from16 v0, v16

    if-lt v0, v12, :cond_c

    .line 618
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v4

    .line 619
    .restart local v4    # "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    const/4 v5, 0x0

    aget v5, p1, v5

    const/4 v6, 0x1

    aget v6, p1, v6

    const/16 v7, 0xe6

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual/range {v3 .. v10}, Lcom/android/launcher2/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 621
    const/4 v3, 0x0

    aput v16, p1, v3

    .line 622
    const/4 v3, 0x1

    aput v17, p1, v3

    .line 623
    int-to-float v3, v8

    add-float/2addr v3, v11

    float-to-int v8, v3

    .line 624
    float-to-double v5, v11

    const-wide v9, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v5, v9

    double-to-float v11, v5

    .line 617
    :cond_7
    add-int/lit8 v16, v16, -0x1

    goto :goto_b

    .line 612
    .end local v4    # "v":Landroid/view/View;
    .end local v12    # "endX":I
    .end local v13    # "startX":I
    .end local v14    # "startY":I
    .end local v15    # "wrap":Z
    .end local v16    # "x":I
    .end local v17    # "y":I
    :cond_8
    const/4 v15, 0x0

    goto :goto_6

    .line 613
    .restart local v15    # "wrap":Z
    :cond_9
    const/4 v3, 0x1

    aget v14, p1, v3

    goto :goto_7

    .line 615
    .restart local v14    # "startY":I
    .restart local v17    # "y":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v3

    add-int/lit8 v13, v3, -0x1

    goto :goto_9

    .line 616
    .restart local v13    # "startX":I
    :cond_b
    const/4 v3, 0x0

    aget v12, p2, v3

    goto :goto_a

    .line 614
    .restart local v12    # "endX":I
    .restart local v16    # "x":I
    :cond_c
    add-int/lit8 v17, v17, -0x1

    goto :goto_8

    .line 629
    .end local v12    # "endX":I
    .end local v13    # "startX":I
    .end local v16    # "x":I
    :cond_d
    return-void
.end method

.method private replaceFolderWithFinalItem()V
    .locals 3

    .prologue
    .line 949
    new-instance v1, Lcom/android/launcher2/Folder$8;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Folder$8;-><init>(Lcom/android/launcher2/Folder;)V

    .line 980
    .local v1, "onCompleteRunnable":Ljava/lang/Runnable;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v0

    .line 981
    .local v0, "finalChild":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 982
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher2/FolderIcon;->performDestroyAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 984
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher2/Folder;->mDestroyed:Z

    .line 985
    return-void
.end method

.method private sendCustomAccessibilityEvent(ILjava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 461
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 462
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 463
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Folder;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 464
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 467
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method

.method private setFocusOnFirstChild()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 470
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1, v2, v2}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 471
    .local v0, "firstChild":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 474
    :cond_0
    return-void
.end method

.method private setupContentDimensions(I)V
    .locals 8
    .param p1, "count"    # I

    .prologue
    const/4 v6, 0x0

    .line 768
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v3

    .line 770
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v0

    .line 771
    .local v0, "countX":I
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v1

    .line 772
    .local v1, "countY":I
    const/4 v2, 0x0

    .line 774
    .local v2, "done":Z
    :goto_0
    if-nez v2, :cond_7

    .line 775
    move v4, v0

    .line 776
    .local v4, "oldCountX":I
    move v5, v1

    .line 777
    .local v5, "oldCountY":I
    mul-int v7, v0, v1

    if-ge v7, p1, :cond_4

    .line 779
    if-le v0, v1, :cond_0

    iget v7, p0, Lcom/android/launcher2/Folder;->mMaxCountY:I

    if-ne v1, v7, :cond_3

    :cond_0
    iget v7, p0, Lcom/android/launcher2/Folder;->mMaxCountX:I

    if-ge v0, v7, :cond_3

    .line 780
    add-int/lit8 v0, v0, 0x1

    .line 784
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 790
    :cond_2
    :goto_2
    if-ne v0, v4, :cond_6

    if-ne v1, v5, :cond_6

    const/4 v2, 0x1

    .line 791
    :goto_3
    goto :goto_0

    .line 781
    :cond_3
    iget v7, p0, Lcom/android/launcher2/Folder;->mMaxCountY:I

    if-ge v1, v7, :cond_1

    .line 782
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 785
    :cond_4
    add-int/lit8 v7, v1, -0x1

    mul-int/2addr v7, v0

    if-lt v7, p1, :cond_5

    if-lt v1, v0, :cond_5

    .line 786
    add-int/lit8 v7, v1, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_2

    .line 787
    :cond_5
    add-int/lit8 v7, v0, -0x1

    mul-int/2addr v7, v1

    if-lt v7, p1, :cond_2

    .line 788
    add-int/lit8 v7, v0, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2

    :cond_6
    move v2, v6

    .line 790
    goto :goto_3

    .line 792
    .end local v4    # "oldCountX":I
    .end local v5    # "oldCountY":I
    :cond_7
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v6, v0, v1}, Lcom/android/launcher2/CellLayout;->setGridSize(II)V

    .line 793
    invoke-direct {p0, v3}, Lcom/android/launcher2/Folder;->arrangeChildren(Ljava/util/ArrayList;)V

    .line 794
    return-void
.end method

.method private setupContentForNumItems(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    const/4 v1, 0x0

    .line 863
    invoke-direct {p0, p1}, Lcom/android/launcher2/Folder;->setupContentDimensions(I)V

    .line 865
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/DragLayer$LayoutParams;

    .line 866
    .local v0, "lp":Lcom/android/launcher2/DragLayer$LayoutParams;
    if-nez v0, :cond_0

    .line 867
    new-instance v0, Lcom/android/launcher2/DragLayer$LayoutParams;

    .end local v0    # "lp":Lcom/android/launcher2/DragLayer$LayoutParams;
    invoke-direct {v0, v1, v1}, Lcom/android/launcher2/DragLayer$LayoutParams;-><init>(II)V

    .line 868
    .restart local v0    # "lp":Lcom/android/launcher2/DragLayer$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher2/DragLayer$LayoutParams;->customPosition:Z

    .line 869
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 871
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->centerAboutIcon()V

    .line 872
    return-void
.end method

.method private updateItemLocationsInDatabase()V
    .locals 10

    .prologue
    .line 744
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v8

    .line 745
    .local v8, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 746
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 747
    .local v9, "v":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ItemInfo;

    .line 748
    .local v1, "info":Lcom/android/launcher2/ItemInfo;
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget-wide v2, v2, Lcom/android/launcher2/FolderInfo;->id:J

    const/4 v4, 0x0

    iget v5, v1, Lcom/android/launcher2/ItemInfo;->cellX:I

    iget v6, v1, Lcom/android/launcher2/ItemInfo;->cellY:I

    invoke-static/range {v0 .. v6}, Lcom/android/launcher2/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIII)V

    .line 745
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 751
    .end local v1    # "info":Lcom/android/launcher2/ItemInfo;
    .end local v9    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private updateTextViewFocus()V
    .locals 3

    .prologue
    .line 994
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v0

    .line 995
    .local v0, "lastChild":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    .line 996
    if-eqz v0, :cond_0

    .line 997
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/FolderEditText;->setNextFocusDownId(I)V

    .line 998
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/FolderEditText;->setNextFocusRightId(I)V

    .line 999
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/FolderEditText;->setNextFocusLeftId(I)V

    .line 1000
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/FolderEditText;->setNextFocusUpId(I)V

    .line 1002
    :cond_0
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher2/DropTarget$DragObject;)Z
    .locals 4
    .param p1, "d"    # Lcom/android/launcher2/DropTarget$DragObject;

    .prologue
    const/4 v2, 0x1

    .line 519
    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher2/ItemInfo;

    .line 520
    .local v0, "item":Lcom/android/launcher2/ItemInfo;
    iget v1, v0, Lcom/android/launcher2/ItemInfo;->itemType:I

    .line 521
    .local v1, "itemType":I
    if-eqz v1, :cond_0

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->isFull()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public animateClosed()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const v9, 0x3f666666    # 0.9f

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 477
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher2/DragLayer;

    if-nez v4, :cond_0

    .line 509
    :goto_0
    return-void

    .line 478
    :cond_0
    const-string v4, "alpha"

    new-array v5, v8, [F

    const/4 v6, 0x0

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 479
    .local v0, "alpha":Landroid/animation/PropertyValuesHolder;
    const-string v4, "scaleX"

    new-array v5, v8, [F

    aput v9, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 480
    .local v2, "scaleX":Landroid/animation/PropertyValuesHolder;
    const-string v4, "scaleY"

    new-array v5, v8, [F

    aput v9, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 481
    .local v3, "scaleY":Landroid/animation/PropertyValuesHolder;
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v4, v7

    aput-object v2, v4, v8

    aput-object v3, v4, v10

    invoke-static {p0, v4}, Lcom/android/launcher2/LauncherAnimUtils;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    .line 484
    .local v1, "oa":Landroid/animation/ObjectAnimator;
    new-instance v4, Lcom/android/launcher2/Folder$4;

    invoke-direct {v4, p0}, Lcom/android/launcher2/Folder$4;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 498
    iget v4, p0, Lcom/android/launcher2/Folder;->mExpandDuration:I

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 499
    const/4 v4, 0x0

    invoke-virtual {p0, v10, v4}, Lcom/android/launcher2/Folder;->setLayerType(ILandroid/graphics/Paint;)V

    .line 500
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->buildLayer()V

    .line 501
    new-instance v4, Lcom/android/launcher2/Folder$5;

    invoke-direct {v4, p0, v1}, Lcom/android/launcher2/Folder$5;-><init>(Lcom/android/launcher2/Folder;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Folder;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public animateOpen()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 416
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->positionAndSizeAsIcon()V

    .line 418
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher2/DragLayer;

    if-nez v4, :cond_0

    .line 456
    :goto_0
    return-void

    .line 419
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->centerAboutIcon()V

    .line 420
    const-string v4, "alpha"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 421
    .local v0, "alpha":Landroid/animation/PropertyValuesHolder;
    const-string v4, "scaleX"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 422
    .local v2, "scaleX":Landroid/animation/PropertyValuesHolder;
    const-string v4, "scaleY"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 423
    .local v3, "scaleY":Landroid/animation/PropertyValuesHolder;
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v4, v6

    aput-object v2, v4, v7

    aput-object v3, v4, v9

    invoke-static {p0, v4}, Lcom/android/launcher2/LauncherAnimUtils;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    .line 426
    .local v1, "oa":Landroid/animation/ObjectAnimator;
    new-instance v4, Lcom/android/launcher2/Folder$2;

    invoke-direct {v4, p0}, Lcom/android/launcher2/Folder$2;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 445
    iget v4, p0, Lcom/android/launcher2/Folder;->mExpandDuration:I

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 446
    const/4 v4, 0x0

    invoke-virtual {p0, v9, v4}, Lcom/android/launcher2/Folder;->setLayerType(ILandroid/graphics/Paint;)V

    .line 447
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->buildLayer()V

    .line 448
    new-instance v4, Lcom/android/launcher2/Folder$3;

    invoke-direct {v4, p0, v1}, Lcom/android/launcher2/Folder$3;-><init>(Lcom/android/launcher2/Folder;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Folder;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method bind(Lcom/android/launcher2/FolderInfo;)V
    .locals 9
    .param p1, "info"    # Lcom/android/launcher2/FolderInfo;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    .line 355
    iget-object v1, p1, Lcom/android/launcher2/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 356
    .local v1, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .local v6, "overflow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/launcher2/Folder;->setupContentForNumItems(I)V

    .line 358
    invoke-direct {p0, v1}, Lcom/android/launcher2/Folder;->placeInReadingOrder(Ljava/util/ArrayList;)V

    .line 359
    const/4 v2, 0x0

    .line 360
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 361
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    .line 362
    .local v0, "child":Lcom/android/launcher2/ShortcutInfo;
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->createAndAddShortcut(Lcom/android/launcher2/ShortcutInfo;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 363
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 365
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 370
    .end local v0    # "child":Lcom/android/launcher2/ShortcutInfo;
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/launcher2/Folder;->setupContentForNumItems(I)V

    .line 375
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/ShortcutInfo;

    .line 376
    .local v5, "item":Lcom/android/launcher2/ShortcutInfo;
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    invoke-virtual {v7, v5}, Lcom/android/launcher2/FolderInfo;->remove(Lcom/android/launcher2/ShortcutInfo;)V

    .line 377
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-static {v7, v5}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)V

    goto :goto_2

    .line 380
    .end local v5    # "item":Lcom/android/launcher2/ShortcutInfo;
    :cond_2
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/launcher2/Folder;->mItemsInvalidated:Z

    .line 381
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->updateTextViewFocus()V

    .line 382
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    invoke-virtual {v7, p0}, Lcom/android/launcher2/FolderInfo;->addListener(Lcom/android/launcher2/FolderInfo$FolderListener;)V

    .line 384
    sget-object v7, Lcom/android/launcher2/Folder;->sDefaultFolderName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget-object v8, v8, Lcom/android/launcher2/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 385
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    iget-object v8, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget-object v8, v8, Lcom/android/launcher2/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Lcom/android/launcher2/FolderEditText;->setText(Ljava/lang/CharSequence;)V

    .line 389
    :goto_3
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->updateItemLocationsInDatabase()V

    .line 390
    return-void

    .line 387
    :cond_3
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    const-string v8, ""

    invoke-virtual {v7, v8}, Lcom/android/launcher2/FolderEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public completeDragExit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 677
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->closeFolder()V

    .line 678
    iput-object v1, p0, Lcom/android/launcher2/Folder;->mCurrentDragInfo:Lcom/android/launcher2/ShortcutInfo;

    .line 679
    iput-object v1, p0, Lcom/android/launcher2/Folder;->mCurrentDragView:Landroid/view/View;

    .line 680
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Folder;->mSuppressOnAdd:Z

    .line 681
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Folder;->mRearrangeOnClose:Z

    .line 682
    return-void
.end method

.method protected createAndAddShortcut(Lcom/android/launcher2/ShortcutInfo;)Z
    .locals 9
    .param p1, "item"    # Lcom/android/launcher2/ShortcutInfo;

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 538
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040002

    invoke-virtual {v0, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 540
    .local v1, "textView":Landroid/widget/TextView;
    new-instance v0, Lcom/android/launcher2/FastBitmapDrawable;

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {p1, v3}, Lcom/android/launcher2/ShortcutInfo;->getIcon(Lcom/android/launcher2/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v7, v0, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 542
    iget-object v0, p1, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 543
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 545
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 546
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 550
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    iget v3, p1, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    iget v7, p1, Lcom/android/launcher2/ShortcutInfo;->cellY:I

    invoke-virtual {v0, v3, v7}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    iget v0, p1, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/android/launcher2/ShortcutInfo;->cellY:I

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget v0, p1, Lcom/android/launcher2/ShortcutInfo;->cellY:I

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 553
    :cond_0
    const-string v0, "Launcher.Folder"

    const-string v3, "Folder order not properly persisted during bind"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Folder;->findAndSetEmptyCells(Lcom/android/launcher2/ShortcutInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 564
    :goto_0
    return v2

    .line 559
    :cond_1
    new-instance v4, Lcom/android/launcher2/CellLayout$LayoutParams;

    iget v0, p1, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    iget v3, p1, Lcom/android/launcher2/ShortcutInfo;->cellY:I

    iget v7, p1, Lcom/android/launcher2/ShortcutInfo;->spanX:I

    iget v8, p1, Lcom/android/launcher2/ShortcutInfo;->spanY:I

    invoke-direct {v4, v0, v3, v7, v8}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(IIII)V

    .line 561
    .local v4, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    const/4 v6, 0x0

    .line 562
    .local v6, "insert":Z
    new-instance v0, Lcom/android/launcher2/FolderKeyEventListener;

    invoke-direct {v0}, Lcom/android/launcher2/FolderKeyEventListener;-><init>()V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 563
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    if-eqz v6, :cond_2

    :goto_1
    iget-wide v7, p1, Lcom/android/launcher2/ShortcutInfo;->id:J

    long-to-int v3, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/CellLayout$LayoutParams;Z)Z

    move v2, v5

    .line 564
    goto :goto_0

    .line 563
    :cond_2
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public dismissEditingName()V
    .locals 3

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 249
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->doneEditingFolderName(Z)V

    .line 250
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 307
    const/4 v0, 0x1

    return v0
.end method

.method public doneEditingFolderName(Z)V
    .locals 5
    .param p1, "commit"    # Z

    .prologue
    const/4 v4, 0x0

    .line 253
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    sget-object v2, Lcom/android/launcher2/Folder;->sHintText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/FolderEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "newTitle":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/FolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    invoke-static {v1, v2}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)V

    .line 260
    if-eqz p1, :cond_0

    .line 261
    const/16 v1, 0x20

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d005a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/launcher2/Folder;->sendCustomAccessibilityEvent(ILjava/lang/String;)V

    .line 266
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->requestFocus()Z

    .line 268
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1, v4, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 269
    iput-boolean v4, p0, Lcom/android/launcher2/Folder;->mIsEditingName:Z

    .line 270
    return-void
.end method

.method protected findAndSetEmptyCells(Lcom/android/launcher2/ShortcutInfo;)Z
    .locals 6
    .param p1, "item"    # Lcom/android/launcher2/ShortcutInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 527
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 528
    .local v0, "emptyCell":[I
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    iget v4, p1, Lcom/android/launcher2/ShortcutInfo;->spanX:I

    iget v5, p1, Lcom/android/launcher2/ShortcutInfo;->spanY:I

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 529
    aget v2, v0, v2

    iput v2, p1, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    .line 530
    aget v2, v0, v1

    iput v2, p1, Lcom/android/launcher2/ShortcutInfo;->cellY:I

    .line 533
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public getDragDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDropTargetDelegate(Lcom/android/launcher2/DropTarget$DragObject;)Lcom/android/launcher2/DropTarget;
    .locals 1
    .param p1, "d"    # Lcom/android/launcher2/DropTarget$DragObject;

    .prologue
    .line 764
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEditTextRegion()Landroid/view/View;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    return-object v0
.end method

.method getInfo()Lcom/android/launcher2/FolderInfo;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    return-object v0
.end method

.method public getItemAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 921
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 917
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getItemsInReadingOrder()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1087
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->getItemsInReadingOrder(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getItemsInReadingOrder(Z)Ljava/util/ArrayList;
    .locals 5
    .param p1, "includeCurrentDragItem"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1091
    iget-boolean v4, p0, Lcom/android/launcher2/Folder;->mItemsInvalidated:Z

    if-eqz v4, :cond_4

    .line 1092
    iget-object v4, p0, Lcom/android/launcher2/Folder;->mItemsInReadingOrder:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1093
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    iget-object v4, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 1094
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 1095
    iget-object v4, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4, v0, v2}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v3

    .line 1096
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 1097
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ShortcutInfo;

    .line 1098
    .local v1, "info":Lcom/android/launcher2/ShortcutInfo;
    iget-object v4, p0, Lcom/android/launcher2/Folder;->mCurrentDragInfo:Lcom/android/launcher2/ShortcutInfo;

    if-ne v1, v4, :cond_0

    if-eqz p1, :cond_1

    .line 1099
    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/Folder;->mItemsInReadingOrder:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1094
    .end local v1    # "info":Lcom/android/launcher2/ShortcutInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1093
    .end local v3    # "v":Landroid/view/View;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1104
    .end local v0    # "i":I
    :cond_3
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/launcher2/Folder;->mItemsInvalidated:Z

    .line 1106
    .end local v2    # "j":I
    :cond_4
    iget-object v4, p0, Lcom/android/launcher2/Folder;->mItemsInReadingOrder:Ljava/util/ArrayList;

    return-object v4
.end method

.method public getLocationInDragLayer([I)V
    .locals 1
    .param p1, "loc"    # [I

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher2/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    .line 1111
    return-void
.end method

.method getPivotXForIconAnimation()F
    .locals 1

    .prologue
    .line 856
    iget v0, p0, Lcom/android/launcher2/Folder;->mFolderIconPivotX:F

    return v0
.end method

.method getPivotYForIconAnimation()F
    .locals 1

    .prologue
    .line 859
    iget v0, p0, Lcom/android/launcher2/Folder;->mFolderIconPivotY:F

    return v0
.end method

.method isDestroyed()Z
    .locals 1

    .prologue
    .line 988
    iget-boolean v0, p0, Lcom/android/launcher2/Folder;->mDestroyed:Z

    return v0
.end method

.method public isDropEnabled()Z
    .locals 1

    .prologue
    .line 760
    const/4 v0, 0x1

    return v0
.end method

.method public isEditingName()Z
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/android/launcher2/Folder;->mIsEditingName:Z

    return v0
.end method

.method public isFull()Z
    .locals 2

    .prologue
    .line 797
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/Folder;->mMaxNumItems:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->removeAllViewsInLayout()V

    .line 515
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->bind(Lcom/android/launcher2/FolderInfo;)V

    .line 516
    return-void
.end method

.method public notifyDrop()V
    .locals 1

    .prologue
    .line 754
    iget-boolean v0, p0, Lcom/android/launcher2/Folder;->mDragInProgress:Z

    if-eqz v0, :cond_0

    .line 755
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Folder;->mItemAddedBackToSelfViaIcon:Z

    .line 757
    :cond_0
    return-void
.end method

.method public onAdd(Lcom/android/launcher2/ShortcutInfo;)V
    .locals 7
    .param p1, "item"    # Lcom/android/launcher2/ShortcutInfo;

    .prologue
    .line 1036
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Folder;->mItemsInvalidated:Z

    .line 1039
    iget-boolean v0, p0, Lcom/android/launcher2/Folder;->mSuppressOnAdd:Z

    if-eqz v0, :cond_0

    .line 1048
    :goto_0
    return-void

    .line 1040
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Folder;->findAndSetEmptyCells(Lcom/android/launcher2/ShortcutInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1042
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher2/Folder;->setupContentForNumItems(I)V

    .line 1043
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Folder;->findAndSetEmptyCells(Lcom/android/launcher2/ShortcutInfo;)Z

    .line 1045
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Folder;->createAndAddShortcut(Lcom/android/launcher2/ShortcutInfo;)Z

    .line 1046
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget-wide v2, v1, Lcom/android/launcher2/FolderInfo;->id:J

    const/4 v4, 0x0

    iget v5, p1, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    iget v6, p1, Lcom/android/launcher2/ShortcutInfo;->cellY:I

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIII)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 195
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 196
    .local v2, "tag":Ljava/lang/Object;
    instance-of v3, v2, Lcom/android/launcher2/ShortcutInfo;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 198
    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    .line 199
    .local v0, "item":Lcom/android/launcher2/ShortcutInfo;
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 200
    .local v1, "pos":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 201
    iget-object v3, v0, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    new-instance v4, Landroid/graphics/Rect;

    aget v5, v1, v7

    aget v6, v1, v9

    aget v7, v1, v7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    aget v8, v1, v9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 204
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v4, v0, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3, p1, v4, v0}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 206
    .end local v0    # "item":Lcom/android/launcher2/ShortcutInfo;
    .end local v1    # "pos":[I
    :cond_0
    return-void
.end method

.method public onDragEnter(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 3
    .param p1, "d"    # Lcom/android/launcher2/DropTarget$DragObject;

    .prologue
    const/4 v2, -0x1

    .line 568
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mPreviousTargetCell:[I

    const/4 v1, 0x0

    aput v2, v0, v1

    .line 569
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mPreviousTargetCell:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 570
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 571
    return-void
.end method

.method public onDragExit(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 3
    .param p1, "d"    # Lcom/android/launcher2/DropTarget$DragObject;

    .prologue
    .line 687
    iget-boolean v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragComplete:Z

    if-nez v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mOnExitAlarmListener:Lcom/android/launcher2/OnAlarmListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Alarm;->setOnAlarmListener(Lcom/android/launcher2/OnAlarmListener;)V

    .line 689
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 692
    return-void
.end method

.method public onDragOver(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 10
    .param p1, "d"    # Lcom/android/launcher2/DropTarget$DragObject;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 632
    iget v1, p1, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    iget v2, p1, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    iget v3, p1, Lcom/android/launcher2/DropTarget$DragObject;->xOffset:I

    iget v4, p1, Lcom/android/launcher2/DropTarget$DragObject;->yOffset:I

    iget-object v5, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/Folder;->getDragViewVisualCenter(IIIILcom/android/launcher2/DragView;[F)[F

    move-result-object v7

    .line 633
    .local v7, "r":[F
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    aget v1, v7, v9

    float-to-int v1, v1

    aget v2, v7, v8

    float-to-int v2, v2

    iget-object v5, p0, Lcom/android/launcher2/Folder;->mTargetCell:[I

    move v3, v8

    move v4, v8

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Folder;->mTargetCell:[I

    .line 635
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mTargetCell:[I

    aget v0, v0, v9

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mPreviousTargetCell:[I

    aget v1, v1, v9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mTargetCell:[I

    aget v0, v0, v8

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mPreviousTargetCell:[I

    aget v1, v1, v8

    if-eq v0, v1, :cond_1

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 637
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mReorderAlarmListener:Lcom/android/launcher2/OnAlarmListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Alarm;->setOnAlarmListener(Lcom/android/launcher2/OnAlarmListener;)V

    .line 638
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    .line 639
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mPreviousTargetCell:[I

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mTargetCell:[I

    aget v1, v1, v9

    aput v1, v0, v9

    .line 640
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mPreviousTargetCell:[I

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mTargetCell:[I

    aget v1, v1, v8

    aput v1, v0, v8

    .line 642
    :cond_1
    return-void
.end method

.method public onDrop(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 11
    .param p1, "d"    # Lcom/android/launcher2/DropTarget$DragObject;

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x1

    .line 1006
    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/launcher2/ApplicationInfo;

    if-eqz v0, :cond_1

    .line 1008
    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher2/ApplicationInfo;

    invoke-virtual {v0}, Lcom/android/launcher2/ApplicationInfo;->makeShortcut()Lcom/android/launcher2/ShortcutInfo;

    move-result-object v6

    .line 1009
    .local v6, "item":Lcom/android/launcher2/ShortcutInfo;
    iput v5, v6, Lcom/android/launcher2/ShortcutInfo;->spanX:I

    .line 1010
    iput v5, v6, Lcom/android/launcher2/ShortcutInfo;->spanY:I

    .line 1016
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mCurrentDragInfo:Lcom/android/launcher2/ShortcutInfo;

    if-ne v6, v0, :cond_0

    .line 1017
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/ShortcutInfo;

    .line 1018
    .local v7, "si":Lcom/android/launcher2/ShortcutInfo;
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1019
    .local v4, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mEmptyCell:[I

    aget v0, v0, v10

    iput v0, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iput v0, v7, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    .line 1020
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mEmptyCell:[I

    aget v0, v0, v5

    iput v0, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iput v0, v7, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    .line 1021
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mCurrentDragView:Landroid/view/View;

    const/4 v2, -0x1

    iget-wide v8, v6, Lcom/android/launcher2/ShortcutInfo;->id:J

    long-to-int v3, v8

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/CellLayout$LayoutParams;Z)Z

    .line 1022
    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v0}, Lcom/android/launcher2/DragView;->hasDrawn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1023
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/DragLayer;->animateViewIntoPosition(Lcom/android/launcher2/DragView;Landroid/view/View;)V

    .line 1028
    :goto_1
    iput-boolean v5, p0, Lcom/android/launcher2/Folder;->mItemsInvalidated:Z

    .line 1029
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher2/Folder;->setupContentDimensions(I)V

    .line 1030
    iput-boolean v5, p0, Lcom/android/launcher2/Folder;->mSuppressOnAdd:Z

    .line 1032
    .end local v4    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v7    # "si":Lcom/android/launcher2/ShortcutInfo;
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    invoke-virtual {v0, v6}, Lcom/android/launcher2/FolderInfo;->add(Lcom/android/launcher2/ShortcutInfo;)V

    .line 1033
    return-void

    .line 1012
    .end local v6    # "item":Lcom/android/launcher2/ShortcutInfo;
    :cond_1
    iget-object v6, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v6, Lcom/android/launcher2/ShortcutInfo;

    .restart local v6    # "item":Lcom/android/launcher2/ShortcutInfo;
    goto :goto_0

    .line 1025
    .restart local v4    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    .restart local v7    # "si":Lcom/android/launcher2/ShortcutInfo;
    :cond_2
    iput-boolean v10, p1, Lcom/android/launcher2/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 1026
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher2/DropTarget$DragObject;ZZ)V
    .locals 3
    .param p1, "target"    # Landroid/view/View;
    .param p2, "d"    # Lcom/android/launcher2/DropTarget$DragObject;
    .param p3, "isFlingToDelete"    # Z
    .param p4, "success"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 696
    if-eqz p4, :cond_2

    .line 697
    iget-boolean v0, p0, Lcom/android/launcher2/Folder;->mDeleteFolderOnDropCompleted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/Folder;->mItemAddedBackToSelfViaIcon:Z

    if-nez v0, :cond_0

    .line 698
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->replaceFolderWithFinalItem()V

    .line 711
    :cond_0
    :goto_0
    if-eq p1, p0, :cond_1

    .line 712
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->alarmPending()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 713
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 714
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->completeDragExit()V

    .line 717
    :cond_1
    iput-boolean v1, p0, Lcom/android/launcher2/Folder;->mDeleteFolderOnDropCompleted:Z

    .line 718
    iput-boolean v1, p0, Lcom/android/launcher2/Folder;->mDragInProgress:Z

    .line 719
    iput-boolean v1, p0, Lcom/android/launcher2/Folder;->mItemAddedBackToSelfViaIcon:Z

    .line 720
    iput-object v2, p0, Lcom/android/launcher2/Folder;->mCurrentDragInfo:Lcom/android/launcher2/ShortcutInfo;

    .line 721
    iput-object v2, p0, Lcom/android/launcher2/Folder;->mCurrentDragView:Landroid/view/View;

    .line 722
    iput-boolean v1, p0, Lcom/android/launcher2/Folder;->mSuppressOnAdd:Z

    .line 726
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->updateItemLocationsInDatabase()V

    .line 727
    return-void

    .line 702
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v0, p2}, Lcom/android/launcher2/FolderIcon;->onDrop(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 706
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->alarmPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 707
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Folder;->mSuppressFolderDeletion:Z

    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 273
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->dismissEditingName()V

    .line 275
    const/4 v0, 0x1

    .line 277
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 155
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 156
    const v1, 0x7f070032

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    .line 157
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1, v2, v2}, Lcom/android/launcher2/CellLayout;->setGridSize(II)V

    .line 158
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->setMotionEventSplittingEnabled(Z)V

    .line 159
    const v1, 0x7f07002e

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/FolderEditText;

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    .line 160
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/FolderEditText;->setFolder(Lcom/android/launcher2/Folder;)V

    .line 161
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/FolderEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, "measureSpec":I
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v1, v0, v0}, Lcom/android/launcher2/FolderEditText;->measure(II)V

    .line 167
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderEditText;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Folder;->mFolderNameHeight:I

    .line 170
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/FolderEditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 171
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/FolderEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 172
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher2/FolderEditText;->setSelectAllOnFocus(Z)V

    .line 173
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v2}, Lcom/android/launcher2/FolderEditText;->getInputType()I

    move-result v2

    const/high16 v3, 0x80000

    or-int/2addr v2, v3

    or-int/lit16 v2, v2, 0x2000

    invoke-virtual {v1, v2}, Lcom/android/launcher2/FolderEditText;->setInputType(I)V

    .line 175
    return-void
.end method

.method public onFlingToDelete(Lcom/android/launcher2/DropTarget$DragObject;IILandroid/graphics/PointF;)V
    .locals 0
    .param p1, "d"    # Lcom/android/launcher2/DropTarget$DragObject;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "vec"    # Landroid/graphics/PointF;

    .prologue
    .line 736
    return-void
.end method

.method public onFlingToDeleteCompleted()V
    .locals 0

    .prologue
    .line 741
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 1115
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->startEditingFolderName()V

    .line 1117
    :cond_0
    return-void
.end method

.method public onItemsChanged()V
    .locals 0

    .prologue
    .line 1080
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->updateTextViewFocus()V

    .line 1081
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 210
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->isDraggingEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 235
    :goto_0
    return v2

    .line 212
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 213
    .local v1, "tag":Ljava/lang/Object;
    instance-of v2, v1, Lcom/android/launcher2/ShortcutInfo;

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 214
    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    .line 215
    .local v0, "item":Lcom/android/launcher2/ShortcutInfo;
    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v4

    .line 216
    goto :goto_0

    .line 219
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/launcher2/Launcher;->dismissFolderCling(Landroid/view/View;)V

    .line 221
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher2/Workspace;->onDragStartedWithItem(Landroid/view/View;)V

    .line 222
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    invoke-virtual {v2, p1, p0}, Lcom/android/launcher2/Workspace;->beginDragShared(Landroid/view/View;Lcom/android/launcher2/DragSource;)V

    move-object v2, p1

    .line 223
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/launcher2/Folder;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 225
    iput-object v0, p0, Lcom/android/launcher2/Folder;->mCurrentDragInfo:Lcom/android/launcher2/ShortcutInfo;

    .line 226
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mEmptyCell:[I

    iget v5, v0, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    aput v5, v2, v4

    .line 227
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mEmptyCell:[I

    iget v5, v0, Lcom/android/launcher2/ShortcutInfo;->cellY:I

    aput v5, v2, v3

    .line 228
    iput-object p1, p0, Lcom/android/launcher2/Folder;->mCurrentDragView:Landroid/view/View;

    .line 230
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    iget-object v5, p0, Lcom/android/launcher2/Folder;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {v2, v5}, Lcom/android/launcher2/CellLayout;->removeView(Landroid/view/View;)V

    .line 231
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget-object v5, p0, Lcom/android/launcher2/Folder;->mCurrentDragInfo:Lcom/android/launcher2/ShortcutInfo;

    invoke-virtual {v2, v5}, Lcom/android/launcher2/FolderInfo;->remove(Lcom/android/launcher2/ShortcutInfo;)V

    .line 232
    iput-boolean v3, p0, Lcom/android/launcher2/Folder;->mDragInProgress:Z

    .line 233
    iput-boolean v4, p0, Lcom/android/launcher2/Folder;->mItemAddedBackToSelfViaIcon:Z

    .end local v0    # "item":Lcom/android/launcher2/ShortcutInfo;
    :cond_2
    move v2, v3

    .line 235
    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 875
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getDesiredWidth()I

    move-result v5

    add-int v3, v4, v5

    .line 876
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getDesiredHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/launcher2/Folder;->mFolderNameHeight:I

    add-int v2, v4, v5

    .line 879
    .local v2, "height":I
    iget-object v4, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getDesiredWidth()I

    move-result v4

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 881
    .local v1, "contentWidthSpec":I
    iget-object v4, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getDesiredHeight()I

    move-result v4

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 883
    .local v0, "contentHeightSpec":I
    iget-object v4, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4, v1, v0}, Lcom/android/launcher2/CellLayout;->measure(II)V

    .line 885
    iget-object v4, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    iget v5, p0, Lcom/android/launcher2/Folder;->mFolderNameHeight:I

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, v1, v5}, Lcom/android/launcher2/FolderEditText;->measure(II)V

    .line 887
    invoke-virtual {p0, v3, v2}, Lcom/android/launcher2/Folder;->setMeasuredDimension(II)V

    .line 888
    return-void
.end method

.method public onRemove(Lcom/android/launcher2/ShortcutInfo;)V
    .locals 3
    .param p1, "item"    # Lcom/android/launcher2/ShortcutInfo;

    .prologue
    const/4 v2, 0x1

    .line 1051
    iput-boolean v2, p0, Lcom/android/launcher2/Folder;->mItemsInvalidated:Z

    .line 1054
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mCurrentDragInfo:Lcom/android/launcher2/ShortcutInfo;

    if-ne p1, v1, :cond_1

    .line 1065
    :cond_0
    :goto_0
    return-void

    .line 1055
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher2/Folder;->getViewForInfo(Lcom/android/launcher2/ShortcutInfo;)Landroid/view/View;

    move-result-object v0

    .line 1056
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/CellLayout;->removeView(Landroid/view/View;)V

    .line 1057
    iget v1, p0, Lcom/android/launcher2/Folder;->mState:I

    if-ne v1, v2, :cond_2

    .line 1058
    iput-boolean v2, p0, Lcom/android/launcher2/Folder;->mRearrangeOnClose:Z

    .line 1062
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v1

    if-gt v1, v2, :cond_0

    .line 1063
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->replaceFolderWithFinalItem()V

    goto :goto_0

    .line 1060
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/launcher2/Folder;->setupContentForNumItems(I)V

    goto :goto_1
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 1084
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 293
    const/4 v0, 0x1

    return v0
.end method

.method readingOrderGreaterThan([I[I)Z
    .locals 4
    .param p1, "v1"    # [I
    .param p2, "v2"    # [I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 580
    aget v2, p1, v1

    aget v3, p2, v1

    if-gt v2, v3, :cond_0

    aget v2, p1, v1

    aget v3, p2, v1

    if-ne v2, v3, :cond_1

    aget v2, p1, v0

    aget v3, p2, v0

    if-le v2, v3, :cond_1

    :cond_0
    move v0, v1

    .line 583
    :cond_1
    return v0
.end method

.method public setDragController(Lcom/android/launcher2/DragController;)V
    .locals 0
    .param p1, "dragController"    # Lcom/android/launcher2/DragController;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/launcher2/Folder;->mDragController:Lcom/android/launcher2/DragController;

    .line 298
    return-void
.end method

.method setFolderIcon(Lcom/android/launcher2/FolderIcon;)V
    .locals 0
    .param p1, "icon"    # Lcom/android/launcher2/FolderIcon;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    .line 302
    return-void
.end method

.method public startEditingFolderName()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Folder;->mIsEditingName:Z

    .line 245
    return-void
.end method

.method public supportsFlingToDelete()Z
    .locals 1

    .prologue
    .line 731
    const/4 v0, 0x1

    return v0
.end method

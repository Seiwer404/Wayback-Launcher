.class public Lcom/android/launcher2/PagedViewCellLayout;
.super Landroid/view/ViewGroup;
.source "PagedViewCellLayout.java"

# interfaces
.implements Lcom/android/launcher2/Page;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "PagedViewCellLayout"


# instance fields
.field private mCellCountX:I

.field private mCellCountY:I

.field private mCellHeight:I

.field private mCellWidth:I

.field protected mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

.field private mHeightGap:I

.field private mMaxGap:I

.field private mOriginalCellHeight:I

.field private mOriginalCellWidth:I

.field private mOriginalHeightGap:I

.field private mOriginalWidthGap:I

.field private mWidthGap:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/PagedViewCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/PagedViewCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedViewCellLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 65
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0b0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    iput v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalCellWidth:I

    .line 67
    const v1, 0x7f0b0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellHeight:I

    iput v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalCellHeight:I

    .line 69
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    .line 70
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    .line 71
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mHeightGap:I

    iput v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    iput v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalHeightGap:I

    iput v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalWidthGap:I

    .line 72
    const v1, 0x7f0b0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mMaxGap:I

    .line 74
    new-instance v1, Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-direct {v1, p1}, Lcom/android/launcher2/PagedViewCellLayoutChildren;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    .line 75
    iget-object v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->setCellDimensions(II)V

    .line 76
    iget-object v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mHeightGap:I

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->setGap(II)V

    .line 78
    iget-object v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedViewCellLayout;->addView(Landroid/view/View;)V

    .line 79
    return-void
.end method


# virtual methods
.method public addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/PagedViewCellLayout$LayoutParams;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "childId"    # I
    .param p4, "params"    # Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;

    .prologue
    .line 114
    move-object v0, p4

    .line 118
    .local v0, "lp":Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;
    iget v1, v0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellX:I

    if-ltz v1, :cond_2

    iget v1, v0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellX:I

    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_2

    iget v1, v0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellY:I

    if-ltz v1, :cond_2

    iget v1, v0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellY:I

    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_2

    .line 122
    iget v1, v0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    if-gez v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    iput v1, v0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    .line 123
    :cond_0
    iget v1, v0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    if-gez v1, :cond_1

    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    iput v1, v0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    .line 125
    :cond_1
    invoke-virtual {p1, p3}, Landroid/view/View;->setId(I)V

    .line 126
    iget-object v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 128
    const/4 v1, 0x1

    .line 130
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public calculateCellCount(IIII)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "maxCellCountX"    # I
    .param p4, "maxCellCountY"    # I

    .prologue
    .line 363
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedViewCellLayout;->estimateCellHSpan(I)I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    .line 364
    invoke-virtual {p0, p2}, Lcom/android/launcher2/PagedViewCellLayout;->estimateCellVSpan(I)I

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    .line 365
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->requestLayout()V

    .line 366
    return-void
.end method

.method public cancelLongPress()V
    .locals 3

    .prologue
    .line 102
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 105
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getChildCount()I

    move-result v1

    .line 106
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 107
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedViewCellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 108
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 106
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 391
    instance-of v0, p1, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;

    return v0
.end method

.method createHardwareLayers()V
    .locals 2

    .prologue
    .line 97
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedViewCellLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 98
    return-void
.end method

.method destroyHardwareLayers()V
    .locals 2

    .prologue
    .line 92
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedViewCellLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 93
    return-void
.end method

.method public enableCenteredContent(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->enableCenteredContent(Z)V

    .line 283
    return-void
.end method

.method public estimateCellHSpan(I)I
    .locals 6
    .param p1, "width"    # I

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    sub-int v0, p1, v2

    .line 333
    .local v0, "availWidth":I
    const/4 v2, 0x1

    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    iget v5, p0, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    add-int/2addr v4, v5

    div-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 336
    .local v1, "n":I
    return v1
.end method

.method public estimateCellHeight(I)I
    .locals 1
    .param p1, "vSpan"    # I

    .prologue
    .line 381
    iget v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellHeight:I

    mul-int/2addr v0, p1

    return v0
.end method

.method public estimateCellPosition(II)[I
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 356
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingLeft()I

    move-result v2

    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    mul-int/2addr v3, p1

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    mul-int/2addr v3, p1

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellHeight:I

    mul-int/2addr v3, p2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mHeightGap:I

    mul-int/2addr v3, p2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellHeight:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    aput v2, v0, v1

    return-object v0
.end method

.method public estimateCellVSpan(I)I
    .locals 6
    .param p1, "height"    # I

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    sub-int v0, p1, v2

    .line 348
    .local v0, "availHeight":I
    const/4 v2, 0x1

    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mHeightGap:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellHeight:I

    iget v5, p0, Lcom/android/launcher2/PagedViewCellLayout;->mHeightGap:I

    add-int/2addr v4, v5

    div-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 351
    .local v1, "n":I
    return v1
.end method

.method public estimateCellWidth(I)I
    .locals 1
    .param p1, "hSpan"    # I

    .prologue
    .line 373
    iget v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    mul-int/2addr v0, p1

    return v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 386
    new-instance v0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 396
    new-instance v0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCellCountForDimensions(II)[I
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 305
    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    iget v4, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 308
    .local v0, "smallerSize":I
    add-int v3, p1, v0

    div-int v1, v3, v0

    .line 309
    .local v1, "spanX":I
    add-int v3, p2, v0

    div-int v2, v3, v0

    .line 311
    .local v2, "spanY":I
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v4, 0x1

    aput v2, v3, v4

    return-object v3
.end method

.method public getCellCountX()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    return v0
.end method

.method public getCellCountY()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    return v0
.end method

.method public getCellHeight()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellHeight:I

    return v0
.end method

.method public getCellWidth()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    return v0
.end method

.method public getChildOnPageAt(I)Landroid/view/View;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildrenLayout()Lcom/android/launcher2/PagedViewCellLayoutChildren;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    return-object v0
.end method

.method getContentHeight()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 240
    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    if-lez v1, :cond_0

    .line 241
    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellHeight:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mHeightGap:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 243
    :cond_0
    return v0
.end method

.method getContentWidth()I
    .locals 2

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getWidthBeforeFirstLayout()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getPageChildCount()I
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->getChildCount()I

    move-result v0

    return v0
.end method

.method getWidthBeforeFirstLayout()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 247
    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    if-lez v1, :cond_0

    .line 248
    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 250
    :cond_0
    return v0
.end method

.method public indexOfChildOnPage(Landroid/view/View;)I
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method onDragChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 320
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;

    .line 321
    .local v0, "lp":Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->isDragging:Z

    .line 322
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getChildCount()I

    move-result v1

    .line 256
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 257
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedViewCellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 258
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingTop()I

    move-result v4

    sub-int v5, p4, p2

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int v6, p5, p3

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 256
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 261
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 22
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 182
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 183
    .local v17, "widthSpecMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    .line 185
    .local v18, "widthSpecSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 186
    .local v8, "heightSpecMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 188
    .local v9, "heightSpecSize":I
    if-eqz v17, :cond_0

    if-nez v8, :cond_1

    .line 189
    :cond_0
    new-instance v19, Ljava/lang/RuntimeException;

    const-string v20, "CellLayout cannot have UNSPECIFIED dimensions"

    invoke-direct/range {v19 .. v20}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 192
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    move/from16 v19, v0

    add-int/lit8 v14, v19, -0x1

    .line 193
    .local v14, "numWidthGaps":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    move/from16 v19, v0

    add-int/lit8 v13, v19, -0x1

    .line 195
    .local v13, "numHeightGaps":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalWidthGap:I

    move/from16 v19, v0

    if-ltz v19, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalHeightGap:I

    move/from16 v19, v0

    if-gez v19, :cond_6

    .line 196
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingLeft()I

    move-result v19

    sub-int v19, v18, v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingRight()I

    move-result v20

    sub-int v7, v19, v20

    .line 197
    .local v7, "hSpace":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingTop()I

    move-result v19

    sub-int v19, v9, v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingBottom()I

    move-result v20

    sub-int v16, v19, v20

    .line 198
    .local v16, "vSpace":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalCellWidth:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    sub-int v6, v7, v19

    .line 199
    .local v6, "hFreeSpace":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalCellHeight:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    sub-int v15, v16, v19

    .line 200
    .local v15, "vFreeSpace":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mMaxGap:I

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

    iput v0, v1, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    .line 201
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mMaxGap:I

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

    iput v0, v1, Lcom/android/launcher2/PagedViewCellLayout;->mHeightGap:I

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mHeightGap:I

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->setGap(II)V

    .line 210
    .end local v6    # "hFreeSpace":I
    .end local v7    # "hSpace":I
    .end local v15    # "vFreeSpace":I
    .end local v16    # "vSpace":I
    :goto_2
    move/from16 v12, v18

    .line 211
    .local v12, "newWidth":I
    move v11, v9

    .line 212
    .local v11, "newHeight":I
    const/high16 v19, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingLeft()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingRight()I

    move-result v20

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    add-int v12, v19, v20

    .line 215
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingTop()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingBottom()I

    move-result v20

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mCellHeight:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mHeightGap:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    add-int v11, v19, v20

    .line 217
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11}, Lcom/android/launcher2/PagedViewCellLayout;->setMeasuredDimension(II)V

    .line 220
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedViewCellLayout;->getChildCount()I

    move-result v5

    .line 221
    .local v5, "count":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    if-ge v10, v5, :cond_7

    .line 222
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/launcher2/PagedViewCellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 223
    .local v2, "child":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingLeft()I

    move-result v19

    sub-int v19, v12, v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingRight()I

    move-result v20

    sub-int v19, v19, v20

    const/high16 v20, 0x40000000    # 2.0f

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 226
    .local v3, "childWidthMeasureSpec":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingTop()I

    move-result v19

    sub-int v19, v11, v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPaddingBottom()I

    move-result v20

    sub-int v19, v19, v20

    const/high16 v20, 0x40000000    # 2.0f

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 229
    .local v4, "childheightMeasureSpec":I
    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 221
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 200
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

    .line 201
    :cond_5
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 205
    .end local v6    # "hFreeSpace":I
    .end local v7    # "hSpace":I
    .end local v15    # "vFreeSpace":I
    .end local v16    # "vSpace":I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalWidthGap:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    .line 206
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalHeightGap:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedViewCellLayout;->mHeightGap:I

    goto/16 :goto_2

    .line 232
    .restart local v5    # "count":I
    .restart local v10    # "i":I
    .restart local v11    # "newHeight":I
    .restart local v12    # "newWidth":I
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11}, Lcom/android/launcher2/PagedViewCellLayout;->setMeasuredDimension(II)V

    .line 233
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 265
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 266
    .local v4, "result":Z
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPageChildCount()I

    move-result v2

    .line 267
    .local v2, "count":I
    if-lez v2, :cond_2

    .line 269
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedViewCellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 270
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 271
    .local v0, "bottom":I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPageChildCount()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getCellCountX()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v3, v5

    .line 272
    .local v3, "numRows":I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getCellCountY()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 274
    iget v5, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellHeight:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v0, v5

    .line 276
    :cond_0
    if-nez v4, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    int-to-float v6, v0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    :cond_1
    const/4 v4, 0x1

    .line 278
    .end local v0    # "bottom":I
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "numRows":I
    :cond_2
    :goto_0
    return v4

    .line 276
    .restart local v0    # "bottom":I
    .restart local v1    # "child":Landroid/view/View;
    .restart local v3    # "numRows":I
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public removeAllViewsOnPage()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->removeAllViews()V

    .line 136
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->destroyHardwareLayers()V

    .line 137
    return-void
.end method

.method public removeViewOnPageAt(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->removeViewAt(I)V

    .line 142
    return-void
.end method

.method public resetChildrenOnKeyListeners()V
    .locals 4

    .prologue
    .line 148
    iget-object v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v2}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->getChildCount()I

    move-result v0

    .line 149
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 150
    iget-object v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    :cond_0
    return-void
.end method

.method public setCellCount(II)V
    .locals 0
    .param p1, "xCount"    # I
    .param p2, "yCount"    # I

    .prologue
    .line 291
    iput p1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    .line 292
    iput p2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    .line 293
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->requestLayout()V

    .line 294
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->setChildrenDrawingCacheEnabled(Z)V

    .line 288
    return-void
.end method

.method public setGap(II)V
    .locals 1
    .param p1, "widthGap"    # I
    .param p2, "heightGap"    # I

    .prologue
    .line 297
    iput p1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    iput p1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalWidthGap:I

    .line 298
    iput p2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mHeightGap:I

    iput p2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalHeightGap:I

    .line 299
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->setGap(II)V

    .line 300
    return-void
.end method

.class public Lcom/android/launcher2/FocusHelper;
.super Ljava/lang/Object;
.source "FocusHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findIndexOfIcon(Ljava/util/ArrayList;II)Landroid/view/View;
    .locals 4
    .param p1, "i"    # I
    .param p2, "delta"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 596
    .local p0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 597
    .local v0, "count":I
    add-int v1, p1, p2

    .line 598
    .local v1, "newI":I
    :goto_0
    if-ltz v1, :cond_2

    if-ge v1, v0, :cond_2

    .line 599
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 600
    .local v2, "newV":Landroid/view/View;
    instance-of v3, v2, Lcom/android/launcher2/BubbleTextView;

    if-nez v3, :cond_0

    instance-of v3, v2, Lcom/android/launcher2/FolderIcon;

    if-eqz v3, :cond_1

    .line 605
    .end local v2    # "newV":Landroid/view/View;
    :cond_0
    :goto_1
    return-object v2

    .line 603
    .restart local v2    # "newV":Landroid/view/View;
    :cond_1
    add-int/2addr v1, p2

    .line 604
    goto :goto_0

    .line 605
    .end local v2    # "newV":Landroid/view/View;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;
    .locals 2
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 77
    .local v0, "p":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TabHost;

    if-nez v1, :cond_0

    .line 78
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 80
    :cond_0
    check-cast v0, Landroid/widget/TabHost;

    .end local v0    # "p":Landroid/view/ViewParent;
    return-object v0
.end method

.method private static getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;
    .locals 2
    .param p0, "container"    # Landroid/view/ViewGroup;
    .param p1, "index"    # I

    .prologue
    .line 122
    check-cast p0, Lcom/android/launcher2/PagedView;

    .end local p0    # "container":Landroid/view/ViewGroup;
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 123
    .local v0, "page":Landroid/view/ViewGroup;
    instance-of v1, v0, Lcom/android/launcher2/PagedViewCellLayout;

    if-eqz v1, :cond_0

    .line 125
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "page":Landroid/view/ViewGroup;
    check-cast v0, Landroid/view/ViewGroup;

    .line 127
    .restart local v0    # "page":Landroid/view/ViewGroup;
    :cond_0
    return-object v0
.end method

.method private static getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/ShortcutAndWidgetContainer;
    .locals 2
    .param p0, "container"    # Landroid/view/ViewGroup;
    .param p1, "i"    # I

    .prologue
    .line 559
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 560
    .local v0, "parent":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ShortcutAndWidgetContainer;

    return-object v1
.end method

.method private static getCellLayoutChildrenSortedSpatially(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "layout"    # Lcom/android/launcher2/CellLayout;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/CellLayout;",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 570
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v0

    .line 571
    .local v0, "cellCountX":I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 572
    .local v1, "count":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 573
    .local v3, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 574
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 576
    :cond_0
    new-instance v4, Lcom/android/launcher2/FocusHelper$1;

    invoke-direct {v4, v0}, Lcom/android/launcher2/FocusHelper$1;-><init>(I)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 586
    return-object v3
.end method

.method private static getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 21
    .param p0, "layout"    # Lcom/android/launcher2/CellLayout;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "lineDelta"    # I

    .prologue
    .line 625
    invoke-static/range {p0 .. p1}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenSortedSpatially(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v14

    .line 626
    .local v14, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 627
    .local v7, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v2

    .line 628
    .local v2, "cellCountY":I
    iget v10, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 629
    .local v10, "row":I
    add-int v8, v10, p3

    .line 630
    .local v8, "newRow":I
    if-ltz v8, :cond_8

    if-ge v8, v2, :cond_8

    .line 631
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    .line 632
    .local v3, "closestDistance":F
    const/4 v4, -0x1

    .line 633
    .local v4, "closestIndex":I
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 634
    .local v6, "index":I
    if-gez p3, :cond_2

    const/4 v5, -0x1

    .line 635
    .local v5, "endIndex":I
    :goto_0
    if-eq v6, v5, :cond_7

    .line 636
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 637
    .local v9, "newV":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 638
    .local v13, "tmpLp":Lcom/android/launcher2/CellLayout$LayoutParams;
    if-gez p3, :cond_4

    iget v15, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-ge v15, v10, :cond_3

    const/4 v11, 0x1

    .line 639
    .local v11, "satisfiesRow":Z
    :goto_1
    if-eqz v11, :cond_1

    instance-of v15, v9, Lcom/android/launcher2/BubbleTextView;

    if-nez v15, :cond_0

    instance-of v15, v9, Lcom/android/launcher2/FolderIcon;

    if-eqz v15, :cond_1

    .line 641
    :cond_0
    iget v15, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v0, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    int-to-double v15, v15

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    iget v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    move/from16 v17, v0

    iget v0, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    add-double v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v15

    double-to-float v12, v15

    .line 643
    .local v12, "tmpDistance":F
    cmpg-float v15, v12, v3

    if-gez v15, :cond_1

    .line 644
    move v4, v6

    .line 645
    move v3, v12

    .line 648
    .end local v12    # "tmpDistance":F
    :cond_1
    if-gt v6, v5, :cond_6

    .line 649
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 634
    .end local v5    # "endIndex":I
    .end local v9    # "newV":Landroid/view/View;
    .end local v11    # "satisfiesRow":Z
    .end local v13    # "tmpLp":Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_2
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v5

    goto :goto_0

    .line 638
    .restart local v5    # "endIndex":I
    .restart local v9    # "newV":Landroid/view/View;
    .restart local v13    # "tmpLp":Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    :cond_4
    iget v15, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-le v15, v10, :cond_5

    const/4 v11, 0x1

    goto :goto_1

    :cond_5
    const/4 v11, 0x0

    goto :goto_1

    .line 651
    .restart local v11    # "satisfiesRow":Z
    :cond_6
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 654
    .end local v9    # "newV":Landroid/view/View;
    .end local v11    # "satisfiesRow":Z
    .end local v13    # "tmpLp":Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_7
    const/4 v15, -0x1

    if-le v4, v15, :cond_8

    .line 655
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    .line 658
    .end local v3    # "closestDistance":F
    .end local v4    # "closestIndex":I
    .end local v5    # "endIndex":I
    .end local v6    # "index":I
    :goto_2
    return-object v15

    :cond_8
    const/4 v15, 0x0

    goto :goto_2
.end method

.method private static getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;
    .locals 2
    .param p0, "layout"    # Lcom/android/launcher2/CellLayout;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "i"    # I
    .param p3, "delta"    # I

    .prologue
    .line 609
    invoke-static {p0, p1}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenSortedSpatially(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v0

    .line 610
    .local v0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static {v0, p2, p3}, Lcom/android/launcher2/FocusHelper;->findIndexOfIcon(Ljava/util/ArrayList;II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private static getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 2
    .param p0, "layout"    # Lcom/android/launcher2/CellLayout;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "delta"    # I

    .prologue
    .line 614
    invoke-static {p0, p1}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenSortedSpatially(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v0

    .line 615
    .local v0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1, p3}, Lcom/android/launcher2/FocusHelper;->findIndexOfIcon(Ljava/util/ArrayList;II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method static handleAppsCustomizeKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 24
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    .line 284
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    move-object/from16 v0, v22

    instance-of v0, v0, Lcom/android/launcher2/PagedViewCellLayoutChildren;

    move/from16 v22, v0

    if-eqz v22, :cond_0

    .line 285
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 286
    .local v10, "itemContainer":Landroid/view/ViewGroup;
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    check-cast v16, Landroid/view/ViewGroup;

    .local v16, "parentLayout":Landroid/view/ViewGroup;
    move-object/from16 v22, v16

    .line 287
    check-cast v22, Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/PagedViewCellLayout;->getCellCountX()I

    move-result v6

    .local v6, "countX":I
    move-object/from16 v22, v16

    .line 288
    check-cast v22, Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/PagedViewCellLayout;->getCellCountY()I

    move-result v7

    .line 297
    .local v7, "countY":I
    :goto_0
    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/PagedView;

    .line 298
    .local v5, "container":Lcom/android/launcher2/PagedView;
    invoke-static {v5}, Lcom/android/launcher2/FocusHelper;->findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v17

    .line 299
    .local v17, "tabHost":Landroid/widget/TabHost;
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v18

    .line 300
    .local v18, "tabs":Landroid/widget/TabWidget;
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v9

    .line 301
    .local v9, "iconIndex":I
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    .line 302
    .local v11, "itemCount":I
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/android/launcher2/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/launcher2/PagedView;->indexToPage(I)I

    move-result v15

    .line 303
    .local v15, "pageIndex":I
    invoke-virtual {v5}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v14

    .line 305
    .local v14, "pageCount":I
    rem-int v20, v9, v6

    .line 306
    .local v20, "x":I
    div-int v21, v9, v6

    .line 308
    .local v21, "y":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 309
    .local v2, "action":I
    const/16 v22, 0x1

    move/from16 v0, v22

    if-eq v2, v0, :cond_1

    const/4 v8, 0x1

    .line 310
    .local v8, "handleKeyEvent":Z
    :goto_1
    const/4 v12, 0x0

    .line 313
    .local v12, "newParent":Landroid/view/ViewGroup;
    const/4 v3, 0x0

    .line 314
    .local v3, "child":Landroid/view/View;
    const/16 v19, 0x0

    .line 315
    .local v19, "wasHandled":Z
    sparse-switch p1, :sswitch_data_0

    .line 433
    :goto_2
    return v19

    .line 290
    .end local v2    # "action":I
    .end local v3    # "child":Landroid/view/View;
    .end local v5    # "container":Lcom/android/launcher2/PagedView;
    .end local v6    # "countX":I
    .end local v7    # "countY":I
    .end local v8    # "handleKeyEvent":Z
    .end local v9    # "iconIndex":I
    .end local v10    # "itemContainer":Landroid/view/ViewGroup;
    .end local v11    # "itemCount":I
    .end local v12    # "newParent":Landroid/view/ViewGroup;
    .end local v14    # "pageCount":I
    .end local v15    # "pageIndex":I
    .end local v16    # "parentLayout":Landroid/view/ViewGroup;
    .end local v17    # "tabHost":Landroid/widget/TabHost;
    .end local v18    # "tabs":Landroid/widget/TabWidget;
    .end local v19    # "wasHandled":Z
    .end local v20    # "x":I
    .end local v21    # "y":I
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    check-cast v16, Landroid/view/ViewGroup;

    .restart local v16    # "parentLayout":Landroid/view/ViewGroup;
    move-object/from16 v10, v16

    .restart local v10    # "itemContainer":Landroid/view/ViewGroup;
    move-object/from16 v22, v16

    .line 291
    check-cast v22, Lcom/android/launcher2/PagedViewGridLayout;

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/PagedViewGridLayout;->getCellCountX()I

    move-result v6

    .restart local v6    # "countX":I
    move-object/from16 v22, v16

    .line 292
    check-cast v22, Lcom/android/launcher2/PagedViewGridLayout;

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/PagedViewGridLayout;->getCellCountY()I

    move-result v7

    .restart local v7    # "countY":I
    goto :goto_0

    .line 309
    .restart local v2    # "action":I
    .restart local v5    # "container":Lcom/android/launcher2/PagedView;
    .restart local v9    # "iconIndex":I
    .restart local v11    # "itemCount":I
    .restart local v14    # "pageCount":I
    .restart local v15    # "pageIndex":I
    .restart local v17    # "tabHost":Landroid/widget/TabHost;
    .restart local v18    # "tabs":Landroid/widget/TabWidget;
    .restart local v20    # "x":I
    .restart local v21    # "y":I
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 317
    .restart local v3    # "child":Landroid/view/View;
    .restart local v8    # "handleKeyEvent":Z
    .restart local v12    # "newParent":Landroid/view/ViewGroup;
    .restart local v19    # "wasHandled":Z
    :sswitch_0
    if-eqz v8, :cond_2

    .line 319
    if-lez v9, :cond_3

    .line 320
    add-int/lit8 v22, v9, -0x1

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 332
    :cond_2
    :goto_3
    const/16 v19, 0x1

    .line 333
    goto :goto_2

    .line 322
    :cond_3
    if-lez v15, :cond_2

    .line 323
    add-int/lit8 v22, v15, -0x1

    move/from16 v0, v22

    invoke-static {v5, v0}, Lcom/android/launcher2/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v12

    .line 324
    if-eqz v12, :cond_2

    .line 325
    add-int/lit8 v22, v15, -0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 326
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 327
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    .line 335
    :sswitch_1
    if-eqz v8, :cond_4

    .line 337
    add-int/lit8 v22, v11, -0x1

    move/from16 v0, v22

    if-ge v9, v0, :cond_5

    .line 338
    add-int/lit8 v22, v9, 0x1

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 350
    :cond_4
    :goto_4
    const/16 v19, 0x1

    .line 351
    goto :goto_2

    .line 340
    :cond_5
    add-int/lit8 v22, v14, -0x1

    move/from16 v0, v22

    if-ge v15, v0, :cond_4

    .line 341
    add-int/lit8 v22, v15, 0x1

    move/from16 v0, v22

    invoke-static {v5, v0}, Lcom/android/launcher2/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v12

    .line 342
    if-eqz v12, :cond_4

    .line 343
    add-int/lit8 v22, v15, 0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 344
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 345
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    goto :goto_4

    .line 353
    :sswitch_2
    if-eqz v8, :cond_6

    .line 355
    if-lez v21, :cond_7

    .line 356
    add-int/lit8 v22, v21, -0x1

    mul-int v22, v22, v6

    add-int v13, v22, v20

    .line 357
    .local v13, "newiconIndex":I
    invoke-virtual {v10, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 362
    .end local v13    # "newiconIndex":I
    :cond_6
    :goto_5
    const/16 v19, 0x1

    .line 363
    goto/16 :goto_2

    .line 359
    :cond_7
    invoke-virtual/range {v18 .. v18}, Landroid/widget/TabWidget;->requestFocus()Z

    goto :goto_5

    .line 365
    :sswitch_3
    if-eqz v8, :cond_8

    .line 367
    add-int/lit8 v22, v7, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_8

    .line 368
    add-int/lit8 v22, v11, -0x1

    add-int/lit8 v23, v21, 0x1

    mul-int v23, v23, v6

    add-int v23, v23, v20

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 369
    .restart local v13    # "newiconIndex":I
    invoke-virtual {v10, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 372
    .end local v13    # "newiconIndex":I
    :cond_8
    const/16 v19, 0x1

    .line 373
    goto/16 :goto_2

    .line 376
    :sswitch_4
    if-eqz v8, :cond_9

    move-object v4, v5

    .line 378
    check-cast v4, Landroid/view/View$OnClickListener;

    .line 379
    .local v4, "clickListener":Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    invoke-interface {v4, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 381
    .end local v4    # "clickListener":Landroid/view/View$OnClickListener;
    :cond_9
    const/16 v19, 0x1

    .line 382
    goto/16 :goto_2

    .line 384
    :sswitch_5
    if-eqz v8, :cond_a

    .line 387
    if-lez v15, :cond_b

    .line 388
    add-int/lit8 v22, v15, -0x1

    move/from16 v0, v22

    invoke-static {v5, v0}, Lcom/android/launcher2/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v12

    .line 389
    if-eqz v12, :cond_a

    .line 390
    add-int/lit8 v22, v15, -0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 391
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 392
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 398
    :cond_a
    :goto_6
    const/16 v19, 0x1

    .line 399
    goto/16 :goto_2

    .line 395
    :cond_b
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    goto :goto_6

    .line 401
    :sswitch_6
    if-eqz v8, :cond_c

    .line 404
    add-int/lit8 v22, v14, -0x1

    move/from16 v0, v22

    if-ge v15, v0, :cond_d

    .line 405
    add-int/lit8 v22, v15, 0x1

    move/from16 v0, v22

    invoke-static {v5, v0}, Lcom/android/launcher2/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v12

    .line 406
    if-eqz v12, :cond_c

    .line 407
    add-int/lit8 v22, v15, 0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 408
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 409
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 415
    :cond_c
    :goto_7
    const/16 v19, 0x1

    .line 416
    goto/16 :goto_2

    .line 412
    :cond_d
    add-int/lit8 v22, v11, -0x1

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    goto :goto_7

    .line 418
    :sswitch_7
    if-eqz v8, :cond_e

    .line 420
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 422
    :cond_e
    const/16 v19, 0x1

    .line 423
    goto/16 :goto_2

    .line 425
    :sswitch_8
    if-eqz v8, :cond_f

    .line 427
    add-int/lit8 v22, v11, -0x1

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 429
    :cond_f
    const/16 v19, 0x1

    .line 430
    goto/16 :goto_2

    .line 315
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_4
        0x42 -> :sswitch_4
        0x5c -> :sswitch_5
        0x5d -> :sswitch_6
        0x7a -> :sswitch_7
        0x7b -> :sswitch_8
    .end sparse-switch
.end method

.method static handleAppsCustomizeTabKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 87
    invoke-static {p0}, Lcom/android/launcher2/FocusHelper;->findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v4

    .line 88
    .local v4, "tabHost":Landroid/widget/TabHost;
    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v1

    .line 89
    .local v1, "contents":Landroid/view/ViewGroup;
    const v6, 0x7f070008

    invoke-virtual {v4, v6}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 91
    .local v3, "shop":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 92
    .local v0, "action":I
    if-eq v0, v2, :cond_1

    .line 93
    .local v2, "handleKeyEvent":Z
    :goto_0
    const/4 v5, 0x0

    .line 94
    .local v5, "wasHandled":Z
    packed-switch p1, :pswitch_data_0

    .line 115
    :cond_0
    :goto_1
    :pswitch_0
    return v5

    .line 92
    .end local v2    # "handleKeyEvent":Z
    .end local v5    # "wasHandled":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 96
    .restart local v2    # "handleKeyEvent":Z
    .restart local v5    # "wasHandled":Z
    :pswitch_1
    if-eqz v2, :cond_2

    .line 98
    if-eq p0, v3, :cond_2

    .line 99
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 102
    :cond_2
    const/4 v5, 0x1

    .line 103
    goto :goto_1

    .line 105
    :pswitch_2
    if-eqz v2, :cond_0

    .line 107
    if-ne p0, v3, :cond_0

    .line 108
    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 109
    const/4 v5, 0x1

    goto :goto_1

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static handleFolderKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 10
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 820
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/ShortcutAndWidgetContainer;

    .line 821
    .local v5, "parent":Lcom/android/launcher2/ShortcutAndWidgetContainer;
    invoke-virtual {v5}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    .line 822
    .local v3, "layout":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Folder;

    .line 823
    .local v1, "folder":Lcom/android/launcher2/Folder;
    iget-object v6, v1, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    .line 825
    .local v6, "title":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 826
    .local v0, "action":I
    if-eq v0, v8, :cond_0

    move v2, v8

    .line 827
    .local v2, "handleKeyEvent":Z
    :goto_0
    const/4 v7, 0x0

    .line 828
    .local v7, "wasHandled":Z
    sparse-switch p1, :sswitch_data_0

    .line 896
    :goto_1
    return v7

    .line 826
    .end local v2    # "handleKeyEvent":Z
    .end local v7    # "wasHandled":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 830
    .restart local v2    # "handleKeyEvent":Z
    .restart local v7    # "wasHandled":Z
    :sswitch_0
    if-eqz v2, :cond_1

    .line 832
    invoke-static {v3, v5, p0, v9}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 833
    .local v4, "newIcon":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 834
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 837
    .end local v4    # "newIcon":Landroid/view/View;
    :cond_1
    const/4 v7, 0x1

    .line 838
    goto :goto_1

    .line 840
    :sswitch_1
    if-eqz v2, :cond_2

    .line 842
    invoke-static {v3, v5, p0, v8}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 843
    .restart local v4    # "newIcon":Landroid/view/View;
    if-eqz v4, :cond_3

    .line 844
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 849
    .end local v4    # "newIcon":Landroid/view/View;
    :cond_2
    :goto_2
    const/4 v7, 0x1

    .line 850
    goto :goto_1

    .line 846
    .restart local v4    # "newIcon":Landroid/view/View;
    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    .line 852
    .end local v4    # "newIcon":Landroid/view/View;
    :sswitch_2
    if-eqz v2, :cond_4

    .line 854
    invoke-static {v3, v5, p0, v9}, Lcom/android/launcher2/FocusHelper;->getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 855
    .restart local v4    # "newIcon":Landroid/view/View;
    if-eqz v4, :cond_4

    .line 856
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 859
    .end local v4    # "newIcon":Landroid/view/View;
    :cond_4
    const/4 v7, 0x1

    .line 860
    goto :goto_1

    .line 862
    :sswitch_3
    if-eqz v2, :cond_5

    .line 864
    invoke-static {v3, v5, p0, v8}, Lcom/android/launcher2/FocusHelper;->getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 865
    .restart local v4    # "newIcon":Landroid/view/View;
    if-eqz v4, :cond_6

    .line 866
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 871
    .end local v4    # "newIcon":Landroid/view/View;
    :cond_5
    :goto_3
    const/4 v7, 0x1

    .line 872
    goto :goto_1

    .line 868
    .restart local v4    # "newIcon":Landroid/view/View;
    :cond_6
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    .line 874
    .end local v4    # "newIcon":Landroid/view/View;
    :sswitch_4
    if-eqz v2, :cond_7

    .line 876
    invoke-static {v3, v5, v9, v8}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v4

    .line 877
    .restart local v4    # "newIcon":Landroid/view/View;
    if-eqz v4, :cond_7

    .line 878
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 881
    .end local v4    # "newIcon":Landroid/view/View;
    :cond_7
    const/4 v7, 0x1

    .line 882
    goto :goto_1

    .line 884
    :sswitch_5
    if-eqz v2, :cond_8

    .line 886
    invoke-virtual {v5}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v8

    invoke-static {v3, v5, v8, v9}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v4

    .line 888
    .restart local v4    # "newIcon":Landroid/view/View;
    if-eqz v4, :cond_8

    .line 889
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 892
    .end local v4    # "newIcon":Landroid/view/View;
    :cond_8
    const/4 v7, 0x1

    .line 893
    goto :goto_1

    .line 828
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x7a -> :sswitch_4
        0x7b -> :sswitch_5
    .end sparse-switch
.end method

.method static handleHotseatButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;I)Z
    .locals 14
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;
    .param p3, "orientation"    # I

    .prologue
    .line 494
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 495
    .local v9, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 496
    .local v5, "launcher":Landroid/view/ViewGroup;
    const v12, 0x7f07001c

    invoke-virtual {v5, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/Workspace;

    .line 497
    .local v11, "workspace":Lcom/android/launcher2/Workspace;
    invoke-virtual {v9, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 498
    .local v2, "buttonIndex":I
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 499
    .local v1, "buttonCount":I
    invoke-virtual {v11}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v8

    .line 505
    .local v8, "pageIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 506
    .local v0, "action":I
    const/4 v12, 0x1

    if-eq v0, v12, :cond_0

    const/4 v4, 0x1

    .line 507
    .local v4, "handleKeyEvent":Z
    :goto_0
    const/4 v10, 0x0

    .line 508
    .local v10, "wasHandled":Z
    packed-switch p1, :pswitch_data_0

    .line 551
    :goto_1
    return v10

    .line 506
    .end local v4    # "handleKeyEvent":Z
    .end local v10    # "wasHandled":Z
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 510
    .restart local v4    # "handleKeyEvent":Z
    .restart local v10    # "wasHandled":Z
    :pswitch_0
    if-eqz v4, :cond_1

    .line 512
    if-lez v2, :cond_2

    .line 513
    add-int/lit8 v12, v2, -0x1

    invoke-virtual {v9, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->requestFocus()Z

    .line 518
    :cond_1
    :goto_2
    const/4 v10, 0x1

    .line 519
    goto :goto_1

    .line 515
    :cond_2
    add-int/lit8 v12, v8, -0x1

    invoke-virtual {v11, v12}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    goto :goto_2

    .line 521
    :pswitch_1
    if-eqz v4, :cond_3

    .line 523
    add-int/lit8 v12, v1, -0x1

    if-ge v2, v12, :cond_4

    .line 524
    add-int/lit8 v12, v2, 0x1

    invoke-virtual {v9, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->requestFocus()Z

    .line 529
    :cond_3
    :goto_3
    const/4 v10, 0x1

    .line 530
    goto :goto_1

    .line 526
    :cond_4
    add-int/lit8 v12, v8, 0x1

    invoke-virtual {v11, v12}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    goto :goto_3

    .line 532
    :pswitch_2
    if-eqz v4, :cond_5

    .line 534
    invoke-virtual {v11, v8}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout;

    .line 535
    .local v6, "layout":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v3

    .line 536
    .local v3, "children":Lcom/android/launcher2/ShortcutAndWidgetContainer;
    const/4 v12, -0x1

    const/4 v13, 0x1

    invoke-static {v6, v3, v12, v13}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v7

    .line 537
    .local v7, "newIcon":Landroid/view/View;
    if-eqz v7, :cond_6

    .line 538
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 543
    .end local v3    # "children":Lcom/android/launcher2/ShortcutAndWidgetContainer;
    .end local v6    # "layout":Lcom/android/launcher2/CellLayout;
    .end local v7    # "newIcon":Landroid/view/View;
    :cond_5
    :goto_4
    const/4 v10, 0x1

    .line 544
    goto :goto_1

    .line 540
    .restart local v3    # "children":Lcom/android/launcher2/ShortcutAndWidgetContainer;
    .restart local v6    # "layout":Lcom/android/launcher2/CellLayout;
    .restart local v7    # "newIcon":Landroid/view/View;
    :cond_6
    invoke-virtual {v11}, Lcom/android/launcher2/Workspace;->requestFocus()Z

    goto :goto_4

    .line 547
    .end local v3    # "children":Lcom/android/launcher2/ShortcutAndWidgetContainer;
    .end local v6    # "layout":Lcom/android/launcher2/CellLayout;
    .end local v7    # "newIcon":Landroid/view/View;
    :pswitch_3
    const/4 v10, 0x1

    .line 548
    goto :goto_1

    .line 508
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static handleIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 14
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    .line 665
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/ShortcutAndWidgetContainer;

    .line 666
    .local v8, "parent":Lcom/android/launcher2/ShortcutAndWidgetContainer;
    invoke-virtual {v8}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    .line 667
    .local v4, "layout":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/Workspace;

    .line 668
    .local v11, "workspace":Lcom/android/launcher2/Workspace;
    invoke-virtual {v11}, Lcom/android/launcher2/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 669
    .local v3, "launcher":Landroid/view/ViewGroup;
    const v12, 0x7f070025

    invoke-virtual {v3, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 670
    .local v9, "tabs":Landroid/view/ViewGroup;
    const v12, 0x7f070024

    invoke-virtual {v3, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 671
    .local v2, "hotseat":Landroid/view/ViewGroup;
    invoke-virtual {v11, v4}, Lcom/android/launcher2/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v7

    .line 672
    .local v7, "pageIndex":I
    invoke-virtual {v11}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v6

    .line 674
    .local v6, "pageCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 675
    .local v0, "action":I
    const/4 v12, 0x1

    if-eq v0, v12, :cond_1

    const/4 v1, 0x1

    .line 676
    .local v1, "handleKeyEvent":Z
    :goto_0
    const/4 v10, 0x0

    .line 677
    .local v10, "wasHandled":Z
    sparse-switch p1, :sswitch_data_0

    .line 813
    :cond_0
    :goto_1
    return v10

    .line 675
    .end local v1    # "handleKeyEvent":Z
    .end local v10    # "wasHandled":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 679
    .restart local v1    # "handleKeyEvent":Z
    .restart local v10    # "wasHandled":Z
    :sswitch_0
    if-eqz v1, :cond_2

    .line 681
    const/4 v12, -0x1

    invoke-static {v4, v8, p0, v12}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 682
    .local v5, "newIcon":Landroid/view/View;
    if-eqz v5, :cond_3

    .line 683
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 698
    .end local v5    # "newIcon":Landroid/view/View;
    :cond_2
    :goto_2
    const/4 v10, 0x1

    .line 699
    goto :goto_1

    .line 685
    .restart local v5    # "newIcon":Landroid/view/View;
    :cond_3
    if-lez v7, :cond_2

    .line 686
    add-int/lit8 v12, v7, -0x1

    invoke-static {v11, v12}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v8

    .line 687
    invoke-virtual {v8}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v12

    const/4 v13, -0x1

    invoke-static {v4, v8, v12, v13}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 689
    if-eqz v5, :cond_4

    .line 690
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    .line 693
    :cond_4
    add-int/lit8 v12, v7, -0x1

    invoke-virtual {v11, v12}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    goto :goto_2

    .line 701
    .end local v5    # "newIcon":Landroid/view/View;
    :sswitch_1
    if-eqz v1, :cond_5

    .line 703
    const/4 v12, 0x1

    invoke-static {v4, v8, p0, v12}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 704
    .restart local v5    # "newIcon":Landroid/view/View;
    if-eqz v5, :cond_6

    .line 705
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 719
    .end local v5    # "newIcon":Landroid/view/View;
    :cond_5
    :goto_3
    const/4 v10, 0x1

    .line 720
    goto :goto_1

    .line 707
    .restart local v5    # "newIcon":Landroid/view/View;
    :cond_6
    add-int/lit8 v12, v6, -0x1

    if-ge v7, v12, :cond_5

    .line 708
    add-int/lit8 v12, v7, 0x1

    invoke-static {v11, v12}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v8

    .line 709
    const/4 v12, -0x1

    const/4 v13, 0x1

    invoke-static {v4, v8, v12, v13}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 710
    if-eqz v5, :cond_7

    .line 711
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    .line 714
    :cond_7
    add-int/lit8 v12, v7, 0x1

    invoke-virtual {v11, v12}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    goto :goto_3

    .line 722
    .end local v5    # "newIcon":Landroid/view/View;
    :sswitch_2
    if-eqz v1, :cond_0

    .line 724
    const/4 v12, -0x1

    invoke-static {v4, v8, p0, v12}, Lcom/android/launcher2/FocusHelper;->getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 725
    .restart local v5    # "newIcon":Landroid/view/View;
    if-eqz v5, :cond_8

    .line 726
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 727
    const/4 v10, 0x1

    goto :goto_1

    .line 729
    :cond_8
    invoke-virtual {v9}, Landroid/view/ViewGroup;->requestFocus()Z

    goto :goto_1

    .line 734
    .end local v5    # "newIcon":Landroid/view/View;
    :sswitch_3
    if-eqz v1, :cond_0

    .line 736
    const/4 v12, 0x1

    invoke-static {v4, v8, p0, v12}, Lcom/android/launcher2/FocusHelper;->getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 737
    .restart local v5    # "newIcon":Landroid/view/View;
    if-eqz v5, :cond_9

    .line 738
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 739
    const/4 v10, 0x1

    goto :goto_1

    .line 740
    :cond_9
    if-eqz v2, :cond_0

    .line 741
    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestFocus()Z

    goto :goto_1

    .line 746
    .end local v5    # "newIcon":Landroid/view/View;
    :sswitch_4
    if-eqz v1, :cond_a

    .line 749
    if-lez v7, :cond_c

    .line 750
    add-int/lit8 v12, v7, -0x1

    invoke-static {v11, v12}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v8

    .line 751
    const/4 v12, -0x1

    const/4 v13, 0x1

    invoke-static {v4, v8, v12, v13}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 752
    .restart local v5    # "newIcon":Landroid/view/View;
    if-eqz v5, :cond_b

    .line 753
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 765
    .end local v5    # "newIcon":Landroid/view/View;
    :cond_a
    :goto_4
    const/4 v10, 0x1

    .line 766
    goto/16 :goto_1

    .line 756
    .restart local v5    # "newIcon":Landroid/view/View;
    :cond_b
    add-int/lit8 v12, v7, -0x1

    invoke-virtual {v11, v12}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    goto :goto_4

    .line 759
    .end local v5    # "newIcon":Landroid/view/View;
    :cond_c
    const/4 v12, -0x1

    const/4 v13, 0x1

    invoke-static {v4, v8, v12, v13}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 760
    .restart local v5    # "newIcon":Landroid/view/View;
    if-eqz v5, :cond_a

    .line 761
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_4

    .line 768
    .end local v5    # "newIcon":Landroid/view/View;
    :sswitch_5
    if-eqz v1, :cond_d

    .line 771
    add-int/lit8 v12, v6, -0x1

    if-ge v7, v12, :cond_f

    .line 772
    add-int/lit8 v12, v7, 0x1

    invoke-static {v11, v12}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v8

    .line 773
    const/4 v12, -0x1

    const/4 v13, 0x1

    invoke-static {v4, v8, v12, v13}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 774
    .restart local v5    # "newIcon":Landroid/view/View;
    if-eqz v5, :cond_e

    .line 775
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 788
    .end local v5    # "newIcon":Landroid/view/View;
    :cond_d
    :goto_5
    const/4 v10, 0x1

    .line 789
    goto/16 :goto_1

    .line 778
    .restart local v5    # "newIcon":Landroid/view/View;
    :cond_e
    add-int/lit8 v12, v7, 0x1

    invoke-virtual {v11, v12}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    goto :goto_5

    .line 781
    .end local v5    # "newIcon":Landroid/view/View;
    :cond_f
    invoke-virtual {v8}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v12

    const/4 v13, -0x1

    invoke-static {v4, v8, v12, v13}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 783
    .restart local v5    # "newIcon":Landroid/view/View;
    if-eqz v5, :cond_d

    .line 784
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_5

    .line 791
    .end local v5    # "newIcon":Landroid/view/View;
    :sswitch_6
    if-eqz v1, :cond_10

    .line 793
    const/4 v12, -0x1

    const/4 v13, 0x1

    invoke-static {v4, v8, v12, v13}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 794
    .restart local v5    # "newIcon":Landroid/view/View;
    if-eqz v5, :cond_10

    .line 795
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 798
    .end local v5    # "newIcon":Landroid/view/View;
    :cond_10
    const/4 v10, 0x1

    .line 799
    goto/16 :goto_1

    .line 801
    :sswitch_7
    if-eqz v1, :cond_11

    .line 803
    invoke-virtual {v8}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v12

    const/4 v13, -0x1

    invoke-static {v4, v8, v12, v13}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 805
    .restart local v5    # "newIcon":Landroid/view/View;
    if-eqz v5, :cond_11

    .line 806
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 809
    .end local v5    # "newIcon":Landroid/view/View;
    :cond_11
    const/4 v10, 0x1

    .line 810
    goto/16 :goto_1

    .line 677
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x5c -> :sswitch_4
        0x5d -> :sswitch_5
        0x7a -> :sswitch_6
        0x7b -> :sswitch_7
    .end sparse-switch
.end method

.method static handlePagedViewGridLayoutWidgetKeyEvent(Lcom/android/launcher2/PagedViewWidget;ILandroid/view/KeyEvent;)Z
    .locals 23
    .param p0, "w"    # Lcom/android/launcher2/PagedViewWidget;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedViewWidget;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/PagedViewGridLayout;

    .line 137
    .local v13, "parent":Lcom/android/launcher2/PagedViewGridLayout;
    invoke-virtual {v13}, Lcom/android/launcher2/PagedViewGridLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/PagedView;

    .line 138
    .local v7, "container":Lcom/android/launcher2/PagedView;
    invoke-static {v7}, Lcom/android/launcher2/FocusHelper;->findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v14

    .line 139
    .local v14, "tabHost":Landroid/widget/TabHost;
    invoke-virtual {v14}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v15

    .line 140
    .local v15, "tabs":Landroid/widget/TabWidget;
    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/android/launcher2/PagedViewGridLayout;->indexOfChild(Landroid/view/View;)I

    move-result v18

    .line 141
    .local v18, "widgetIndex":I
    invoke-virtual {v13}, Lcom/android/launcher2/PagedViewGridLayout;->getChildCount()I

    move-result v17

    .line 142
    .local v17, "widgetCount":I
    invoke-virtual {v7, v13}, Lcom/android/launcher2/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/android/launcher2/PagedView;->indexToPage(I)I

    move-result v12

    .line 143
    .local v12, "pageIndex":I
    invoke-virtual {v7}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v11

    .line 144
    .local v11, "pageCount":I
    invoke-virtual {v13}, Lcom/android/launcher2/PagedViewGridLayout;->getCellCountX()I

    move-result v3

    .line 145
    .local v3, "cellCountX":I
    invoke-virtual {v13}, Lcom/android/launcher2/PagedViewGridLayout;->getCellCountY()I

    move-result v4

    .line 146
    .local v4, "cellCountY":I
    rem-int v19, v18, v3

    .line 147
    .local v19, "x":I
    div-int v20, v18, v3

    .line 149
    .local v20, "y":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 150
    .local v2, "action":I
    const/16 v21, 0x1

    move/from16 v0, v21

    if-eq v2, v0, :cond_0

    const/4 v8, 0x1

    .line 151
    .local v8, "handleKeyEvent":Z
    :goto_0
    const/4 v9, 0x0

    .line 154
    .local v9, "newParent":Landroid/view/ViewGroup;
    const/4 v5, 0x0

    .line 155
    .local v5, "child":Landroid/view/View;
    const/16 v16, 0x0

    .line 156
    .local v16, "wasHandled":Z
    sparse-switch p1, :sswitch_data_0

    .line 273
    :goto_1
    return v16

    .line 150
    .end local v5    # "child":Landroid/view/View;
    .end local v8    # "handleKeyEvent":Z
    .end local v9    # "newParent":Landroid/view/ViewGroup;
    .end local v16    # "wasHandled":Z
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 158
    .restart local v5    # "child":Landroid/view/View;
    .restart local v8    # "handleKeyEvent":Z
    .restart local v9    # "newParent":Landroid/view/ViewGroup;
    .restart local v16    # "wasHandled":Z
    :sswitch_0
    if-eqz v8, :cond_1

    .line 160
    if-lez v18, :cond_2

    .line 161
    add-int/lit8 v21, v18, -0x1

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->requestFocus()Z

    .line 172
    :cond_1
    :goto_2
    const/16 v16, 0x1

    .line 173
    goto :goto_1

    .line 163
    :cond_2
    if-lez v12, :cond_1

    .line 164
    add-int/lit8 v21, v12, -0x1

    move/from16 v0, v21

    invoke-static {v7, v0}, Lcom/android/launcher2/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v9

    .line 165
    if-eqz v9, :cond_1

    .line 166
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 167
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    .line 175
    :sswitch_1
    if-eqz v8, :cond_3

    .line 177
    add-int/lit8 v21, v17, -0x1

    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    .line 178
    add-int/lit8 v21, v18, 0x1

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->requestFocus()Z

    .line 189
    :cond_3
    :goto_3
    const/16 v16, 0x1

    .line 190
    goto :goto_1

    .line 180
    :cond_4
    add-int/lit8 v21, v11, -0x1

    move/from16 v0, v21

    if-ge v12, v0, :cond_3

    .line 181
    add-int/lit8 v21, v12, 0x1

    move/from16 v0, v21

    invoke-static {v7, v0}, Lcom/android/launcher2/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v9

    .line 182
    if-eqz v9, :cond_3

    .line 183
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 184
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    .line 192
    :sswitch_2
    if-eqz v8, :cond_5

    .line 194
    if-lez v20, :cond_6

    .line 195
    add-int/lit8 v21, v20, -0x1

    mul-int v21, v21, v3

    add-int v10, v21, v19

    .line 196
    .local v10, "newWidgetIndex":I
    invoke-virtual {v13, v10}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 197
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 202
    .end local v10    # "newWidgetIndex":I
    :cond_5
    :goto_4
    const/16 v16, 0x1

    .line 203
    goto :goto_1

    .line 199
    :cond_6
    invoke-virtual {v15}, Landroid/widget/TabWidget;->requestFocus()Z

    goto :goto_4

    .line 205
    :sswitch_3
    if-eqz v8, :cond_7

    .line 207
    add-int/lit8 v21, v4, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    .line 208
    add-int/lit8 v21, v17, -0x1

    add-int/lit8 v22, v20, 0x1

    mul-int v22, v22, v3

    add-int v22, v22, v19

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 209
    .restart local v10    # "newWidgetIndex":I
    invoke-virtual {v13, v10}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 210
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 213
    .end local v10    # "newWidgetIndex":I
    :cond_7
    const/16 v16, 0x1

    .line 214
    goto/16 :goto_1

    .line 217
    :sswitch_4
    if-eqz v8, :cond_8

    move-object v6, v7

    .line 219
    check-cast v6, Landroid/view/View$OnClickListener;

    .line 220
    .local v6, "clickListener":Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    invoke-interface {v6, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 222
    .end local v6    # "clickListener":Landroid/view/View$OnClickListener;
    :cond_8
    const/16 v16, 0x1

    .line 223
    goto/16 :goto_1

    .line 225
    :sswitch_5
    if-eqz v8, :cond_a

    .line 228
    if-lez v12, :cond_b

    .line 229
    add-int/lit8 v21, v12, -0x1

    move/from16 v0, v21

    invoke-static {v7, v0}, Lcom/android/launcher2/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v9

    .line 230
    if-eqz v9, :cond_9

    .line 231
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 236
    :cond_9
    :goto_5
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 238
    :cond_a
    const/16 v16, 0x1

    .line 239
    goto/16 :goto_1

    .line 234
    :cond_b
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    goto :goto_5

    .line 241
    :sswitch_6
    if-eqz v8, :cond_d

    .line 244
    add-int/lit8 v21, v11, -0x1

    move/from16 v0, v21

    if-ge v12, v0, :cond_e

    .line 245
    add-int/lit8 v21, v12, 0x1

    move/from16 v0, v21

    invoke-static {v7, v0}, Lcom/android/launcher2/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v9

    .line 246
    if-eqz v9, :cond_c

    .line 247
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 252
    :cond_c
    :goto_6
    if-eqz v5, :cond_d

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 254
    :cond_d
    const/16 v16, 0x1

    .line 255
    goto/16 :goto_1

    .line 250
    :cond_e
    add-int/lit8 v21, v17, -0x1

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    goto :goto_6

    .line 257
    :sswitch_7
    if-eqz v8, :cond_f

    .line 259
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 260
    if-eqz v5, :cond_f

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 262
    :cond_f
    const/16 v16, 0x1

    .line 263
    goto/16 :goto_1

    .line 265
    :sswitch_8
    if-eqz v8, :cond_10

    .line 267
    add-int/lit8 v21, v17, -0x1

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->requestFocus()Z

    .line 269
    :cond_10
    const/16 v16, 0x1

    .line 270
    goto/16 :goto_1

    .line 156
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_4
        0x42 -> :sswitch_4
        0x5c -> :sswitch_5
        0x5d -> :sswitch_6
        0x7a -> :sswitch_7
        0x7b -> :sswitch_8
    .end sparse-switch
.end method

.method static handleTabKeyEvent(Lcom/android/launcher2/AccessibleTabView;ILandroid/view/KeyEvent;)Z
    .locals 10
    .param p0, "v"    # Lcom/android/launcher2/AccessibleTabView;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 440
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v8

    if-nez v8, :cond_0

    .line 487
    :goto_0
    return v7

    .line 442
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/AccessibleTabView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/FocusOnlyTabWidget;

    .line 443
    .local v3, "parent":Lcom/android/launcher2/FocusOnlyTabWidget;
    invoke-static {v3}, Lcom/android/launcher2/FocusHelper;->findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v5

    .line 444
    .local v5, "tabHost":Landroid/widget/TabHost;
    invoke-virtual {v5}, Landroid/widget/TabHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v1

    .line 445
    .local v1, "contents":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Lcom/android/launcher2/FocusOnlyTabWidget;->getTabCount()I

    move-result v4

    .line 446
    .local v4, "tabCount":I
    invoke-virtual {v3, p0}, Lcom/android/launcher2/FocusOnlyTabWidget;->getChildTabIndex(Landroid/view/View;)I

    move-result v6

    .line 448
    .local v6, "tabIndex":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 449
    .local v0, "action":I
    if-eq v0, v2, :cond_1

    .line 450
    .local v2, "handleKeyEvent":Z
    :goto_1
    const/4 v7, 0x0

    .line 451
    .local v7, "wasHandled":Z
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 476
    :pswitch_0
    const/4 v7, 0x1

    .line 477
    goto :goto_0

    .end local v2    # "handleKeyEvent":Z
    .end local v7    # "wasHandled":Z
    :cond_1
    move v2, v7

    .line 449
    goto :goto_1

    .line 453
    .restart local v2    # "handleKeyEvent":Z
    .restart local v7    # "wasHandled":Z
    :pswitch_1
    if-eqz v2, :cond_2

    .line 455
    if-lez v6, :cond_2

    .line 456
    add-int/lit8 v8, v6, -0x1

    invoke-virtual {v3, v8}, Lcom/android/launcher2/FocusOnlyTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    .line 459
    :cond_2
    const/4 v7, 0x1

    .line 460
    goto :goto_0

    .line 462
    :pswitch_2
    if-eqz v2, :cond_3

    .line 464
    add-int/lit8 v8, v4, -0x1

    if-ge v6, v8, :cond_4

    .line 465
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v3, v8}, Lcom/android/launcher2/FocusOnlyTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    .line 472
    :cond_3
    :goto_2
    const/4 v7, 0x1

    .line 473
    goto :goto_0

    .line 467
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/AccessibleTabView;->getNextFocusRightId()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    .line 468
    invoke-virtual {p0}, Lcom/android/launcher2/AccessibleTabView;->getNextFocusRightId()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    .line 479
    :pswitch_3
    if-eqz v2, :cond_5

    .line 481
    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 483
    :cond_5
    const/4 v7, 0x1

    .line 484
    goto :goto_0

    .line 451
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.class Lcom/android/launcher2/Workspace$11;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->removeItems(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;

.field final synthetic val$layout:Landroid/view/ViewGroup;

.field final synthetic val$layoutParent:Lcom/android/launcher2/CellLayout;

.field final synthetic val$packageNames:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;Landroid/view/ViewGroup;Ljava/util/HashSet;Lcom/android/launcher2/CellLayout;)V
    .locals 0

    .prologue
    .line 3644
    iput-object p1, p0, Lcom/android/launcher2/Workspace$11;->this$0:Lcom/android/launcher2/Workspace;

    iput-object p2, p0, Lcom/android/launcher2/Workspace$11;->val$layout:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/android/launcher2/Workspace$11;->val$packageNames:Ljava/util/HashSet;

    iput-object p4, p0, Lcom/android/launcher2/Workspace$11;->val$layoutParent:Lcom/android/launcher2/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 3646
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3647
    .local v5, "childrenToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 3649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$11;->val$layout:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 3650
    .local v4, "childCount":I
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_0
    if-ge v12, v4, :cond_5

    .line 3651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$11;->val$layout:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 3652
    .local v17, "view":Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v16

    .line 3654
    .local v16, "tag":Ljava/lang/Object;
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/launcher2/ShortcutInfo;

    move/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v9, v16

    .line 3655
    check-cast v9, Lcom/android/launcher2/ShortcutInfo;

    .line 3656
    .local v9, "info":Lcom/android/launcher2/ShortcutInfo;
    iget-object v10, v9, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 3657
    .local v10, "intent":Landroid/content/Intent;
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    .line 3659
    .local v14, "name":Landroid/content/ComponentName;
    if-eqz v14, :cond_0

    .line 3660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$11;->val$packageNames:Ljava/util/HashSet;

    move-object/from16 v18, v0

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 3661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$11;->this$0:Lcom/android/launcher2/Workspace;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->access$000(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Launcher;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v9}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)V

    .line 3662
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3650
    .end local v9    # "info":Lcom/android/launcher2/ShortcutInfo;
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v14    # "name":Landroid/content/ComponentName;
    :cond_0
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 3665
    :cond_1
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/launcher2/FolderInfo;

    move/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v9, v16

    .line 3666
    check-cast v9, Lcom/android/launcher2/FolderInfo;

    .line 3667
    .local v9, "info":Lcom/android/launcher2/FolderInfo;
    iget-object v6, v9, Lcom/android/launcher2/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 3668
    .local v6, "contents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutInfo;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 3669
    .local v7, "contentsCount":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3672
    .local v2, "appsToRemoveFromFolder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutInfo;>;"
    const/4 v13, 0x0

    .local v13, "k":I
    :goto_2
    if-ge v13, v7, :cond_3

    .line 3673
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ShortcutInfo;

    .line 3674
    .local v1, "appInfo":Lcom/android/launcher2/ShortcutInfo;
    iget-object v10, v1, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 3675
    .restart local v10    # "intent":Landroid/content/Intent;
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    .line 3677
    .restart local v14    # "name":Landroid/content/ComponentName;
    if-eqz v14, :cond_2

    .line 3678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$11;->val$packageNames:Ljava/util/HashSet;

    move-object/from16 v18, v0

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 3679
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3672
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 3683
    .end local v1    # "appInfo":Lcom/android/launcher2/ShortcutInfo;
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v14    # "name":Landroid/content/ComponentName;
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/ShortcutInfo;

    .line 3684
    .local v11, "item":Lcom/android/launcher2/ShortcutInfo;
    invoke-virtual {v9, v11}, Lcom/android/launcher2/FolderInfo;->remove(Lcom/android/launcher2/ShortcutInfo;)V

    .line 3685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$11;->this$0:Lcom/android/launcher2/Workspace;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->access$000(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Launcher;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v11}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)V

    goto :goto_3

    .line 3687
    .end local v2    # "appsToRemoveFromFolder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutInfo;>;"
    .end local v6    # "contents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutInfo;>;"
    .end local v7    # "contentsCount":I
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "info":Lcom/android/launcher2/FolderInfo;
    .end local v11    # "item":Lcom/android/launcher2/ShortcutInfo;
    .end local v13    # "k":I
    :cond_4
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v9, v16

    .line 3688
    check-cast v9, Lcom/android/launcher2/LauncherAppWidgetInfo;

    .line 3689
    .local v9, "info":Lcom/android/launcher2/LauncherAppWidgetInfo;
    iget-object v15, v9, Lcom/android/launcher2/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 3690
    .local v15, "provider":Landroid/content/ComponentName;
    if-eqz v15, :cond_0

    .line 3691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$11;->val$packageNames:Ljava/util/HashSet;

    move-object/from16 v18, v0

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 3692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$11;->this$0:Lcom/android/launcher2/Workspace;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->access$000(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Launcher;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v9}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)V

    .line 3693
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 3699
    .end local v9    # "info":Lcom/android/launcher2/LauncherAppWidgetInfo;
    .end local v15    # "provider":Landroid/content/ComponentName;
    .end local v16    # "tag":Ljava/lang/Object;
    .end local v17    # "view":Landroid/view/View;
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3700
    const/4 v12, 0x0

    :goto_4
    if-ge v12, v4, :cond_7

    .line 3701
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 3704
    .local v3, "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$11;->val$layoutParent:Lcom/android/launcher2/CellLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/android/launcher2/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 3705
    instance-of v0, v3, Lcom/android/launcher2/DropTarget;

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 3706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$11;->this$0:Lcom/android/launcher2/Workspace;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->access$1500(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/DragController;

    move-result-object v18

    check-cast v3, Lcom/android/launcher2/DropTarget;

    .end local v3    # "child":Landroid/view/View;
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/android/launcher2/DragController;->removeDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 3700
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 3710
    :cond_7
    if-lez v4, :cond_8

    .line 3711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$11;->val$layout:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$11;->val$layout:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewGroup;->invalidate()V

    .line 3714
    :cond_8
    return-void
.end method

.class public Lcom/android/launcher2/AppsCustomizeTabHost;
.super Landroid/widget/TabHost;
.source "AppsCustomizeTabHost.java"

# interfaces
.implements Lcom/android/launcher2/LauncherTransitionable;
.implements Landroid/widget/TabHost$OnTabChangeListener;


# static fields
.field private static final APPS_TAB_TAG:Ljava/lang/String; = "APPS"

.field static final LOG_TAG:Ljava/lang/String; = "AppsCustomizeTabHost"

.field private static final WIDGETS_TAB_TAG:Ljava/lang/String; = "WIDGETS"


# instance fields
.field private mAnimationBuffer:Landroid/widget/FrameLayout;

.field private mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

.field private mContent:Landroid/widget/LinearLayout;

.field private mInTransition:Z

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mRelayoutAndMakeVisible:Ljava/lang/Runnable;

.field private mResetAfterTransition:Z

.field private mTabs:Landroid/view/ViewGroup;

.field private mTabsContainer:Landroid/view/ViewGroup;

.field private mTransitioningToWorkspace:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 62
    new-instance v0, Lcom/android/launcher2/AppsCustomizeTabHost$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AppsCustomizeTabHost$1;-><init>(Lcom/android/launcher2/AppsCustomizeTabHost;)V

    iput-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mRelayoutAndMakeVisible:Ljava/lang/Runnable;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/AppsCustomizeTabHost;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/AppsCustomizeTabHost;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mTabs:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/AppsCustomizeTabHost;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/AppsCustomizeTabHost;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mTabsContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/AppsCustomizeTabHost;)Lcom/android/launcher2/AppsCustomizePagedView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/AppsCustomizeTabHost;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/AppsCustomizeTabHost;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/AppsCustomizeTabHost;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->reloadCurrentPage()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher2/AppsCustomizeTabHost;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/AppsCustomizeTabHost;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAnimationBuffer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/AppsCustomizeTabHost;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/AppsCustomizeTabHost;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->onTabChangedStart()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/launcher2/AppsCustomizeTabHost;Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/AppsCustomizeTabHost;
    .param p1, "x1"    # Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizeTabHost;->onTabChangedEnd(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V

    return-void
.end method

.method private enableAndBuildHardwareLayer()V
    .locals 2

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/AppsCustomizeTabHost;->setLayerType(ILandroid/graphics/Paint;)V

    .line 359
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->buildLayer()V

    .line 361
    :cond_0
    return-void
.end method

.method private onTabChangedEnd(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V
    .locals 1
    .param p1, "type"    # Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->setContentType(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V

    .line 199
    return-void
.end method

.method private onTabChangedStart()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->hideScrollingIndicator(Z)V

    .line 187
    return-void
.end method

.method private reloadCurrentPage()V
    .locals 2

    .prologue
    .line 190
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->flashScrollingIndicator(Z)V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->loadAssociatedPages(I)V

    .line 194
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizePagedView;->requestFocus()Z

    .line 195
    return-void
.end method

.method private setVisibilityOfSiblingsWithLowerZOrder(I)V
    .locals 6
    .param p1, "visibility"    # I

    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 442
    .local v3, "parent":Landroid/view/ViewGroup;
    if-nez v3, :cond_1

    .line 460
    :cond_0
    return-void

    .line 444
    :cond_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 445
    .local v1, "count":I
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->isChildrenDrawingOrderEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 446
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 447
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 448
    .local v0, "child":Landroid/view/View;
    if-eq v0, p0, :cond_0

    .line 451
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    .line 446
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 454
    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 458
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "i":I
    :cond_3
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Failed; can\'t get z-order of views"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mContent:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getContentTypeForTabTag(Ljava/lang/String;)Lcom/android/launcher2/AppsCustomizePagedView$ContentType;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 308
    const-string v0, "APPS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    sget-object v0, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    .line 313
    :goto_0
    return-object v0

    .line 310
    :cond_0
    const-string v0, "WIDGETS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    sget-object v0, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Widgets:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    goto :goto_0

    .line 313
    :cond_1
    sget-object v0, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    goto :goto_0
.end method

.method public getDescendantFocusability()I
    .locals 1

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    const/high16 v0, 0x60000

    .line 336
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/TabHost;->getDescendantFocusability()I

    move-result v0

    goto :goto_0
.end method

.method public getTabTagForContentType(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    .prologue
    .line 320
    sget-object v0, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    if-ne p1, v0, :cond_0

    .line 321
    const-string v0, "APPS"

    .line 325
    :goto_0
    return-object v0

    .line 322
    :cond_0
    sget-object v0, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Widgets:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    if-ne p1, v0, :cond_1

    .line 323
    const-string v0, "WIDGETS"

    goto :goto_0

    .line 325
    :cond_1
    const-string v0, "APPS"

    goto :goto_0
.end method

.method isTransitioning()Z
    .locals 1

    .prologue
    .line 480
    iget-boolean v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mInTransition:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 13

    .prologue
    const v12, 0x7f040014

    const/4 v11, 0x0

    .line 96
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->setup()V

    .line 98
    const v9, 0x7f070007

    invoke-virtual {p0, v9}, Lcom/android/launcher2/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 99
    .local v8, "tabsContainer":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v7

    .line 100
    .local v7, "tabs":Landroid/widget/TabWidget;
    const v9, 0x7f070009

    invoke-virtual {p0, v9}, Lcom/android/launcher2/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppsCustomizePagedView;

    .line 102
    .local v0, "appsCustomizePane":Lcom/android/launcher2/AppsCustomizePagedView;
    iput-object v7, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mTabs:Landroid/view/ViewGroup;

    .line 103
    iput-object v8, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mTabsContainer:Landroid/view/ViewGroup;

    .line 104
    iput-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    .line 105
    const v9, 0x7f07000a

    invoke-virtual {p0, v9}, Lcom/android/launcher2/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout;

    iput-object v9, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAnimationBuffer:Landroid/widget/FrameLayout;

    .line 106
    const v9, 0x7f070006

    invoke-virtual {p0, v9}, Lcom/android/launcher2/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mContent:Landroid/widget/LinearLayout;

    .line 107
    if-eqz v7, :cond_0

    iget-object v9, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    if-nez v9, :cond_1

    :cond_0
    new-instance v9, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v9}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v9

    .line 111
    :cond_1
    new-instance v1, Lcom/android/launcher2/AppsCustomizeTabHost$2;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher2/AppsCustomizeTabHost$2;-><init>(Lcom/android/launcher2/AppsCustomizeTabHost;Lcom/android/launcher2/AppsCustomizePagedView;)V

    .line 120
    .local v1, "contentFactory":Landroid/widget/TabHost$TabContentFactory;
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0d0021

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, "label":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v9, v12, v7, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 122
    .local v6, "tabView":Landroid/widget/TextView;
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 124
    const-string v9, "APPS"

    invoke-virtual {p0, v9}, Lcom/android/launcher2/AppsCustomizeTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/launcher2/AppsCustomizeTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0d0008

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 126
    iget-object v9, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v9, v12, v7, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .end local v6    # "tabView":Landroid/widget/TextView;
    check-cast v6, Landroid/widget/TextView;

    .line 127
    .restart local v6    # "tabView":Landroid/widget/TextView;
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 129
    const-string v9, "WIDGETS"

    invoke-virtual {p0, v9}, Lcom/android/launcher2/AppsCustomizeTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/launcher2/AppsCustomizeTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 130
    invoke-virtual {p0, p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 133
    new-instance v2, Lcom/android/launcher2/AppsCustomizeTabKeyEventListener;

    invoke-direct {v2}, Lcom/android/launcher2/AppsCustomizeTabKeyEventListener;-><init>()V

    .line 134
    .local v2, "keyListener":Lcom/android/launcher2/AppsCustomizeTabKeyEventListener;
    invoke-virtual {v7}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v9}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v4

    .line 135
    .local v4, "lastTab":Landroid/view/View;
    invoke-virtual {v4, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 136
    const v9, 0x7f070008

    invoke-virtual {p0, v9}, Lcom/android/launcher2/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 137
    .local v5, "shopButton":Landroid/view/View;
    invoke-virtual {v5, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 140
    iget-object v9, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mTabsContainer:Landroid/view/ViewGroup;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 141
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mInTransition:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mTransitioningToWorkspace:Z

    if-eqz v0, :cond_0

    .line 165
    const/4 v0, 0x1

    .line 167
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TabHost;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLauncherTransitionEnd(Lcom/android/launcher2/Launcher;ZZ)V
    .locals 3
    .param p1, "l"    # Lcom/android/launcher2/Launcher;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 414
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher2/AppsCustomizePagedView;->onLauncherTransitionEnd(Lcom/android/launcher2/Launcher;ZZ)V

    .line 415
    iput-boolean v2, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mInTransition:Z

    .line 416
    if-eqz p2, :cond_0

    .line 417
    invoke-virtual {p0, v2, v1}, Lcom/android/launcher2/AppsCustomizeTabHost;->setLayerType(ILandroid/graphics/Paint;)V

    .line 420
    :cond_0
    if-nez p3, :cond_2

    .line 422
    invoke-virtual {p1, v1}, Lcom/android/launcher2/Launcher;->dismissWorkspaceCling(Landroid/view/View;)V

    .line 424
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizePagedView;->showAllAppsCling()V

    .line 427
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->loadAssociatedPages(I)V

    .line 429
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-nez v0, :cond_1

    .line 430
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->hideScrollingIndicator(Z)V

    .line 436
    :cond_1
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->setVisibilityOfSiblingsWithLowerZOrder(I)V

    .line 438
    :cond_2
    return-void
.end method

.method public onLauncherTransitionPrepare(Lcom/android/launcher2/Launcher;ZZ)V
    .locals 4
    .param p1, "l"    # Lcom/android/launcher2/Launcher;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 371
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher2/AppsCustomizePagedView;->onLauncherTransitionPrepare(Lcom/android/launcher2/Launcher;ZZ)V

    .line 372
    iput-boolean v3, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mInTransition:Z

    .line 373
    iput-boolean p3, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mTransitioningToWorkspace:Z

    .line 375
    if-eqz p3, :cond_2

    .line 377
    invoke-direct {p0, v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->setVisibilityOfSiblingsWithLowerZOrder(I)V

    .line 380
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizePagedView;->cancelScrollingIndicatorAnimations()V

    .line 394
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mResetAfterTransition:Z

    if-eqz v0, :cond_1

    .line 395
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizePagedView;->reset()V

    .line 396
    iput-boolean v2, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mResetAfterTransition:Z

    .line 398
    :cond_1
    return-void

    .line 383
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 387
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher2/AppsCustomizePagedView;->loadAssociatedPages(IZ)V

    .line 389
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0, v3}, Lcom/android/launcher2/AppsCustomizePagedView;->showScrollingIndicator(Z)V

    goto :goto_0
.end method

.method public onLauncherTransitionStart(Lcom/android/launcher2/Launcher;ZZ)V
    .locals 0
    .param p1, "l"    # Lcom/android/launcher2/Launcher;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z

    .prologue
    .line 402
    if-eqz p2, :cond_0

    .line 403
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->enableAndBuildHardwareLayer()V

    .line 405
    :cond_0
    return-void
.end method

.method public onLauncherTransitionStep(Lcom/android/launcher2/Launcher;F)V
    .locals 0
    .param p1, "l"    # Lcom/android/launcher2/Launcher;
    .param p2, "t"    # F

    .prologue
    .line 410
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 145
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mTabs:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gtz v2, :cond_2

    const/4 v1, 0x1

    .line 146
    .local v1, "remeasureTabWidth":Z
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/TabHost;->onMeasure(II)V

    .line 149
    if-eqz v1, :cond_1

    .line 150
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v2}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageContentWidth()I

    move-result v0

    .line 151
    .local v0, "contentWidth":I
    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mTabs:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v2, v0, :cond_0

    .line 153
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mTabs:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 154
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mRelayoutAndMakeVisible:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 157
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TabHost;->onMeasure(II)V

    .line 159
    .end local v0    # "contentWidth":I
    :cond_1
    return-void

    .line 145
    .end local v1    # "remeasureTabWidth":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 203
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppsCustomizeTabHost;->getContentTypeForTabTag(Ljava/lang/String;)Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    move-result-object v2

    .line 206
    .local v2, "type":Lcom/android/launcher2/AppsCustomizePagedView$ContentType;
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 207
    .local v1, "res":Landroid/content/res/Resources;
    const v3, 0x7f0a000c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 211
    .local v0, "duration":I
    new-instance v3, Lcom/android/launcher2/AppsCustomizeTabHost$3;

    invoke-direct {v3, p0, v2, v0}, Lcom/android/launcher2/AppsCustomizeTabHost$3;-><init>(Lcom/android/launcher2/AppsCustomizeTabHost;Lcom/android/launcher2/AppsCustomizePagedView$ContentType;I)V

    invoke-virtual {p0, v3}, Lcom/android/launcher2/AppsCustomizeTabHost;->post(Ljava/lang/Runnable;)Z

    .line 296
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mInTransition:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mTransitioningToWorkspace:Z

    if-eqz v0, :cond_0

    .line 174
    invoke-super {p0, p1}, Landroid/widget/TabHost;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 182
    :goto_0
    return v0

    .line 179
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getBottom()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 180
    const/4 v0, 0x1

    goto :goto_0

    .line 182
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/TabHost;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTrimMemory()V
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mContent:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 476
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizePagedView;->clearAllWidgetPages()V

    .line 477
    return-void
.end method

.method public onWindowVisible()V
    .locals 3

    .prologue
    .line 463
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mContent:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 467
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getCurrentPage()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->loadAssociatedPages(IZ)V

    .line 468
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->loadAssociatedPages(I)V

    .line 470
    :cond_0
    return-void
.end method

.method reset()V
    .locals 1

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mInTransition:Z

    if-eqz v0, :cond_0

    .line 342
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mResetAfterTransition:Z

    .line 347
    :goto_0
    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizePagedView;->reset()V

    goto :goto_0
.end method

.method selectAppsTab()V
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->setContentTypeImmediate(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V

    .line 85
    return-void
.end method

.method selectWidgetsTab()V
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Widgets:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->setContentTypeImmediate(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V

    .line 88
    return-void
.end method

.method setContentTypeImmediate(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V
    .locals 1
    .param p1, "type"    # Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 78
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->onTabChangedStart()V

    .line 79
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizeTabHost;->onTabChangedEnd(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppsCustomizeTabHost;->getTabTagForContentType(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0, p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 82
    return-void
.end method

.method public setCurrentTabFromContent(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V
    .locals 1
    .param p1, "type"    # Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    .prologue
    .line 299
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 300
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppsCustomizeTabHost;->getTabTagForContentType(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0, p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 302
    return-void
.end method

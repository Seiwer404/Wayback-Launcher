.class public Lcom/android/launcher2/PagedViewWidget;
.super Landroid/widget/LinearLayout;
.source "PagedViewWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/PagedViewWidget$CheckForShortPress;,
        Lcom/android/launcher2/PagedViewWidget$ShortPressListener;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "PagedViewWidgetLayout"

.field private static sDeletePreviewsWhenDetachedFromWindow:Z

.field static sShortpressTarget:Lcom/android/launcher2/PagedViewWidget;


# instance fields
.field private mDimensionsFormatString:Ljava/lang/String;

.field mIsAppWidget:Z

.field private final mOriginalImagePadding:Landroid/graphics/Rect;

.field mPendingCheckForShortPress:Lcom/android/launcher2/PagedViewWidget$CheckForShortPress;

.field mShortPressListener:Lcom/android/launcher2/PagedViewWidget$ShortPressListener;

.field mShortPressTriggered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/PagedViewWidget;->sDeletePreviewsWhenDetachedFromWindow:Z

    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/PagedViewWidget;->sShortpressTarget:Lcom/android/launcher2/PagedViewWidget;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/PagedViewWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/PagedViewWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    iput-object v1, p0, Lcom/android/launcher2/PagedViewWidget;->mPendingCheckForShortPress:Lcom/android/launcher2/PagedViewWidget$CheckForShortPress;

    .line 44
    iput-object v1, p0, Lcom/android/launcher2/PagedViewWidget;->mShortPressListener:Lcom/android/launcher2/PagedViewWidget$ShortPressListener;

    .line 45
    iput-boolean v2, p0, Lcom/android/launcher2/PagedViewWidget;->mShortPressTriggered:Z

    .line 48
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/PagedViewWidget;->mOriginalImagePadding:Landroid/graphics/Rect;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 62
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x7f0d000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/PagedViewWidget;->mDimensionsFormatString:Ljava/lang/String;

    .line 64
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedViewWidget;->setWillNotDraw(Z)V

    .line 65
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedViewWidget;->setClipToPadding(Z)V

    .line 66
    return-void
.end method

.method private checkForShortPress()V
    .locals 3

    .prologue
    .line 179
    sget-object v0, Lcom/android/launcher2/PagedViewWidget;->sShortpressTarget:Lcom/android/launcher2/PagedViewWidget;

    if-eqz v0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mPendingCheckForShortPress:Lcom/android/launcher2/PagedViewWidget$CheckForShortPress;

    if-nez v0, :cond_1

    .line 181
    new-instance v0, Lcom/android/launcher2/PagedViewWidget$CheckForShortPress;

    invoke-direct {v0, p0}, Lcom/android/launcher2/PagedViewWidget$CheckForShortPress;-><init>(Lcom/android/launcher2/PagedViewWidget;)V

    iput-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mPendingCheckForShortPress:Lcom/android/launcher2/PagedViewWidget$CheckForShortPress;

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mPendingCheckForShortPress:Lcom/android/launcher2/PagedViewWidget$CheckForShortPress;

    const-wide/16 v1, 0x78

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/PagedViewWidget;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private cleanUpShortPress()V
    .locals 1

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/launcher2/PagedViewWidget;->removeShortPressCallback()V

    .line 197
    iget-boolean v0, p0, Lcom/android/launcher2/PagedViewWidget;->mShortPressTriggered:Z

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mShortPressListener:Lcom/android/launcher2/PagedViewWidget$ShortPressListener;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mShortPressListener:Lcom/android/launcher2/PagedViewWidget$ShortPressListener;

    invoke-interface {v0, p0}, Lcom/android/launcher2/PagedViewWidget$ShortPressListener;->cleanUpShortPress(Landroid/view/View;)V

    .line 201
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PagedViewWidget;->mShortPressTriggered:Z

    .line 203
    :cond_1
    return-void
.end method

.method private removeShortPressCallback()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mPendingCheckForShortPress:Lcom/android/launcher2/PagedViewWidget$CheckForShortPress;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mPendingCheckForShortPress:Lcom/android/launcher2/PagedViewWidget$CheckForShortPress;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedViewWidget;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 193
    :cond_0
    return-void
.end method

.method static resetShortPressTarget()V
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/PagedViewWidget;->sShortpressTarget:Lcom/android/launcher2/PagedViewWidget;

    .line 207
    return-void
.end method

.method public static setDeletePreviewsWhenDetachedFromWindow(Z)V
    .locals 0
    .param p0, "value"    # Z

    .prologue
    .line 80
    sput-boolean p0, Lcom/android/launcher2/PagedViewWidget;->sDeletePreviewsWhenDetachedFromWindow:Z

    .line 81
    return-void
.end method


# virtual methods
.method public applyFromAppWidgetProviderInfo(Landroid/appwidget/AppWidgetProviderInfo;I[I)V
    .locals 10
    .param p1, "info"    # Landroid/appwidget/AppWidgetProviderInfo;
    .param p2, "maxWidth"    # I
    .param p3, "cellSpan"    # [I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 101
    iput-boolean v8, p0, Lcom/android/launcher2/PagedViewWidget;->mIsAppWidget:Z

    .line 102
    const v5, 0x7f07000e

    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 103
    .local v2, "image":Landroid/widget/ImageView;
    const/4 v5, -0x1

    if-le p2, v5, :cond_0

    .line 104
    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 106
    :cond_0
    iget-object v5, p1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 107
    const v5, 0x7f07000f

    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 108
    .local v3, "name":Landroid/widget/TextView;
    iget-object v5, p1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    const v5, 0x7f070010

    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 110
    .local v0, "dims":Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 111
    aget v5, p3, v9

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 112
    .local v1, "hSpan":I
    aget v5, p3, v8

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 113
    .local v4, "vSpan":I
    iget-object v5, p0, Lcom/android/launcher2/PagedViewWidget;->mDimensionsFormatString:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    .end local v1    # "hSpan":I
    .end local v4    # "vSpan":I
    :cond_1
    return-void
.end method

.method public applyFromResolveInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)V
    .locals 9
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 118
    iput-boolean v8, p0, Lcom/android/launcher2/PagedViewWidget;->mIsAppWidget:Z

    .line 119
    invoke-virtual {p2, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 120
    .local v2, "label":Ljava/lang/CharSequence;
    const v4, 0x7f07000e

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 121
    .local v1, "image":Landroid/widget/ImageView;
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 122
    const v4, 0x7f07000f

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 123
    .local v3, "name":Landroid/widget/TextView;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    const v4, 0x7f070010

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 125
    .local v0, "dims":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 126
    iget-object v4, p0, Lcom/android/launcher2/PagedViewWidget;->mDimensionsFormatString:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    :cond_0
    return-void
.end method

.method applyPreview(Lcom/android/launcher2/FastBitmapDrawable;I)V
    .locals 7
    .param p1, "preview"    # Lcom/android/launcher2/FastBitmapDrawable;
    .param p2, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 139
    const v3, 0x7f07000e

    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/PagedViewWidgetImageView;

    .line 141
    .local v1, "image":Lcom/android/launcher2/PagedViewWidgetImageView;
    if-eqz p1, :cond_1

    .line 142
    iput-boolean v4, v1, Lcom/android/launcher2/PagedViewWidgetImageView;->mAllowRequestLayout:Z

    .line 143
    invoke-virtual {v1, p1}, Lcom/android/launcher2/PagedViewWidgetImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    iget-boolean v3, p0, Lcom/android/launcher2/PagedViewWidget;->mIsAppWidget:Z

    if-eqz v3, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->getPreviewSize()[I

    move-result-object v2

    .line 147
    .local v2, "imageSize":[I
    aget v3, v2, v4

    invoke-virtual {p1}, Lcom/android/launcher2/FastBitmapDrawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v0, v3, 0x2

    .line 148
    .local v0, "centerAmount":I
    iget-object v3, p0, Lcom/android/launcher2/PagedViewWidget;->mOriginalImagePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/android/launcher2/PagedViewWidget;->mOriginalImagePadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/android/launcher2/PagedViewWidget;->mOriginalImagePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/android/launcher2/PagedViewWidget;->mOriginalImagePadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/android/launcher2/PagedViewWidgetImageView;->setPadding(IIII)V

    .line 153
    .end local v0    # "centerAmount":I
    .end local v2    # "imageSize":[I
    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Lcom/android/launcher2/PagedViewWidgetImageView;->setAlpha(F)V

    .line 154
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/launcher2/PagedViewWidgetImageView;->mAllowRequestLayout:Z

    .line 156
    :cond_1
    return-void
.end method

.method public getPreviewSize()[I
    .locals 5

    .prologue
    .line 131
    const v2, 0x7f07000e

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 132
    .local v0, "i":Landroid/widget/ImageView;
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 133
    .local v1, "maxSize":[I
    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher2/PagedViewWidget;->mOriginalImagePadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher2/PagedViewWidget;->mOriginalImagePadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    aput v3, v1, v2

    .line 134
    const/4 v2, 0x1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher2/PagedViewWidget;->mOriginalImagePadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    aput v3, v1, v2

    .line 135
    return-object v1
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 85
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 87
    sget-boolean v2, Lcom/android/launcher2/PagedViewWidget;->sDeletePreviewsWhenDetachedFromWindow:Z

    if-eqz v2, :cond_1

    .line 88
    const v2, 0x7f07000e

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 89
    .local v0, "image":Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/FastBitmapDrawable;

    .line 91
    .local v1, "preview":Lcom/android/launcher2/FastBitmapDrawable;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher2/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 92
    invoke-virtual {v1}, Lcom/android/launcher2/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 94
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    .end local v0    # "image":Landroid/widget/ImageView;
    .end local v1    # "preview":Lcom/android/launcher2/FastBitmapDrawable;
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 70
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 72
    const v1, 0x7f07000e

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 73
    .local v0, "image":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/android/launcher2/PagedViewWidget;->mOriginalImagePadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 74
    iget-object v1, p0, Lcom/android/launcher2/PagedViewWidget;->mOriginalImagePadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 75
    iget-object v1, p0, Lcom/android/launcher2/PagedViewWidget;->mOriginalImagePadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 76
    iget-object v1, p0, Lcom/android/launcher2/PagedViewWidget;->mOriginalImagePadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 77
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 211
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 213
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 234
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 215
    :pswitch_1
    invoke-direct {p0}, Lcom/android/launcher2/PagedViewWidget;->cleanUpShortPress()V

    goto :goto_0

    .line 218
    :pswitch_2
    invoke-direct {p0}, Lcom/android/launcher2/PagedViewWidget;->checkForShortPress()V

    goto :goto_0

    .line 221
    :pswitch_3
    invoke-direct {p0}, Lcom/android/launcher2/PagedViewWidget;->cleanUpShortPress()V

    goto :goto_0

    .line 213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method setShortPressListener(Lcom/android/launcher2/PagedViewWidget$ShortPressListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/launcher2/PagedViewWidget$ShortPressListener;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/launcher2/PagedViewWidget;->mShortPressListener:Lcom/android/launcher2/PagedViewWidget$ShortPressListener;

    .line 160
    return-void
.end method

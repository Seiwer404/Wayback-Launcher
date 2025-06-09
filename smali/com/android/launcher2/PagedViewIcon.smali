.class public Lcom/android/launcher2/PagedViewIcon;
.super Landroid/widget/TextView;
.source "PagedViewIcon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/PagedViewIcon$PressedCallback;
    }
.end annotation


# static fields
.field private static final PRESS_ALPHA:F = 0.4f

.field private static final TAG:Ljava/lang/String; = "PagedViewIcon"


# instance fields
.field private mIcon:Landroid/graphics/Bitmap;

.field private mLockDrawableState:Z

.field private mPressedCallback:Lcom/android/launcher2/PagedViewIcon$PressedCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/PagedViewIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/PagedViewIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PagedViewIcon;->mLockDrawableState:Z

    .line 53
    return-void
.end method


# virtual methods
.method public applyFromApplicationInfo(Lcom/android/launcher2/ApplicationInfo;ZLcom/android/launcher2/PagedViewIcon$PressedCallback;)V
    .locals 3
    .param p1, "info"    # Lcom/android/launcher2/ApplicationInfo;
    .param p2, "scaleUp"    # Z
    .param p3, "cb"    # Lcom/android/launcher2/PagedViewIcon$PressedCallback;

    .prologue
    const/4 v2, 0x0

    .line 57
    iget-object v0, p1, Lcom/android/launcher2/ApplicationInfo;->iconBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/launcher2/PagedViewIcon;->mIcon:Landroid/graphics/Bitmap;

    .line 58
    iput-object p3, p0, Lcom/android/launcher2/PagedViewIcon;->mPressedCallback:Lcom/android/launcher2/PagedViewIcon$PressedCallback;

    .line 59
    new-instance v0, Lcom/android/launcher2/FastBitmapDrawable;

    iget-object v1, p0, Lcom/android/launcher2/PagedViewIcon;->mIcon:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v2, v0, v2, v2}, Lcom/android/launcher2/PagedViewIcon;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 60
    iget-object v0, p1, Lcom/android/launcher2/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedViewIcon;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedViewIcon;->setTag(Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 83
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewIcon;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedViewIcon;->setAlpha(F)V

    .line 85
    iget-object v0, p0, Lcom/android/launcher2/PagedViewIcon;->mPressedCallback:Lcom/android/launcher2/PagedViewIcon$PressedCallback;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/launcher2/PagedViewIcon;->mPressedCallback:Lcom/android/launcher2/PagedViewIcon$PressedCallback;

    invoke-interface {v0, p0}, Lcom/android/launcher2/PagedViewIcon$PressedCallback;->iconPressed(Lcom/android/launcher2/PagedViewIcon;)V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher2/PagedViewIcon;->mLockDrawableState:Z

    if-nez v0, :cond_0

    .line 89
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedViewIcon;->setAlpha(F)V

    goto :goto_0
.end method

.method public lockDrawableState()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedViewIcon;->mLockDrawableState:Z

    .line 66
    return-void
.end method

.method public resetDrawableState()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PagedViewIcon;->mLockDrawableState:Z

    .line 70
    new-instance v0, Lcom/android/launcher2/PagedViewIcon$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/PagedViewIcon$1;-><init>(Lcom/android/launcher2/PagedViewIcon;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedViewIcon;->post(Ljava/lang/Runnable;)Z

    .line 76
    return-void
.end method

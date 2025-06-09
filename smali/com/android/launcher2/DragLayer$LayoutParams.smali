.class public Lcom/android/launcher2/DragLayer$LayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "DragLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/DragLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public customPosition:Z

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 345
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 339
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/DragLayer$LayoutParams;->customPosition:Z

    .line 346
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 361
    iget v0, p0, Lcom/android/launcher2/DragLayer$LayoutParams;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Lcom/android/launcher2/DragLayer$LayoutParams;->width:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 369
    iget v0, p0, Lcom/android/launcher2/DragLayer$LayoutParams;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 377
    iget v0, p0, Lcom/android/launcher2/DragLayer$LayoutParams;->y:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 357
    iput p1, p0, Lcom/android/launcher2/DragLayer$LayoutParams;->height:I

    .line 358
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 349
    iput p1, p0, Lcom/android/launcher2/DragLayer$LayoutParams;->width:I

    .line 350
    return-void
.end method

.method public setX(I)V
    .locals 0
    .param p1, "x"    # I

    .prologue
    .line 365
    iput p1, p0, Lcom/android/launcher2/DragLayer$LayoutParams;->x:I

    .line 366
    return-void
.end method

.method public setY(I)V
    .locals 0
    .param p1, "y"    # I

    .prologue
    .line 373
    iput p1, p0, Lcom/android/launcher2/DragLayer$LayoutParams;->y:I

    .line 374
    return-void
.end method

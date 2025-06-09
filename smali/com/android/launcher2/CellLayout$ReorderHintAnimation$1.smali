.class Lcom/android/launcher2/CellLayout$ReorderHintAnimation$1;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->animate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/CellLayout$ReorderHintAnimation;


# direct methods
.method constructor <init>(Lcom/android/launcher2/CellLayout$ReorderHintAnimation;)V
    .locals 0

    .prologue
    .line 2332
    iput-object p1, p0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation$1;->this$1:Lcom/android/launcher2/CellLayout$ReorderHintAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 2335
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 2336
    .local v0, "r":F
    iget-object v4, p0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation$1;->this$1:Lcom/android/launcher2/CellLayout$ReorderHintAnimation;

    iget v4, v4, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->finalDeltaX:F

    mul-float/2addr v4, v0

    sub-float v5, v7, v0

    iget-object v6, p0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation$1;->this$1:Lcom/android/launcher2/CellLayout$ReorderHintAnimation;

    iget v6, v6, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->initDeltaX:F

    mul-float/2addr v5, v6

    add-float v2, v4, v5

    .line 2337
    .local v2, "x":F
    iget-object v4, p0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation$1;->this$1:Lcom/android/launcher2/CellLayout$ReorderHintAnimation;

    iget v4, v4, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->finalDeltaY:F

    mul-float/2addr v4, v0

    sub-float v5, v7, v0

    iget-object v6, p0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation$1;->this$1:Lcom/android/launcher2/CellLayout$ReorderHintAnimation;

    iget v6, v6, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->initDeltaY:F

    mul-float/2addr v5, v6

    add-float v3, v4, v5

    .line 2338
    .local v3, "y":F
    iget-object v4, p0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation$1;->this$1:Lcom/android/launcher2/CellLayout$ReorderHintAnimation;

    iget-object v4, v4, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 2339
    iget-object v4, p0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation$1;->this$1:Lcom/android/launcher2/CellLayout$ReorderHintAnimation;

    iget-object v4, v4, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 2340
    iget-object v4, p0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation$1;->this$1:Lcom/android/launcher2/CellLayout$ReorderHintAnimation;

    iget v4, v4, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->finalScale:F

    mul-float/2addr v4, v0

    sub-float v5, v7, v0

    iget-object v6, p0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation$1;->this$1:Lcom/android/launcher2/CellLayout$ReorderHintAnimation;

    iget v6, v6, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->initScale:F

    mul-float/2addr v5, v6

    add-float v1, v4, v5

    .line 2341
    .local v1, "s":F
    iget-object v4, p0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation$1;->this$1:Lcom/android/launcher2/CellLayout$ReorderHintAnimation;

    iget-object v4, v4, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setScaleX(F)V

    .line 2342
    iget-object v4, p0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation$1;->this$1:Lcom/android/launcher2/CellLayout$ReorderHintAnimation;

    iget-object v4, v4, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setScaleY(F)V

    .line 2343
    return-void
.end method

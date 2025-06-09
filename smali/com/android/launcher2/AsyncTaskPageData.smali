.class Lcom/android/launcher2/AsyncTaskPageData;
.super Ljava/lang/Object;
.source "AppsCustomizePagedView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/AsyncTaskPageData$Type;
    }
.end annotation


# instance fields
.field doInBackgroundCallback:Lcom/android/launcher2/AsyncTaskCallback;

.field generatedImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field maxImageHeight:I

.field maxImageWidth:I

.field page:I

.field postExecuteCallback:Lcom/android/launcher2/AsyncTaskCallback;

.field sourceImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILjava/util/ArrayList;IILcom/android/launcher2/AsyncTaskCallback;Lcom/android/launcher2/AsyncTaskCallback;)V
    .locals 1
    .param p1, "p"    # I
    .param p3, "cw"    # I
    .param p4, "ch"    # I
    .param p5, "bgR"    # Lcom/android/launcher2/AsyncTaskCallback;
    .param p6, "postR"    # Lcom/android/launcher2/AsyncTaskCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;II",
            "Lcom/android/launcher2/AsyncTaskCallback;",
            "Lcom/android/launcher2/AsyncTaskCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 97
    .local p2, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput p1, p0, Lcom/android/launcher2/AsyncTaskPageData;->page:I

    .line 99
    iput-object p2, p0, Lcom/android/launcher2/AsyncTaskPageData;->items:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    .line 101
    iput p3, p0, Lcom/android/launcher2/AsyncTaskPageData;->maxImageWidth:I

    .line 102
    iput p4, p0, Lcom/android/launcher2/AsyncTaskPageData;->maxImageHeight:I

    .line 103
    iput-object p5, p0, Lcom/android/launcher2/AsyncTaskPageData;->doInBackgroundCallback:Lcom/android/launcher2/AsyncTaskCallback;

    .line 104
    iput-object p6, p0, Lcom/android/launcher2/AsyncTaskPageData;->postExecuteCallback:Lcom/android/launcher2/AsyncTaskCallback;

    .line 105
    return-void
.end method

.method constructor <init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher2/AsyncTaskCallback;Lcom/android/launcher2/AsyncTaskCallback;)V
    .locals 1
    .param p1, "p"    # I
    .param p4, "bgR"    # Lcom/android/launcher2/AsyncTaskCallback;
    .param p5, "postR"    # Lcom/android/launcher2/AsyncTaskCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/android/launcher2/AsyncTaskCallback;",
            "Lcom/android/launcher2/AsyncTaskCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 87
    .local p2, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .local p3, "si":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput p1, p0, Lcom/android/launcher2/AsyncTaskPageData;->page:I

    .line 89
    iput-object p2, p0, Lcom/android/launcher2/AsyncTaskPageData;->items:Ljava/util/ArrayList;

    .line 90
    iput-object p3, p0, Lcom/android/launcher2/AsyncTaskPageData;->sourceImages:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/AsyncTaskPageData;->maxImageHeight:I

    iput v0, p0, Lcom/android/launcher2/AsyncTaskPageData;->maxImageWidth:I

    .line 93
    iput-object p4, p0, Lcom/android/launcher2/AsyncTaskPageData;->doInBackgroundCallback:Lcom/android/launcher2/AsyncTaskCallback;

    .line 94
    iput-object p5, p0, Lcom/android/launcher2/AsyncTaskPageData;->postExecuteCallback:Lcom/android/launcher2/AsyncTaskCallback;

    .line 95
    return-void
.end method


# virtual methods
.method cleanup(Z)V
    .locals 3
    .param p1, "cancelled"    # Z

    .prologue
    .line 108
    iget-object v2, p0, Lcom/android/launcher2/AsyncTaskPageData;->sourceImages:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 109
    if-eqz p1, :cond_0

    .line 110
    iget-object v2, p0, Lcom/android/launcher2/AsyncTaskPageData;->sourceImages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 111
    .local v0, "b":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 114
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/AsyncTaskPageData;->sourceImages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 116
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 117
    if-eqz p1, :cond_2

    .line 118
    iget-object v2, p0, Lcom/android/launcher2/AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 119
    .restart local v0    # "b":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 122
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 124
    :cond_3
    return-void
.end method

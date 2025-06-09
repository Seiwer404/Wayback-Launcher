.class Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;
.super Landroid/os/AsyncTask;
.source "WallpaperChooserDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/WallpaperChooserDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field mOptions:Landroid/graphics/BitmapFactory$Options;

.field final synthetic this$0:Lcom/android/launcher2/WallpaperChooserDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/launcher2/WallpaperChooserDialogFragment;)V
    .locals 2

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->this$0:Lcom/android/launcher2/WallpaperChooserDialogFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 271
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 272
    iget-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 273
    iget-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 274
    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    .line 314
    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 315
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    const/4 v2, 0x0

    .line 278
    invoke-virtual {p0}, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v2

    .line 283
    :goto_0
    return-object v1

    .line 280
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->this$0:Lcom/android/launcher2/WallpaperChooserDialogFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v1, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->this$0:Lcom/android/launcher2/WallpaperChooserDialogFragment;

    invoke-static {v1}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->access$200(Lcom/android/launcher2/WallpaperChooserDialogFragment;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v4, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v3, v1, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 282
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/OutOfMemoryError;
    move-object v1, v2

    .line 283
    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 267
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 289
    if-nez p1, :cond_0

    .line 310
    :goto_0
    return-void

    .line 291
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iget-boolean v1, v1, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v1, :cond_3

    .line 293
    iget-object v1, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->this$0:Lcom/android/launcher2/WallpaperChooserDialogFragment;

    invoke-static {v1}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->access$300(Lcom/android/launcher2/WallpaperChooserDialogFragment;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 294
    iget-object v1, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->this$0:Lcom/android/launcher2/WallpaperChooserDialogFragment;

    invoke-static {v1}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->access$300(Lcom/android/launcher2/WallpaperChooserDialogFragment;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 297
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->this$0:Lcom/android/launcher2/WallpaperChooserDialogFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 298
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 299
    iget-object v1, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->this$0:Lcom/android/launcher2/WallpaperChooserDialogFragment;

    invoke-static {v1, p1}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->access$302(Lcom/android/launcher2/WallpaperChooserDialogFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 300
    iget-object v1, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->this$0:Lcom/android/launcher2/WallpaperChooserDialogFragment;

    invoke-static {v1}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->access$400(Lcom/android/launcher2/WallpaperChooserDialogFragment;)Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperDrawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 301
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 306
    :goto_1
    iget-object v1, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->this$0:Lcom/android/launcher2/WallpaperChooserDialogFragment;

    invoke-static {v1, v2}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->access$502(Lcom/android/launcher2/WallpaperChooserDialogFragment;Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;)Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;

    goto :goto_0

    .line 303
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->this$0:Lcom/android/launcher2/WallpaperChooserDialogFragment;

    invoke-static {v1, v2}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->access$302(Lcom/android/launcher2/WallpaperChooserDialogFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 304
    iget-object v1, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->this$0:Lcom/android/launcher2/WallpaperChooserDialogFragment;

    invoke-static {v1}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->access$400(Lcom/android/launcher2/WallpaperChooserDialogFragment;)Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperDrawable;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 308
    .end local v0    # "v":Landroid/view/View;
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 267
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

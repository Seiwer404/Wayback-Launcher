.class Lcom/android/launcher2/LauncherModel$LoaderTask$3;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel$LoaderTask;->sortWorkspaceItemsSpatially(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/launcher2/ItemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$LoaderTask;)V
    .locals 0

    .prologue
    .line 1588
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$3;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/ItemInfo;)I
    .locals 12
    .param p1, "lhs"    # Lcom/android/launcher2/ItemInfo;
    .param p2, "rhs"    # Lcom/android/launcher2/ItemInfo;

    .prologue
    .line 1591
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v0

    .line 1592
    .local v0, "cellCountX":I
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v1

    .line 1593
    .local v1, "cellCountY":I
    mul-int v7, v0, v1

    .line 1594
    .local v7, "screenOffset":I
    mul-int/lit8 v2, v7, 0x6

    .line 1595
    .local v2, "containerOffset":I
    iget-wide v8, p1, Lcom/android/launcher2/ItemInfo;->container:J

    int-to-long v10, v2

    mul-long/2addr v8, v10

    iget v10, p1, Lcom/android/launcher2/ItemInfo;->screen:I

    mul-int/2addr v10, v7

    int-to-long v10, v10

    add-long/2addr v8, v10

    iget v10, p1, Lcom/android/launcher2/ItemInfo;->cellY:I

    mul-int/2addr v10, v0

    int-to-long v10, v10

    add-long/2addr v8, v10

    iget v10, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    int-to-long v10, v10

    add-long v3, v8, v10

    .line 1597
    .local v3, "lr":J
    iget-wide v8, p2, Lcom/android/launcher2/ItemInfo;->container:J

    int-to-long v10, v2

    mul-long/2addr v8, v10

    iget v10, p2, Lcom/android/launcher2/ItemInfo;->screen:I

    mul-int/2addr v10, v7

    int-to-long v10, v10

    add-long/2addr v8, v10

    iget v10, p2, Lcom/android/launcher2/ItemInfo;->cellY:I

    mul-int/2addr v10, v0

    int-to-long v10, v10

    add-long/2addr v8, v10

    iget v10, p2, Lcom/android/launcher2/ItemInfo;->cellX:I

    int-to-long v10, v10

    add-long v5, v8, v10

    .line 1599
    .local v5, "rr":J
    sub-long v8, v3, v5

    long-to-int v8, v8

    return v8
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1588
    check-cast p1, Lcom/android/launcher2/ItemInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/launcher2/ItemInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/LauncherModel$LoaderTask$3;->compare(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/ItemInfo;)I

    move-result v0

    return v0
.end method

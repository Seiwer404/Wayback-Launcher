.class public final Lcom/android/launcher/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AppsCustomizePagedView:[I

.field public static final AppsCustomizePagedView_clingFocusedX:I = 0x6

.field public static final AppsCustomizePagedView_clingFocusedY:I = 0x7

.field public static final AppsCustomizePagedView_maxAppCellCountX:I = 0x0

.field public static final AppsCustomizePagedView_maxAppCellCountY:I = 0x1

.field public static final AppsCustomizePagedView_widgetCellHeightGap:I = 0x3

.field public static final AppsCustomizePagedView_widgetCellWidthGap:I = 0x2

.field public static final AppsCustomizePagedView_widgetCountX:I = 0x4

.field public static final AppsCustomizePagedView_widgetCountY:I = 0x5

.field public static final CellLayout:[I

.field public static final CellLayout_cellHeight:I = 0x1

.field public static final CellLayout_cellWidth:I = 0x0

.field public static final CellLayout_heightGap:I = 0x3

.field public static final CellLayout_maxGap:I = 0x4

.field public static final CellLayout_widthGap:I = 0x2

.field public static final Cling:[I

.field public static final Cling_drawIdentifier:I = 0x0

.field public static final CustomClingText:[I

.field public static final CustomClingTitleText:[I

.field public static final DrawableStateProxyView:[I

.field public static final DrawableStateProxyView_sourceViewId:I = 0x0

.field public static final Extra:[I

.field public static final Extra_key:I = 0x0

.field public static final Extra_value:I = 0x1

.field public static final Favorite:[I

.field public static final Favorite_className:I = 0x0

.field public static final Favorite_container:I = 0x2

.field public static final Favorite_icon:I = 0x8

.field public static final Favorite_packageName:I = 0x1

.field public static final Favorite_screen:I = 0x3

.field public static final Favorite_spanX:I = 0x6

.field public static final Favorite_spanY:I = 0x7

.field public static final Favorite_title:I = 0x9

.field public static final Favorite_uri:I = 0xa

.field public static final Favorite_x:I = 0x4

.field public static final Favorite_y:I = 0x5

.field public static final HandleView:[I

.field public static final HandleView_direction:I = 0x0

.field public static final HolographicLinearLayout:[I

.field public static final HolographicLinearLayout_sourceImageViewId:I = 0x0

.field public static final Hotseat:[I

.field public static final Hotseat_cellCountX:I = 0x0

.field public static final Hotseat_cellCountY:I = 0x1

.field public static final PagedView:[I

.field public static final PagedView_pageLayoutHeightGap:I = 0x1

.field public static final PagedView_pageLayoutPaddingBottom:I = 0x3

.field public static final PagedView_pageLayoutPaddingLeft:I = 0x4

.field public static final PagedView_pageLayoutPaddingRight:I = 0x5

.field public static final PagedView_pageLayoutPaddingTop:I = 0x2

.field public static final PagedView_pageLayoutWidthGap:I = 0x0

.field public static final PagedView_pageSpacing:I = 0x6

.field public static final PagedView_scrollIndicatorPaddingLeft:I = 0x7

.field public static final PagedView_scrollIndicatorPaddingRight:I = 0x8

.field public static final StrokedTextView:[I

.field public static final StrokedTextView_strokeColor:I = 0x0

.field public static final StrokedTextView_strokeTextColor:I = 0x1

.field public static final StrokedTextView_strokeWidth:I = 0x2

.field public static final Workspace:[I

.field public static final Workspace_cellCountX:I = 0x1

.field public static final Workspace_cellCountY:I = 0x2

.field public static final Workspace_defaultScreen:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1422
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/launcher/R$styleable;->AppsCustomizePagedView:[I

    .line 1579
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/launcher/R$styleable;->CellLayout:[I

    .line 1684
    new-array v0, v3, [I

    const v1, 0x7f010002

    aput v1, v0, v2

    sput-object v0, Lcom/android/launcher/R$styleable;->Cling:[I

    .line 1705
    new-array v0, v2, [I

    sput-object v0, Lcom/android/launcher/R$styleable;->CustomClingText:[I

    .line 1710
    new-array v0, v2, [I

    sput-object v0, Lcom/android/launcher/R$styleable;->CustomClingTitleText:[I

    .line 1724
    new-array v0, v3, [I

    const v1, 0x7f010001

    aput v1, v0, v2

    sput-object v0, Lcom/android/launcher/R$styleable;->DrawableStateProxyView:[I

    .line 1755
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/launcher/R$styleable;->Extra:[I

    .line 1816
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/launcher/R$styleable;->Favorite:[I

    .line 1978
    new-array v0, v3, [I

    const/high16 v1, 0x7f010000

    aput v1, v0, v2

    sput-object v0, Lcom/android/launcher/R$styleable;->HandleView:[I

    .line 2010
    new-array v0, v3, [I

    const v1, 0x7f01000e

    aput v1, v0, v2

    sput-object v0, Lcom/android/launcher/R$styleable;->HolographicLinearLayout:[I

    .line 2042
    new-array v0, v4, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/launcher/R$styleable;->Hotseat:[I

    .line 2104
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/launcher/R$styleable;->PagedView:[I

    .line 2275
    new-array v0, v5, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/launcher/R$styleable;->StrokedTextView:[I

    .line 2343
    new-array v0, v5, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/launcher/R$styleable;->Workspace:[I

    return-void

    .line 1422
    nop

    :array_0
    .array-data 4
        0x7f010018
        0x7f010019
        0x7f01001a
        0x7f01001b
        0x7f01001c
        0x7f01001d
        0x7f01001e
        0x7f01001f
    .end array-data

    .line 1579
    :array_1
    .array-data 4
        0x7f010006
        0x7f010007
        0x7f010008
        0x7f010009
        0x7f01000a
    .end array-data

    .line 1755
    :array_2
    .array-data 4
        0x7f01002b
        0x7f01002c
    .end array-data

    .line 1816
    :array_3
    .array-data 4
        0x7f010020
        0x7f010021
        0x7f010022
        0x7f010023
        0x7f010024
        0x7f010025
        0x7f010026
        0x7f010027
        0x7f010028
        0x7f010029
        0x7f01002a
    .end array-data

    .line 2042
    :array_4
    .array-data 4
        0x7f010004
        0x7f010005
    .end array-data

    .line 2104
    :array_5
    .array-data 4
        0x7f01000f
        0x7f010010
        0x7f010011
        0x7f010012
        0x7f010013
        0x7f010014
        0x7f010015
        0x7f010016
        0x7f010017
    .end array-data

    .line 2275
    :array_6
    .array-data 4
        0x7f01000b
        0x7f01000c
        0x7f01000d
    .end array-data

    .line 2343
    :array_7
    .array-data 4
        0x7f010003
        0x7f010004
        0x7f010005
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

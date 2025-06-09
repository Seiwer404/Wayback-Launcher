.class public final Lcom/android/launcher2/Launcher;
.super Landroid/app/Activity;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher2/LauncherModel$Callbacks;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/Launcher$AppWidgetResetObserver;,
        Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;,
        Lcom/android/launcher2/Launcher$LocaleConfiguration;,
        Lcom/android/launcher2/Launcher$PendingAddArguments;,
        Lcom/android/launcher2/Launcher$State;
    }
.end annotation


# static fields
.field static final APPWIDGET_HOST_ID:I = 0x400

.field static final DEBUG_STRICT_MODE:Z = false

.field static final DEBUG_WIDGETS:Z = false

.field static final DEFAULT_SCREEN:I = 0x2

.field private static final DISMISS_CLING_DURATION:I = 0xfa

.field static final DUMP_STATE_PROPERTY:Ljava/lang/String; = "launcher_dump_state"

.field private static final EXIT_SPRINGLOADED_MODE_LONG_TIMEOUT:I = 0x258

.field private static final EXIT_SPRINGLOADED_MODE_SHORT_TIMEOUT:I = 0x12c

.field static final EXTRA_SHORTCUT_DUPLICATE:Ljava/lang/String; = "duplicate"

.field static final FORCE_ENABLE_ROTATION_PROPERTY:Ljava/lang/String; = "launcher_force_rotate"

.field static final INTENT_EXTRA_IGNORE_LAUNCH_ANIMATION:Ljava/lang/String; = "com.android.launcher.intent.extra.shortcut.INGORE_LAUNCH_ANIMATION"

.field static final LOGD:Z = false

.field private static final MENU_GROUP_WALLPAPER:I = 0x1

.field private static final MENU_HELP:I = 0x5

.field private static final MENU_MANAGE_APPS:I = 0x3

.field private static final MENU_SYSTEM_SETTINGS:I = 0x4

.field private static final MENU_WALLPAPER_SETTINGS:I = 0x2

.field private static NEW_APPS_ANIMATION_INACTIVE_TIMEOUT_SECONDS:I = 0x0

.field private static final PREFERENCES:Ljava/lang/String; = "launcher.preferences"

.field static final PROFILE_STARTUP:Z = false

.field private static final REQUEST_BIND_APPWIDGET:I = 0xb

.field private static final REQUEST_CREATE_APPWIDGET:I = 0x5

.field private static final REQUEST_CREATE_SHORTCUT:I = 0x1

.field private static final REQUEST_PICK_APPLICATION:I = 0x6

.field private static final REQUEST_PICK_APPWIDGET:I = 0x9

.field private static final REQUEST_PICK_SHORTCUT:I = 0x7

.field private static final REQUEST_PICK_WALLPAPER:I = 0xa

.field private static final RUNTIME_STATE:Ljava/lang/String; = "launcher.state"

.field private static final RUNTIME_STATE_CURRENT_SCREEN:Ljava/lang/String; = "launcher.current_screen"

.field private static final RUNTIME_STATE_PENDING_ADD_CELL_X:Ljava/lang/String; = "launcher.add_cell_x"

.field private static final RUNTIME_STATE_PENDING_ADD_CELL_Y:Ljava/lang/String; = "launcher.add_cell_y"

.field private static final RUNTIME_STATE_PENDING_ADD_CONTAINER:Ljava/lang/String; = "launcher.add_container"

.field private static final RUNTIME_STATE_PENDING_ADD_SCREEN:Ljava/lang/String; = "launcher.add_screen"

.field private static final RUNTIME_STATE_PENDING_ADD_SPAN_X:Ljava/lang/String; = "launcher.add_span_x"

.field private static final RUNTIME_STATE_PENDING_ADD_SPAN_Y:Ljava/lang/String; = "launcher.add_span_y"

.field private static final RUNTIME_STATE_PENDING_ADD_WIDGET_INFO:Ljava/lang/String; = "launcher.add_widget_info"

.field private static final RUNTIME_STATE_PENDING_FOLDER_RENAME:Ljava/lang/String; = "launcher.rename_folder"

.field private static final RUNTIME_STATE_PENDING_FOLDER_RENAME_ID:Ljava/lang/String; = "launcher.rename_folder_id"

.field static final SCREEN_COUNT:I = 0x5

.field private static final SHOW_CLING_DURATION:I = 0x226

.field static final TAG:Ljava/lang/String; = "Launcher"

.field private static final TOOLBAR_ICON_METADATA_NAME:Ljava/lang/String; = "com.android.launcher.toolbar_icon"

.field private static final TOOLBAR_SEARCH_ICON_METADATA_NAME:Ljava/lang/String; = "com.android.launcher.toolbar_search_icon"

.field private static final TOOLBAR_VOICE_SEARCH_ICON_METADATA_NAME:Ljava/lang/String; = "com.android.launcher.toolbar_voice_search_icon"

.field private static sAppMarketIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

.field static final sDumpLogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sFolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sForceEnableRotation:Z

.field private static sGlobalSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

.field private static sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

.field private static final sLock:Ljava/lang/Object;

.field private static sPausedFromUserAction:Z

.field private static sPendingAddList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/Launcher$PendingAddArguments;",
            ">;"
        }
    .end annotation
.end field

.field private static sScreen:I

.field private static sVoiceSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;


# instance fields
.field private final ADVANCE_MSG:I

.field private final mAdvanceInterval:I

.field private final mAdvanceStagger:I

.field private mAllAppsButton:Landroid/view/View;

.field private mAppMarketIntent:Landroid/content/Intent;

.field private mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

.field private mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

.field private mAttached:Z

.field private mAutoAdvanceRunning:Z

.field private mAutoAdvanceSentTime:J

.field private mAutoAdvanceTimeLeft:J

.field private mBlackBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBuildLayersRunnable:Ljava/lang/Runnable;

.field private final mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

.field private mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

.field private mDividerAnimator:Landroid/animation/AnimatorSet;

.field private mDockDivider:Landroid/view/View;

.field private mDragController:Lcom/android/launcher2/DragController;

.field private mDragLayer:Lcom/android/launcher2/DragLayer;

.field private mFolderIconBitmap:Landroid/graphics/Bitmap;

.field private mFolderIconCanvas:Landroid/graphics/Canvas;

.field private mFolderIconImageView:Landroid/widget/ImageView;

.field private mFolderInfo:Lcom/android/launcher2/FolderInfo;

.field private final mHandler:Landroid/os/Handler;

.field private mHideFromAccessibilityHelper:Lcom/android/launcher2/HideFromAccessibilityHelper;

.field private mHotseat:Lcom/android/launcher2/Hotseat;

.field private mIconCache:Lcom/android/launcher2/IconCache;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLauncherView:Landroid/view/View;

.field private mModel:Lcom/android/launcher2/LauncherModel;

.field private mNewShortcutAnimatePage:I

.field private mNewShortcutAnimateViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mOnResumeNeedsLoad:Z

.field private mOnResumeState:Lcom/android/launcher2/Launcher$State;

.field private mPaused:Z

.field private mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

.field private mPendingAddWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field private mQsbDivider:Landroid/view/View;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRectForFolderAnimation:Landroid/graphics/Rect;

.field private final mRestoreScreenOrientationDelay:I

.field private mRestoring:Z

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSavedState:Landroid/os/Bundle;

.field private mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private mState:Lcom/android/launcher2/Launcher$State;

.field private mStateAnimation:Landroid/animation/AnimatorSet;

.field private final mSynchronouslyBoundPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpAddItemCellCoordinates:[I

.field private mUserPresent:Z

.field private mVisible:Z

.field private mWaitingForResult:Z

.field private mWaitingForResume:Lcom/android/launcher2/BubbleTextView;

.field private final mWidgetObserver:Landroid/database/ContentObserver;

.field private mWidgetsToAdvance:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkspace:Lcom/android/launcher2/Workspace;

.field private mWorkspaceBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mWorkspaceLoading:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 200
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher2/Launcher;->sLock:Ljava/lang/Object;

    .line 201
    sput v1, Lcom/android/launcher2/Launcher;->sScreen:I

    .line 204
    const/16 v0, 0xa

    sput v0, Lcom/android/launcher2/Launcher;->NEW_APPS_ANIMATION_INACTIVE_TIMEOUT_SECONDS:I

    .line 253
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/Launcher;->sPausedFromUserAction:Z

    .line 263
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    .line 265
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/Launcher;->sFolders:Ljava/util/HashMap;

    .line 283
    new-array v0, v1, [Landroid/graphics/drawable/Drawable$ConstantState;

    sput-object v0, Lcom/android/launcher2/Launcher;->sGlobalSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    .line 284
    new-array v0, v1, [Landroid/graphics/drawable/Drawable$ConstantState;

    sput-object v0, Lcom/android/launcher2/Launcher;->sVoiceSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    .line 285
    new-array v0, v1, [Landroid/graphics/drawable/Drawable$ConstantState;

    sput-object v0, Lcom/android/launcher2/Launcher;->sAppMarketIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/Launcher;->sPendingAddList:Ljava/util/ArrayList;

    .line 323
    const-string v0, "launcher_force_rotate"

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->isPropertyEnabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/Launcher;->sForceEnableRotation:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 119
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 190
    sget-object v0, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    .line 206
    new-instance v0, Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;

    invoke-direct {v0, p0, v3}, Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Launcher$1;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    .line 208
    new-instance v0, Lcom/android/launcher2/Launcher$AppWidgetResetObserver;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Launcher$AppWidgetResetObserver;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    .line 222
    new-instance v0, Lcom/android/launcher2/ItemInfo;

    invoke-direct {v0}, Lcom/android/launcher2/ItemInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    .line 225
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mTmpAddItemCellCoordinates:[I

    .line 235
    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mAutoAdvanceRunning:Z

    .line 241
    sget-object v0, Lcom/android/launcher2/Launcher$State;->NONE:Lcom/android/launcher2/Launcher$State;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mOnResumeState:Lcom/android/launcher2/Launcher$State;

    .line 243
    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 245
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    .line 247
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    .line 259
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mUserPresent:Z

    .line 260
    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mVisible:Z

    .line 261
    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mAttached:Z

    .line 267
    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mAppMarketIntent:Landroid/content/Intent;

    .line 270
    iput v1, p0, Lcom/android/launcher2/Launcher;->ADVANCE_MSG:I

    .line 271
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/android/launcher2/Launcher;->mAdvanceInterval:I

    .line 272
    const/16 v0, 0xfa

    iput v0, p0, Lcom/android/launcher2/Launcher;->mAdvanceStagger:I

    .line 274
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher2/Launcher;->mAutoAdvanceTimeLeft:J

    .line 275
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    .line 280
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/launcher2/Launcher;->mRestoreScreenOrientationDelay:I

    .line 290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mSynchronouslyBoundPages:Ljava/util/ArrayList;

    .line 300
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/Launcher;->mNewShortcutAnimatePage:I

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mNewShortcutAnimateViews:Ljava/util/ArrayList;

    .line 305
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mRectForFolderAnimation:Landroid/graphics/Rect;

    .line 309
    new-instance v0, Lcom/android/launcher2/HideFromAccessibilityHelper;

    invoke-direct {v0}, Lcom/android/launcher2/HideFromAccessibilityHelper;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mHideFromAccessibilityHelper:Lcom/android/launcher2/HideFromAccessibilityHelper;

    .line 312
    new-instance v0, Lcom/android/launcher2/Launcher$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Launcher$1;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mBuildLayersRunnable:Ljava/lang/Runnable;

    .line 1212
    new-instance v0, Lcom/android/launcher2/Launcher$7;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Launcher$7;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1320
    new-instance v0, Lcom/android/launcher2/Launcher$9;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Launcher$9;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    .line 3242
    return-void
.end method

.method private acceptFilter()Z
    .locals 2

    .prologue
    .line 810
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 812
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Workspace;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/Launcher;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/LauncherAppWidgetHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/Launcher;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/launcher2/Launcher;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/Launcher;
    .param p1, "x1"    # Z

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/android/launcher2/Launcher;->mUserPresent:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/DragLayer;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/Launcher;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/Launcher;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateRunning()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/AppsCustomizeTabHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/Launcher;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/launcher2/Launcher;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/Launcher;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mBuildLayersRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/launcher2/Launcher;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/Launcher;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/launcher2/Launcher;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/Launcher;
    .param p1, "x1"    # J

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/Launcher;->sendAdvanceMessage(J)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Launcher$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/Launcher;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Launcher$State;)Lcom/android/launcher2/Launcher$State;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/Launcher;
    .param p1, "x1"    # Lcom/android/launcher2/Launcher$State;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/launcher2/Launcher;->mOnResumeState:Lcom/android/launcher2/Launcher$State;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/android/launcher2/Launcher;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/Launcher;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/launcher2/Launcher;Landroid/view/View;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/Launcher;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # F

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionStep(Landroid/view/View;F)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/launcher2/Launcher;Landroid/view/View;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/Launcher;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 119
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZ)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/SearchDropTargetBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/Launcher;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/launcher2/Launcher;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/Launcher;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/launcher2/Launcher;Landroid/view/View;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/Launcher;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # F

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/Launcher;->setPivotsForZoom(Landroid/view/View;F)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/launcher2/Launcher;Landroid/view/View;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/Launcher;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 119
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/AppsCustomizePagedView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/Launcher;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/Launcher;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->onAppWidgetReset()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/launcher2/Launcher;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/Launcher;
    .param p1, "x1"    # Z

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/launcher2/Launcher;->runNewAppsAnimation(Z)V

    return-void
.end method

.method static synthetic access$300(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/android/launcher2/Launcher$LocaleConfiguration;

    .prologue
    .line 119
    invoke-static {p0, p1}, Lcom/android/launcher2/Launcher;->readConfiguration(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/launcher2/Launcher;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/Launcher;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/launcher2/Launcher$LocaleConfiguration;)Lcom/android/launcher2/Launcher$LocaleConfiguration;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/Launcher$LocaleConfiguration;

    .prologue
    .line 119
    sput-object p0, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/Launcher;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->checkForLocaleChange()V

    return-void
.end method

.method static synthetic access$600(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/android/launcher2/Launcher$LocaleConfiguration;

    .prologue
    .line 119
    invoke-static {p0, p1}, Lcom/android/launcher2/Launcher;->writeConfiguration(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/ItemInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/Launcher;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/launcher2/Launcher;IJILandroid/appwidget/AppWidgetHostView;Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/Launcher;
    .param p1, "x1"    # I
    .param p2, "x2"    # J
    .param p4, "x3"    # I
    .param p5, "x4"    # Landroid/appwidget/AppWidgetHostView;
    .param p6, "x5"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 119
    invoke-direct/range {p0 .. p6}, Lcom/android/launcher2/Launcher;->completeAddAppWidget(IJILandroid/appwidget/AppWidgetHostView;Landroid/appwidget/AppWidgetProviderInfo;)V

    return-void
.end method

.method private canRunNewAppsAnimation()Z
    .locals 6

    .prologue
    .line 3479
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v4}, Lcom/android/launcher2/DragController;->getLastGestureUpTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 3480
    .local v0, "diff":J
    sget v2, Lcom/android/launcher2/Launcher;->NEW_APPS_ANIMATION_INACTIVE_TIMEOUT_SECONDS:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkForLocaleChange()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 462
    sget-object v9, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    if-nez v9, :cond_1

    .line 463
    new-instance v9, Lcom/android/launcher2/Launcher$2;

    invoke-direct {v9, p0}, Lcom/android/launcher2/Launcher$2;-><init>(Lcom/android/launcher2/Launcher;)V

    new-array v10, v2, [Ljava/lang/Void;

    invoke-virtual {v9, v10}, Lcom/android/launcher2/Launcher$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 480
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 482
    .local v0, "configuration":Landroid/content/res/Configuration;
    sget-object v9, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    iget-object v6, v9, Lcom/android/launcher2/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 483
    .local v6, "previousLocale":Ljava/lang/String;
    iget-object v9, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 485
    .local v1, "locale":Ljava/lang/String;
    sget-object v9, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    iget v7, v9, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mcc:I

    .line 486
    .local v7, "previousMcc":I
    iget v4, v0, Landroid/content/res/Configuration;->mcc:I

    .line 488
    .local v4, "mcc":I
    sget-object v9, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    iget v8, v9, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mnc:I

    .line 489
    .local v8, "previousMnc":I
    iget v5, v0, Landroid/content/res/Configuration;->mnc:I

    .line 491
    .local v5, "mnc":I
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-ne v4, v7, :cond_2

    if-eq v5, v8, :cond_3

    :cond_2
    const/4 v2, 0x1

    .line 493
    .local v2, "localeChanged":Z
    :cond_3
    if-eqz v2, :cond_0

    .line 494
    sget-object v9, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    iput-object v1, v9, Lcom/android/launcher2/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 495
    sget-object v9, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    iput v4, v9, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mcc:I

    .line 496
    sget-object v9, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    iput v5, v9, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mnc:I

    .line 498
    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v9}, Lcom/android/launcher2/IconCache;->flush()V

    .line 500
    sget-object v3, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    .line 501
    .local v3, "localeConfiguration":Lcom/android/launcher2/Launcher$LocaleConfiguration;
    new-instance v9, Lcom/android/launcher2/Launcher$3;

    const-string v10, "WriteLocaleConfiguration"

    invoke-direct {v9, p0, v10, v3}, Lcom/android/launcher2/Launcher$3;-><init>(Lcom/android/launcher2/Launcher;Ljava/lang/String;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V

    invoke-virtual {v9}, Lcom/android/launcher2/Launcher$3;->start()V

    goto :goto_0
.end method

.method private clearTypedText()V
    .locals 2

    .prologue
    .line 847
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 848
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 849
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 850
    return-void
.end method

.method private completeAdd(Lcom/android/launcher2/Launcher$PendingAddArguments;)Z
    .locals 8
    .param p1, "args"    # Lcom/android/launcher2/Launcher$PendingAddArguments;

    .prologue
    const/4 v5, 0x0

    .line 589
    const/4 v7, 0x0

    .line 590
    .local v7, "result":Z
    iget v0, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->requestCode:I

    packed-switch v0, :pswitch_data_0

    .line 615
    :goto_0
    :pswitch_0
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->resetAddInfo()V

    .line 616
    return v7

    .line 592
    :pswitch_1
    iget-object v1, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->intent:Landroid/content/Intent;

    iget-wide v2, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->container:J

    iget v4, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->screen:I

    iget v5, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->cellX:I

    iget v6, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->cellY:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/Launcher;->completeAddApplication(Landroid/content/Intent;JIII)V

    goto :goto_0

    .line 596
    :pswitch_2
    iget-object v0, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->processShortcut(Landroid/content/Intent;)V

    goto :goto_0

    .line 599
    :pswitch_3
    iget-object v1, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->intent:Landroid/content/Intent;

    iget-wide v2, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->container:J

    iget v4, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->screen:I

    iget v5, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->cellX:I

    iget v6, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->cellY:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/Launcher;->completeAddShortcut(Landroid/content/Intent;JIII)V

    .line 601
    const/4 v7, 0x1

    .line 602
    goto :goto_0

    .line 604
    :pswitch_4
    iget-object v0, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->intent:Landroid/content/Intent;

    const-string v2, "appWidgetId"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 605
    .local v1, "appWidgetId":I
    iget-wide v2, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->container:J

    iget v4, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->screen:I

    move-object v0, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/Launcher;->completeAddAppWidget(IJILandroid/appwidget/AppWidgetHostView;Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 606
    const/4 v7, 0x1

    .line 607
    goto :goto_0

    .line 590
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private completeAddAppWidget(IJILandroid/appwidget/AppWidgetHostView;Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 30
    .param p1, "appWidgetId"    # I
    .param p2, "container"    # J
    .param p4, "screen"    # I
    .param p5, "hostView"    # Landroid/appwidget/AppWidgetHostView;
    .param p6, "appWidgetInfo"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 1130
    if-nez p6, :cond_0

    .line 1131
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p6

    .line 1135
    :cond_0
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/Launcher;->getCellLayout(JI)Lcom/android/launcher2/CellLayout;

    move-result-object v4

    .line 1137
    .local v4, "layout":Lcom/android/launcher2/CellLayout;
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-static {v0, v1}, Lcom/android/launcher2/Launcher;->getMinSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v26

    .line 1138
    .local v26, "minSpanXY":[I
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-static {v0, v1}, Lcom/android/launcher2/Launcher;->getSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v28

    .line 1143
    .local v28, "spanXY":[I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/Launcher;->mTmpAddItemCellCoordinates:[I

    .line 1144
    .local v11, "cellXY":[I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget-object v0, v5, Lcom/android/launcher2/ItemInfo;->dropPos:[I

    move-object/from16 v29, v0

    .line 1145
    .local v29, "touchXY":[I
    const/4 v5, 0x2

    new-array v12, v5, [I

    .line 1146
    .local v12, "finalSpan":[I
    const/16 v25, 0x0

    .line 1147
    .local v25, "foundCellSpan":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v5, v5, Lcom/android/launcher2/ItemInfo;->cellX:I

    if-ltz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v5, v5, Lcom/android/launcher2/ItemInfo;->cellY:I

    if-ltz v5, :cond_2

    .line 1148
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v6, v6, Lcom/android/launcher2/ItemInfo;->cellX:I

    aput v6, v11, v5

    .line 1149
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v6, v6, Lcom/android/launcher2/ItemInfo;->cellY:I

    aput v6, v11, v5

    .line 1150
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v6, v6, Lcom/android/launcher2/ItemInfo;->spanX:I

    aput v6, v28, v5

    .line 1151
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v6, v6, Lcom/android/launcher2/ItemInfo;->spanY:I

    aput v6, v28, v5

    .line 1152
    const/16 v25, 0x1

    .line 1165
    :goto_0
    if-nez v25, :cond_5

    .line 1166
    const/4 v5, -0x1

    move/from16 v0, p1

    if-eq v0, v5, :cond_1

    .line 1169
    new-instance v5, Lcom/android/launcher2/Launcher$6;

    const-string v6, "deleteAppWidgetId"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v5, v0, v6, v1}, Lcom/android/launcher2/Launcher$6;-><init>(Lcom/android/launcher2/Launcher;Ljava/lang/String;I)V

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher$6;->start()V

    .line 1175
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher2/Launcher;->showOutOfSpaceMessage(Z)V

    .line 1210
    :goto_1
    return-void

    .line 1153
    :cond_2
    if-eqz v29, :cond_4

    .line 1155
    const/4 v5, 0x0

    aget v5, v29, v5

    const/4 v6, 0x1

    aget v6, v29, v6

    const/4 v7, 0x0

    aget v7, v26, v7

    const/4 v8, 0x1

    aget v8, v26, v8

    const/4 v9, 0x0

    aget v9, v28, v9

    const/4 v10, 0x1

    aget v10, v28, v10

    invoke-virtual/range {v4 .. v12}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIIIII[I[I)[I

    move-result-object v27

    .line 1158
    .local v27, "result":[I
    const/4 v5, 0x0

    const/4 v6, 0x0

    aget v6, v12, v6

    aput v6, v28, v5

    .line 1159
    const/4 v5, 0x1

    const/4 v6, 0x1

    aget v6, v12, v6

    aput v6, v28, v5

    .line 1160
    if-eqz v27, :cond_3

    const/16 v25, 0x1

    .line 1161
    :goto_2
    goto :goto_0

    .line 1160
    :cond_3
    const/16 v25, 0x0

    goto :goto_2

    .line 1162
    .end local v27    # "result":[I
    :cond_4
    const/4 v5, 0x0

    aget v5, v26, v5

    const/4 v6, 0x1

    aget v6, v26, v6

    invoke-virtual {v4, v11, v5, v6}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v25

    goto :goto_0

    .line 1180
    :cond_5
    new-instance v14, Lcom/android/launcher2/LauncherAppWidgetInfo;

    move-object/from16 v0, p6

    iget-object v5, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move/from16 v0, p1

    invoke-direct {v14, v0, v5}, Lcom/android/launcher2/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    .line 1182
    .local v14, "launcherInfo":Lcom/android/launcher2/LauncherAppWidgetInfo;
    const/4 v5, 0x0

    aget v5, v28, v5

    iput v5, v14, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanX:I

    .line 1183
    const/4 v5, 0x1

    aget v5, v28, v5

    iput v5, v14, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanY:I

    .line 1184
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v5, v5, Lcom/android/launcher2/ItemInfo;->minSpanX:I

    iput v5, v14, Lcom/android/launcher2/LauncherAppWidgetInfo;->minSpanX:I

    .line 1185
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v5, v5, Lcom/android/launcher2/ItemInfo;->minSpanY:I

    iput v5, v14, Lcom/android/launcher2/LauncherAppWidgetInfo;->minSpanY:I

    .line 1187
    const/4 v5, 0x0

    aget v18, v11, v5

    const/4 v5, 0x1

    aget v19, v11, v5

    const/16 v20, 0x0

    move-object/from16 v13, p0

    move-wide/from16 v15, p2

    move/from16 v17, p4

    invoke-static/range {v13 .. v20}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIIIZ)V

    .line 1190
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    if-nez v5, :cond_6

    .line 1191
    if-nez p5, :cond_7

    .line 1193
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p6

    invoke-virtual {v5, v0, v1, v2}, Lcom/android/launcher2/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v5

    iput-object v5, v14, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 1194
    iget-object v5, v14, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move/from16 v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v5, v0, v1}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 1200
    :goto_3
    iget-object v5, v14, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v5, v14}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 1201
    iget-object v5, v14, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/appwidget/AppWidgetHostView;->setVisibility(I)V

    .line 1202
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/android/launcher2/LauncherAppWidgetInfo;->notifyWidgetSizeChanged(Lcom/android/launcher2/Launcher;)V

    .line 1204
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v0, v14, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v16, v0

    const/4 v5, 0x0

    aget v20, v11, v5

    const/4 v5, 0x1

    aget v21, v11, v5

    iget v0, v14, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanX:I

    move/from16 v22, v0

    iget v0, v14, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanY:I

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v24

    move-wide/from16 v17, p2

    move/from16 v19, p4

    invoke-virtual/range {v15 .. v24}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    .line 1207
    iget-object v5, v14, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v5, v1}, Lcom/android/launcher2/Launcher;->addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 1209
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->resetAddInfo()V

    goto/16 :goto_1

    .line 1197
    :cond_7
    move-object/from16 v0, p5

    iput-object v0, v14, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    goto :goto_3
.end method

.method private completeAddShortcut(Landroid/content/Intent;JIII)V
    .locals 26
    .param p1, "data"    # Landroid/content/Intent;
    .param p2, "container"    # J
    .param p4, "screen"    # I
    .param p5, "cellX"    # I
    .param p6, "cellY"    # I

    .prologue
    .line 1045
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/Launcher;->mTmpAddItemCellCoordinates:[I

    .line 1046
    .local v9, "cellXY":[I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget-object v0, v4, Lcom/android/launcher2/ItemInfo;->dropPos:[I

    move-object/from16 v25, v0

    .line 1047
    .local v25, "touchXY":[I
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/Launcher;->getCellLayout(JI)Lcom/android/launcher2/CellLayout;

    move-result-object v8

    .line 1049
    .local v8, "layout":Lcom/android/launcher2/CellLayout;
    const/16 v22, 0x0

    .line 1051
    .local v22, "foundCellSpan":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v4, v0, v1, v6}, Lcom/android/launcher2/LauncherModel;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v23

    .line 1052
    .local v23, "info":Lcom/android/launcher2/ShortcutInfo;
    if-nez v23, :cond_1

    .line 1093
    :cond_0
    :goto_0
    return-void

    .line 1055
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->createShortcut(Lcom/android/launcher2/ShortcutInfo;)Landroid/view/View;

    move-result-object v5

    .line 1058
    .local v5, "view":Landroid/view/View;
    if-ltz p5, :cond_2

    if-ltz p6, :cond_2

    .line 1059
    const/4 v4, 0x0

    aput p5, v9, v4

    .line 1060
    const/4 v4, 0x1

    aput p6, v9, v4

    .line 1061
    const/16 v22, 0x1

    .line 1064
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide/from16 v6, p2

    invoke-virtual/range {v4 .. v13}, Lcom/android/launcher2/Workspace;->createUserFolderIfNecessary(Landroid/view/View;JLcom/android/launcher2/CellLayout;[IFZLcom/android/launcher2/DragView;Ljava/lang/Runnable;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1068
    new-instance v11, Lcom/android/launcher2/DropTarget$DragObject;

    invoke-direct {v11}, Lcom/android/launcher2/DropTarget$DragObject;-><init>()V

    .line 1069
    .local v11, "dragObject":Lcom/android/launcher2/DropTarget$DragObject;
    move-object/from16 v0, v23

    iput-object v0, v11, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 1070
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v10, 0x0

    const/4 v12, 0x1

    move-object v7, v5

    invoke-virtual/range {v6 .. v12}, Lcom/android/launcher2/Workspace;->addToExistingFolderIfNecessary(Landroid/view/View;Lcom/android/launcher2/CellLayout;[IFLcom/android/launcher2/DropTarget$DragObject;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1082
    .end local v11    # "dragObject":Lcom/android/launcher2/DropTarget$DragObject;
    :goto_1
    if-nez v22, :cond_5

    .line 1083
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/Launcher;->showOutOfSpaceMessage(Z)V

    goto :goto_0

    .line 1074
    :cond_2
    if-eqz v25, :cond_4

    .line 1076
    const/4 v4, 0x0

    aget v13, v25, v4

    const/4 v4, 0x1

    aget v14, v25, v4

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object v12, v8

    move-object/from16 v17, v9

    invoke-virtual/range {v12 .. v17}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIII[I)[I

    move-result-object v24

    .line 1077
    .local v24, "result":[I
    if-eqz v24, :cond_3

    const/16 v22, 0x1

    .line 1078
    :goto_2
    goto :goto_1

    .line 1077
    :cond_3
    const/16 v22, 0x0

    goto :goto_2

    .line 1079
    .end local v24    # "result":[I
    :cond_4
    const/4 v4, 0x1

    const/4 v6, 0x1

    invoke-virtual {v8, v9, v4, v6}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v22

    goto :goto_1

    .line 1087
    :cond_5
    const/4 v4, 0x0

    aget v17, v9, v4

    const/4 v4, 0x1

    aget v18, v9, v4

    const/16 v19, 0x0

    move-object/from16 v12, p0

    move-object/from16 v13, v23

    move-wide/from16 v14, p2

    move/from16 v16, p4

    invoke-static/range {v12 .. v19}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIIIZ)V

    .line 1089
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    if-nez v4, :cond_0

    .line 1090
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v4, 0x0

    aget v17, v9, v4

    const/4 v4, 0x1

    aget v18, v9, v4

    const/16 v19, 0x1

    const/16 v20, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v21

    move-object v13, v5

    move-wide/from16 v14, p2

    move/from16 v16, p4

    invoke-virtual/range {v12 .. v21}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    goto/16 :goto_0
.end method

.method private completeTwoStageWidgetDrop(II)V
    .locals 9
    .param p1, "resultCode"    # I
    .param p2, "appWidgetId"    # I

    .prologue
    .line 677
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v1, v1, Lcom/android/launcher2/ItemInfo;->screen:I

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    .line 679
    .local v2, "cellLayout":Lcom/android/launcher2/CellLayout;
    const/4 v4, 0x0

    .line 680
    .local v4, "onCompleteRunnable":Ljava/lang/Runnable;
    const/4 v5, 0x0

    .line 682
    .local v5, "animationType":I
    const/4 v6, 0x0

    .line 683
    .local v6, "boundWidget":Landroid/appwidget/AppWidgetHostView;
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 684
    const/4 v5, 0x3

    .line 685
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mPendingAddWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v0, p0, p2, v1}, Lcom/android/launcher2/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v8

    .line 687
    .local v8, "layout":Landroid/appwidget/AppWidgetHostView;
    move-object v6, v8

    .line 688
    new-instance v4, Lcom/android/launcher2/Launcher$4;

    .end local v4    # "onCompleteRunnable":Ljava/lang/Runnable;
    invoke-direct {v4, p0, p2, v8, p1}, Lcom/android/launcher2/Launcher$4;-><init>(Lcom/android/launcher2/Launcher;ILandroid/appwidget/AppWidgetHostView;I)V

    .line 707
    .end local v8    # "layout":Landroid/appwidget/AppWidgetHostView;
    .restart local v4    # "onCompleteRunnable":Ljava/lang/Runnable;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher2/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 708
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v3}, Lcom/android/launcher2/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/DragView;

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/Workspace;->animateWidgetDrop(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    .line 715
    :goto_1
    return-void

    .line 697
    :cond_1
    if-nez p1, :cond_0

    .line 698
    const/4 v5, 0x4

    .line 699
    new-instance v4, Lcom/android/launcher2/Launcher$5;

    .end local v4    # "onCompleteRunnable":Ljava/lang/Runnable;
    invoke-direct {v4, p0, p1}, Lcom/android/launcher2/Launcher$5;-><init>(Lcom/android/launcher2/Launcher;I)V

    .restart local v4    # "onCompleteRunnable":Ljava/lang/Runnable;
    goto :goto_0

    .line 713
    :cond_2
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method private copyFolderIconToImage(Lcom/android/launcher2/FolderIcon;)V
    .locals 7
    .param p1, "fi"    # Lcom/android/launcher2/FolderIcon;

    .prologue
    .line 2149
    invoke-virtual {p1}, Lcom/android/launcher2/FolderIcon;->getMeasuredWidth()I

    move-result v3

    .line 2150
    .local v3, "width":I
    invoke-virtual {p1}, Lcom/android/launcher2/FolderIcon;->getMeasuredHeight()I

    move-result v0

    .line 2153
    .local v0, "height":I
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    if-nez v4, :cond_0

    .line 2154
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/launcher2/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    .line 2156
    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v4, v3, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eq v4, v0, :cond_2

    .line 2158
    :cond_1
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/Launcher;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    .line 2159
    new-instance v4, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lcom/android/launcher2/Launcher;->mFolderIconCanvas:Landroid/graphics/Canvas;

    .line 2163
    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher2/DragLayer$LayoutParams;

    if-eqz v4, :cond_6

    .line 2164
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/DragLayer$LayoutParams;

    .line 2171
    .local v1, "lp":Lcom/android/launcher2/DragLayer$LayoutParams;
    :goto_0
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mRectForFolderAnimation:Landroid/graphics/Rect;

    invoke-virtual {v4, p1, v5}, Lcom/android/launcher2/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v2

    .line 2172
    .local v2, "scale":F
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/android/launcher2/DragLayer$LayoutParams;->customPosition:Z

    .line 2173
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mRectForFolderAnimation:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iput v4, v1, Lcom/android/launcher2/DragLayer$LayoutParams;->x:I

    .line 2174
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mRectForFolderAnimation:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iput v4, v1, Lcom/android/launcher2/DragLayer$LayoutParams;->y:I

    .line 2175
    int-to-float v4, v3

    mul-float/2addr v4, v2

    float-to-int v4, v4

    iput v4, v1, Lcom/android/launcher2/DragLayer$LayoutParams;->width:I

    .line 2176
    int-to-float v4, v0

    mul-float/2addr v4, v2

    float-to-int v4, v4

    iput v4, v1, Lcom/android/launcher2/DragLayer$LayoutParams;->height:I

    .line 2178
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mFolderIconCanvas:Landroid/graphics/Canvas;

    const/4 v5, 0x0

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2179
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mFolderIconCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, v4}, Lcom/android/launcher2/FolderIcon;->draw(Landroid/graphics/Canvas;)V

    .line 2180
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2181
    invoke-virtual {p1}, Lcom/android/launcher2/FolderIcon;->getFolder()Lcom/android/launcher2/Folder;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2182
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/launcher2/FolderIcon;->getFolder()Lcom/android/launcher2/Folder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Folder;->getPivotXForIconAnimation()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 2183
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/launcher2/FolderIcon;->getFolder()Lcom/android/launcher2/Folder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Folder;->getPivotYForIconAnimation()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 2187
    :cond_3
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/android/launcher2/DragLayer;->indexOfChild(Landroid/view/View;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    .line 2188
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/android/launcher2/DragLayer;->removeView(Landroid/view/View;)V

    .line 2190
    :cond_4
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5, v1}, Lcom/android/launcher2/DragLayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2191
    invoke-virtual {p1}, Lcom/android/launcher2/FolderIcon;->getFolder()Lcom/android/launcher2/Folder;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 2192
    invoke-virtual {p1}, Lcom/android/launcher2/FolderIcon;->getFolder()Lcom/android/launcher2/Folder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/Folder;->bringToFront()V

    .line 2194
    :cond_5
    return-void

    .line 2166
    .end local v1    # "lp":Lcom/android/launcher2/DragLayer$LayoutParams;
    .end local v2    # "scale":F
    :cond_6
    new-instance v1, Lcom/android/launcher2/DragLayer$LayoutParams;

    invoke-direct {v1, v3, v0}, Lcom/android/launcher2/DragLayer$LayoutParams;-><init>(II)V

    .restart local v1    # "lp":Lcom/android/launcher2/DragLayer$LayoutParams;
    goto/16 :goto_0
.end method

.method private dismissCling(Lcom/android/launcher2/Cling;Ljava/lang/String;I)V
    .locals 5
    .param p1, "cling"    # Lcom/android/launcher2/Cling;
    .param p2, "flag"    # Ljava/lang/String;
    .param p3, "duration"    # I

    .prologue
    .line 3744
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/Cling;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 3745
    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {p1, v1, v2}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3746
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3747
    new-instance v1, Lcom/android/launcher2/Launcher$28;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher2/Launcher$28;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Cling;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3761
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 3762
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHideFromAccessibilityHelper:Lcom/android/launcher2/HideFromAccessibilityHelper;

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/HideFromAccessibilityHelper;->restoreImportantForAccessibility(Landroid/view/View;)V

    .line 3764
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_0
    return-void
.end method

.method private dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZ)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z

    .prologue
    .line 2431
    instance-of v0, p1, Lcom/android/launcher2/LauncherTransitionable;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 2432
    check-cast v0, Lcom/android/launcher2/LauncherTransitionable;

    invoke-interface {v0, p0, p2, p3}, Lcom/android/launcher2/LauncherTransitionable;->onLauncherTransitionEnd(Lcom/android/launcher2/Launcher;ZZ)V

    .line 2436
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionStep(Landroid/view/View;F)V

    .line 2437
    return-void
.end method

.method private dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z

    .prologue
    .line 2410
    instance-of v0, p1, Lcom/android/launcher2/LauncherTransitionable;

    if-eqz v0, :cond_0

    .line 2411
    check-cast p1, Lcom/android/launcher2/LauncherTransitionable;

    .end local p1    # "v":Landroid/view/View;
    invoke-interface {p1, p0, p2, p3}, Lcom/android/launcher2/LauncherTransitionable;->onLauncherTransitionPrepare(Lcom/android/launcher2/Launcher;ZZ)V

    .line 2413
    :cond_0
    return-void
.end method

.method private dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z

    .prologue
    .line 2416
    instance-of v0, p1, Lcom/android/launcher2/LauncherTransitionable;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 2417
    check-cast v0, Lcom/android/launcher2/LauncherTransitionable;

    invoke-interface {v0, p0, p2, p3}, Lcom/android/launcher2/LauncherTransitionable;->onLauncherTransitionStart(Lcom/android/launcher2/Launcher;ZZ)V

    .line 2421
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionStep(Landroid/view/View;F)V

    .line 2422
    return-void
.end method

.method private dispatchOnLauncherTransitionStep(Landroid/view/View;F)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "t"    # F

    .prologue
    .line 2425
    instance-of v0, p1, Lcom/android/launcher2/LauncherTransitionable;

    if-eqz v0, :cond_0

    .line 2426
    check-cast p1, Lcom/android/launcher2/LauncherTransitionable;

    .end local p1    # "v":Landroid/view/View;
    invoke-interface {p1, p0, p2}, Lcom/android/launcher2/LauncherTransitionable;->onLauncherTransitionStep(Lcom/android/launcher2/Launcher;F)V

    .line 2428
    :cond_0
    return-void
.end method

.method public static dumpDebugLogsToConsole()V
    .locals 4

    .prologue
    .line 3884
    const-string v1, "Launcher"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3885
    const-string v1, "Launcher"

    const-string v2, "*********************"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3886
    const-string v1, "Launcher"

    const-string v2, "Launcher debug logs: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3887
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/launcher2/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3888
    const-string v2, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v1, Lcom/android/launcher2/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3887
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3890
    :cond_0
    const-string v1, "Launcher"

    const-string v2, "*********************"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3891
    const-string v1, "Launcher"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3892
    return-void
.end method

.method private getCurrentOrientationIndexForGlobalIcons()I
    .locals 1

    .prologue
    .line 2976
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v0, :pswitch_data_0

    .line 2980
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2978
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2976
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private getExternalPackageToolbarIcon(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "activityName"    # Landroid/content/ComponentName;
    .param p2, "resourceName"    # Ljava/lang/String;

    .prologue
    .line 2986
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 2988
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v6, 0x80

    invoke-virtual {v4, p1, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 2990
    .local v2, "metaData":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 2991
    invoke-virtual {v2, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 2992
    .local v1, "iconResId":I
    if-eqz v1, :cond_0

    .line 2993
    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v5

    .line 2994
    .local v5, "res":Landroid/content/res/Resources;
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 3006
    .end local v1    # "iconResId":I
    .end local v2    # "metaData":Landroid/os/Bundle;
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v5    # "res":Landroid/content/res/Resources;
    :goto_0
    return-object v6

    .line 2997
    :catch_0
    move-exception v0

    .line 2999
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "Launcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to load toolbar icon; "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3006
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 3001
    :catch_1
    move-exception v3

    .line 3003
    .local v3, "nfe":Landroid/content/res/Resources$NotFoundException;
    const-string v6, "Launcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to load toolbar icon from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static getMinSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 1110
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    iget v2, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    invoke-static {p0, v0, v1, v2}, Lcom/android/launcher2/Launcher;->getSpanForWidget(Landroid/content/Context;Landroid/content/ComponentName;II)[I

    move-result-object v0

    return-object v0
.end method

.method static getMinSpanForWidget(Landroid/content/Context;Lcom/android/launcher2/PendingAddWidgetInfo;)[I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Lcom/android/launcher2/PendingAddWidgetInfo;

    .prologue
    .line 1118
    iget-object v0, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    iget v1, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->minResizeWidth:I

    iget v2, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->minResizeHeight:I

    invoke-static {p0, v0, v1, v2}, Lcom/android/launcher2/Launcher;->getSpanForWidget(Landroid/content/Context;Landroid/content/ComponentName;II)[I

    move-result-object v0

    return-object v0
.end method

.method static getScreen()I
    .locals 2

    .prologue
    .line 573
    sget-object v1, Lcom/android/launcher2/Launcher;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 574
    :try_start_0
    sget v0, Lcom/android/launcher2/Launcher;->sScreen:I

    monitor-exit v1

    return v0

    .line 575
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static getSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 1106
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget v2, p1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-static {p0, v0, v1, v2}, Lcom/android/launcher2/Launcher;->getSpanForWidget(Landroid/content/Context;Landroid/content/ComponentName;II)[I

    move-result-object v0

    return-object v0
.end method

.method static getSpanForWidget(Landroid/content/Context;Landroid/content/ComponentName;II)[I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "minWidth"    # I
    .param p3, "minHeight"    # I

    .prologue
    const/4 v5, 0x0

    .line 1097
    invoke-static {p0, p1, v5}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1100
    .local v0, "padding":Landroid/graphics/Rect;
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p2

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int v2, v3, v4

    .line 1101
    .local v2, "requiredWidth":I
    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p3

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    add-int v1, v3, v4

    .line 1102
    .local v1, "requiredHeight":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v2, v1, v5}, Lcom/android/launcher2/CellLayout;->rectToCell(Landroid/content/res/Resources;II[I)[I

    move-result-object v3

    return-object v3
.end method

.method static getSpanForWidget(Landroid/content/Context;Lcom/android/launcher2/PendingAddWidgetInfo;)[I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Lcom/android/launcher2/PendingAddWidgetInfo;

    .prologue
    .line 1114
    iget-object v0, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    iget v1, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->minWidth:I

    iget v2, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->minHeight:I

    invoke-static {p0, v0, v1, v2}, Lcom/android/launcher2/Launcher;->getSpanForWidget(Landroid/content/Context;Landroid/content/ComponentName;II)[I

    move-result-object v0

    return-object v0
.end method

.method private getTypedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private growAndFadeOutFolderIcon(Lcom/android/launcher2/FolderIcon;)V
    .locals 13
    .param p1, "fi"    # Lcom/android/launcher2/FolderIcon;

    .prologue
    const/high16 v10, 0x3fc00000    # 1.5f

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 2197
    if-nez p1, :cond_0

    .line 2217
    :goto_0
    return-void

    .line 2198
    :cond_0
    const-string v7, "alpha"

    new-array v8, v12, [F

    const/4 v9, 0x0

    aput v9, v8, v11

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 2199
    .local v0, "alpha":Landroid/animation/PropertyValuesHolder;
    const-string v7, "scaleX"

    new-array v8, v12, [F

    aput v10, v8, v11

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 2200
    .local v5, "scaleX":Landroid/animation/PropertyValuesHolder;
    const-string v7, "scaleY"

    new-array v8, v12, [F

    aput v10, v8, v11

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 2202
    .local v6, "scaleY":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {p1}, Lcom/android/launcher2/FolderIcon;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/FolderInfo;

    .line 2203
    .local v2, "info":Lcom/android/launcher2/FolderInfo;
    iget-wide v7, v2, Lcom/android/launcher2/FolderInfo;->container:J

    const-wide/16 v9, -0x65

    cmp-long v7, v7, v9

    if-nez v7, :cond_1

    .line 2204
    invoke-virtual {p1}, Lcom/android/launcher2/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 2205
    .local v1, "cl":Lcom/android/launcher2/CellLayout;
    invoke-virtual {p1}, Lcom/android/launcher2/FolderIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 2206
    .local v3, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v7, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v8, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v1, v7, v8}, Lcom/android/launcher2/CellLayout;->setFolderLeaveBehindCell(II)V

    .line 2210
    .end local v1    # "cl":Lcom/android/launcher2/CellLayout;
    .end local v3    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher2/Launcher;->copyFolderIconToImage(Lcom/android/launcher2/FolderIcon;)V

    .line 2211
    const/4 v7, 0x4

    invoke-virtual {p1, v7}, Lcom/android/launcher2/FolderIcon;->setVisibility(I)V

    .line 2213
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    const/4 v8, 0x3

    new-array v8, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v8, v11

    aput-object v5, v8, v12

    const/4 v9, 0x2

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Lcom/android/launcher2/LauncherAnimUtils;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 2215
    .local v4, "oa":Landroid/animation/ObjectAnimator;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0015

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v4, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2216
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private handleFolderClick(Lcom/android/launcher2/FolderIcon;)V
    .locals 6
    .param p1, "folderIcon"    # Lcom/android/launcher2/FolderIcon;

    .prologue
    .line 2111
    invoke-virtual {p1}, Lcom/android/launcher2/FolderIcon;->getFolderInfo()Lcom/android/launcher2/FolderInfo;

    move-result-object v1

    .line 2112
    .local v1, "info":Lcom/android/launcher2/FolderInfo;
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/Workspace;->getFolderForTag(Ljava/lang/Object;)Lcom/android/launcher2/Folder;

    move-result-object v2

    .line 2116
    .local v2, "openFolder":Lcom/android/launcher2/Folder;
    iget-boolean v3, v1, Lcom/android/launcher2/FolderInfo;->opened:Z

    if-eqz v3, :cond_0

    if-nez v2, :cond_0

    .line 2117
    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Folder info marked as open, but associated folder is not open. Screen: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/launcher2/FolderInfo;->screen:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/launcher2/FolderInfo;->cellX:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/launcher2/FolderInfo;->cellY:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2119
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/launcher2/FolderInfo;->opened:Z

    .line 2122
    :cond_0
    iget-boolean v3, v1, Lcom/android/launcher2/FolderInfo;->opened:Z

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcom/android/launcher2/FolderIcon;->getFolder()Lcom/android/launcher2/Folder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2124
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closeFolder()V

    .line 2126
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->openFolder(Lcom/android/launcher2/FolderIcon;)V

    .line 2142
    :cond_1
    :goto_0
    return-void

    .line 2130
    :cond_2
    if-eqz v2, :cond_1

    .line 2131
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/Workspace;->getPageForView(Landroid/view/View;)I

    move-result v0

    .line 2133
    .local v0, "folderScreen":I
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->closeFolder(Lcom/android/launcher2/Folder;)V

    .line 2134
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v3

    if-eq v0, v3, :cond_1

    .line 2136
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closeFolder()V

    .line 2138
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->openFolder(Lcom/android/launcher2/FolderIcon;)V

    goto :goto_0
.end method

.method private hideAppsCustomizeHelper(Lcom/android/launcher2/Launcher$State;ZZLjava/lang/Runnable;)V
    .locals 19
    .param p1, "toState"    # Lcom/android/launcher2/Launcher$State;
    .param p2, "animated"    # Z
    .param p3, "springLoaded"    # Z
    .param p4, "onCompleteRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 2665
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    .line 2666
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2667
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    .line 2669
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 2671
    .local v11, "res":Landroid/content/res/Resources;
    const v2, 0x7f0a0005

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 2672
    .local v9, "duration":I
    const v2, 0x7f0a0008

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 2674
    .local v10, "fadeOutDuration":I
    const v2, 0x7f0a0006

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v13, v2

    .line 2676
    .local v13, "scaleFactor":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    .line 2677
    .local v4, "fromView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 2678
    .local v6, "toView":Landroid/view/View;
    const/16 v16, 0x0

    .line 2680
    .local v16, "workspaceAnim":Landroid/animation/Animator;
    sget-object v2, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_3

    .line 2681
    const v2, 0x7f0a000a

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    .line 2682
    .local v14, "stagger":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    sget-object v3, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move/from16 v0, p2

    invoke-virtual {v2, v3, v0, v14}, Lcom/android/launcher2/Workspace;->getChangeStateAnimation(Lcom/android/launcher2/Workspace$State;ZI)Landroid/animation/Animator;

    move-result-object v16

    .line 2689
    .end local v14    # "stagger":I
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13}, Lcom/android/launcher2/Launcher;->setPivotsForZoom(Landroid/view/View;F)V

    .line 2690
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Launcher;->updateWallpaperVisibility(Z)V

    .line 2691
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->showHotseat(Z)V

    .line 2692
    if-eqz p2, :cond_4

    .line 2693
    new-instance v12, Lcom/android/launcher2/LauncherViewPropertyAnimator;

    invoke-direct {v12, v4}, Lcom/android/launcher2/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 2695
    .local v12, "scaleAnim":Lcom/android/launcher2/LauncherViewPropertyAnimator;
    invoke-virtual {v12, v13}, Lcom/android/launcher2/LauncherViewPropertyAnimator;->scaleX(F)Lcom/android/launcher2/LauncherViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/android/launcher2/LauncherViewPropertyAnimator;->scaleY(F)Lcom/android/launcher2/LauncherViewPropertyAnimator;

    move-result-object v2

    int-to-long v0, v9

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher2/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    new-instance v3, Lcom/android/launcher2/Workspace$ZoomInInterpolator;

    invoke-direct {v3}, Lcom/android/launcher2/Workspace$ZoomInInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2700
    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v4, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    int-to-long v0, v10

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 2703
    .local v8, "alphaAnim":Landroid/animation/ObjectAnimator;
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v8, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2704
    new-instance v2, Lcom/android/launcher2/Launcher$16;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v4, v6}, Lcom/android/launcher2/Launcher$16;-><init>(Lcom/android/launcher2/Launcher;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v8, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2713
    invoke-static {}, Lcom/android/launcher2/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    .line 2715
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v4, v1, v2}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 2716
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v6, v1, v2}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 2717
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v2}, Lcom/android/launcher2/AppsCustomizePagedView;->pauseScrolling()V

    .line 2719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v17, v0

    new-instance v2, Lcom/android/launcher2/Launcher$17;

    move-object/from16 v3, p0

    move/from16 v5, p2

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher2/Launcher$17;-><init>(Lcom/android/launcher2/Launcher;Landroid/view/View;ZLandroid/view/View;Ljava/lang/Runnable;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2737
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v12, v3, v5

    const/4 v5, 0x1

    aput-object v8, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2738
    if-eqz v16, :cond_2

    .line 2739
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2741
    :cond_2
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v4, v1, v2}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V

    .line 2742
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v6, v1, v2}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V

    .line 2743
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    .line 2744
    .local v15, "stateAnimation":Landroid/animation/Animator;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    new-instance v3, Lcom/android/launcher2/Launcher$18;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v15}, Lcom/android/launcher2/Launcher$18;-><init>(Lcom/android/launcher2/Launcher;Landroid/animation/Animator;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 2761
    .end local v8    # "alphaAnim":Landroid/animation/ObjectAnimator;
    .end local v12    # "scaleAnim":Lcom/android/launcher2/LauncherViewPropertyAnimator;
    .end local v15    # "stateAnimation":Landroid/animation/Animator;
    :goto_1
    return-void

    .line 2684
    :cond_3
    sget-object v2, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE_SPRING_LOADED:Lcom/android/launcher2/Launcher$State;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_1

    .line 2685
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    sget-object v3, Lcom/android/launcher2/Workspace$State;->SPRING_LOADED:Lcom/android/launcher2/Workspace$State;

    move/from16 v0, p2

    invoke-virtual {v2, v3, v0}, Lcom/android/launcher2/Workspace;->getChangeStateAnimation(Lcom/android/launcher2/Workspace$State;Z)Landroid/animation/Animator;

    move-result-object v16

    goto/16 :goto_0

    .line 2752
    :cond_4
    const/16 v2, 0x8

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2753
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v4, v1, v2}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 2754
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v4, v1, v2}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V

    .line 2755
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v4, v1, v2}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZ)V

    .line 2756
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v6, v1, v2}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 2757
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v6, v1, v2}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V

    .line 2758
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v6, v1, v2}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZ)V

    .line 2759
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->hideScrollingIndicator(Z)V

    goto :goto_1

    .line 2700
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private initCling(I[IZI)Lcom/android/launcher2/Cling;
    .locals 6
    .param p1, "clingId"    # I
    .param p2, "positionData"    # [I
    .param p3, "animate"    # Z
    .param p4, "delay"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 3711
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Cling;

    .line 3712
    .local v0, "cling":Lcom/android/launcher2/Cling;
    if-eqz v0, :cond_0

    .line 3713
    invoke-virtual {v0, p0, p2}, Lcom/android/launcher2/Cling;->init(Lcom/android/launcher2/Launcher;[I)V

    .line 3714
    invoke-virtual {v0, v2}, Lcom/android/launcher2/Cling;->setVisibility(I)V

    .line 3715
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/android/launcher2/Cling;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3716
    if-eqz p3, :cond_1

    .line 3717
    invoke-virtual {v0}, Lcom/android/launcher2/Cling;->buildLayer()V

    .line 3718
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Cling;->setAlpha(F)V

    .line 3719
    invoke-virtual {v0}, Lcom/android/launcher2/Cling;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x226

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, p4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 3728
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/launcher2/Cling;->setFocusableInTouchMode(Z)V

    .line 3729
    new-instance v3, Lcom/android/launcher2/Launcher$27;

    invoke-direct {v3, p0, v0}, Lcom/android/launcher2/Launcher$27;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Cling;)V

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Cling;->post(Ljava/lang/Runnable;)Z

    .line 3735
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHideFromAccessibilityHelper:Lcom/android/launcher2/HideFromAccessibilityHelper;

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    const v5, 0x7f07000c

    if-ne p1, v5, :cond_2

    :goto_1
    invoke-virtual {v3, v4, v1}, Lcom/android/launcher2/HideFromAccessibilityHelper;->setImportantForAccessibilityToNo(Landroid/view/View;Z)V

    .line 3738
    :cond_0
    return-object v0

    .line 3726
    :cond_1
    invoke-virtual {v0, v5}, Lcom/android/launcher2/Cling;->setAlpha(F)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 3735
    goto :goto_1
.end method

.method private static intToState(I)Lcom/android/launcher2/Launcher$State;
    .locals 4
    .param p0, "stateOrdinal"    # I

    .prologue
    .line 857
    sget-object v1, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    .line 858
    .local v1, "state":Lcom/android/launcher2/Launcher$State;
    invoke-static {}, Lcom/android/launcher2/Launcher$State;->values()[Lcom/android/launcher2/Launcher$State;

    move-result-object v2

    .line 859
    .local v2, "stateValues":[Lcom/android/launcher2/Launcher$State;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 860
    aget-object v3, v2, v0

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher$State;->ordinal()I

    move-result v3

    if-ne v3, p0, :cond_1

    .line 861
    aget-object v1, v2, v0

    .line 865
    :cond_0
    return-object v1

    .line 859
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private invalidatePressedFocusedStates(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1, "container"    # Landroid/view/View;
    .param p2, "button"    # Landroid/view/View;

    .prologue
    .line 3068
    instance-of v2, p1, Lcom/android/launcher2/HolographicLinearLayout;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 3069
    check-cast v0, Lcom/android/launcher2/HolographicLinearLayout;

    .line 3070
    .local v0, "layout":Lcom/android/launcher2/HolographicLinearLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/HolographicLinearLayout;->invalidatePressedFocusedStates()V

    .line 3075
    .end local v0    # "layout":Lcom/android/launcher2/HolographicLinearLayout;
    :cond_0
    :goto_0
    return-void

    .line 3071
    :cond_1
    instance-of v2, p2, Lcom/android/launcher2/HolographicImageView;

    if-eqz v2, :cond_0

    move-object v1, p2

    .line 3072
    check-cast v1, Lcom/android/launcher2/HolographicImageView;

    .line 3073
    .local v1, "view":Lcom/android/launcher2/HolographicImageView;
    invoke-virtual {v1}, Lcom/android/launcher2/HolographicImageView;->invalidatePressedFocusedStates()V

    goto :goto_0
.end method

.method private isClingsEnabled()Z
    .locals 1

    .prologue
    .line 3705
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3707
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isPropertyEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p0, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 335
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private mapConfigurationOriActivityInfoOri(I)I
    .locals 6
    .param p1, "configOri"    # I

    .prologue
    const/4 v4, 0x2

    .line 3646
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 3647
    .local v0, "d":Landroid/view/Display;
    const/4 v2, 0x2

    .line 3648
    .local v2, "naturalOri":I
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 3662
    :goto_0
    const/4 v5, 0x4

    new-array v3, v5, [I

    fill-array-data v3, :array_0

    .line 3670
    .local v3, "oriMap":[I
    const/4 v1, 0x0

    .line 3671
    .local v1, "indexOffset":I
    if-ne v2, v4, :cond_0

    .line 3672
    const/4 v1, 0x1

    .line 3674
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v4

    add-int/2addr v4, v1

    rem-int/lit8 v4, v4, 0x4

    aget v4, v3, v4

    return v4

    .line 3652
    .end local v1    # "indexOffset":I
    .end local v3    # "oriMap":[I
    :pswitch_0
    move v2, p1

    .line 3653
    goto :goto_0

    .line 3657
    :pswitch_1
    if-ne p1, v4, :cond_1

    const/4 v2, 0x1

    :goto_1
    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    .line 3648
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 3662
    :array_0
    .array-data 4
        0x1
        0x0
        0x9
        0x8
    .end array-data
.end method

.method private onAppWidgetReset()V
    .locals 1

    .prologue
    .line 1918
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    if-eqz v0, :cond_0

    .line 1919
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherAppWidgetHost;->startListening()V

    .line 1921
    :cond_0
    return-void
.end method

.method private static readConfiguration(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "configuration"    # Lcom/android/launcher2/Launcher$LocaleConfiguration;

    .prologue
    .line 517
    const/4 v0, 0x0

    .line 519
    .local v0, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    const-string v2, "launcher.preferences"

    invoke-virtual {p0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    .end local v0    # "in":Ljava/io/DataInputStream;
    .local v1, "in":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 521
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mcc:I

    .line 522
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mnc:I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 528
    if-eqz v1, :cond_2

    .line 530
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 536
    .end local v1    # "in":Ljava/io/DataInputStream;
    .restart local v0    # "in":Ljava/io/DataInputStream;
    :cond_0
    :goto_0
    return-void

    .line 531
    .end local v0    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 533
    .end local v1    # "in":Ljava/io/DataInputStream;
    .restart local v0    # "in":Ljava/io/DataInputStream;
    goto :goto_0

    .line 523
    :catch_1
    move-exception v2

    .line 528
    :goto_1
    if-eqz v0, :cond_0

    .line 530
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 531
    :catch_2
    move-exception v2

    goto :goto_0

    .line 525
    :catch_3
    move-exception v2

    .line 528
    :goto_2
    if-eqz v0, :cond_0

    .line 530
    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 531
    :catch_4
    move-exception v2

    goto :goto_0

    .line 528
    :catchall_0
    move-exception v2

    :goto_3
    if-eqz v0, :cond_1

    .line 530
    :try_start_5
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 533
    :cond_1
    :goto_4
    throw v2

    .line 531
    :catch_5
    move-exception v3

    goto :goto_4

    .line 528
    .end local v0    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "in":Ljava/io/DataInputStream;
    .restart local v0    # "in":Ljava/io/DataInputStream;
    goto :goto_3

    .line 525
    .end local v0    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1    # "in":Ljava/io/DataInputStream;
    .restart local v0    # "in":Ljava/io/DataInputStream;
    goto :goto_2

    .line 523
    .end local v0    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1    # "in":Ljava/io/DataInputStream;
    .restart local v0    # "in":Ljava/io/DataInputStream;
    goto :goto_1

    .end local v0    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    :cond_2
    move-object v0, v1

    .end local v1    # "in":Ljava/io/DataInputStream;
    .restart local v0    # "in":Ljava/io/DataInputStream;
    goto :goto_0
.end method

.method private registerContentObservers()V
    .locals 4

    .prologue
    .line 1867
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1868
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/launcher2/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1870
    return-void
.end method

.method private removeCling(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 3767
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3768
    .local v0, "cling":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 3769
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 3770
    .local v1, "parent":Landroid/view/ViewGroup;
    new-instance v2, Lcom/android/launcher2/Launcher$29;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/launcher2/Launcher$29;-><init>(Lcom/android/launcher2/Launcher;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 3776
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHideFromAccessibilityHelper:Lcom/android/launcher2/HideFromAccessibilityHelper;

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/HideFromAccessibilityHelper;->restoreImportantForAccessibility(Landroid/view/View;)V

    .line 3778
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private resetAddInfo()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 1688
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/launcher2/ItemInfo;->container:J

    .line 1689
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput v3, v0, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 1690
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput v3, v1, Lcom/android/launcher2/ItemInfo;->cellY:I

    iput v3, v0, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 1691
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput v3, v1, Lcom/android/launcher2/ItemInfo;->spanY:I

    iput v3, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 1692
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput v3, v1, Lcom/android/launcher2/ItemInfo;->minSpanY:I

    iput v3, v0, Lcom/android/launcher2/ItemInfo;->minSpanX:I

    .line 1693
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher2/ItemInfo;->dropPos:[I

    .line 1694
    return-void
.end method

.method private restoreState(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 874
    if-nez p1, :cond_1

    .line 925
    :cond_0
    :goto_0
    return-void

    .line 878
    :cond_1
    const-string v10, "launcher.state"

    sget-object v11, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    invoke-virtual {v11}, Lcom/android/launcher2/Launcher$State;->ordinal()I

    move-result v11

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Lcom/android/launcher2/Launcher;->intToState(I)Lcom/android/launcher2/Launcher$State;

    move-result-object v9

    .line 879
    .local v9, "state":Lcom/android/launcher2/Launcher$State;
    sget-object v10, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    if-ne v9, v10, :cond_2

    .line 880
    sget-object v10, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    iput-object v10, p0, Lcom/android/launcher2/Launcher;->mOnResumeState:Lcom/android/launcher2/Launcher$State;

    .line 883
    :cond_2
    const-string v10, "launcher.current_screen"

    const/4 v11, -0x1

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 884
    .local v2, "currentScreen":I
    const/4 v10, -0x1

    if-le v2, v10, :cond_3

    .line 885
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v10, v2}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    .line 888
    :cond_3
    const-string v10, "launcher.add_container"

    const-wide/16 v11, -0x1

    invoke-virtual {p1, v10, v11, v12}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 889
    .local v5, "pendingAddContainer":J
    const-string v10, "launcher.add_screen"

    const/4 v11, -0x1

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 891
    .local v7, "pendingAddScreen":I
    const-wide/16 v10, -0x1

    cmp-long v10, v5, v10

    if-eqz v10, :cond_4

    const/4 v10, -0x1

    if-le v7, v10, :cond_4

    .line 892
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput-wide v5, v10, Lcom/android/launcher2/ItemInfo;->container:J

    .line 893
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput v7, v10, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 894
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    const-string v11, "launcher.add_cell_x"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v10, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 895
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    const-string v11, "launcher.add_cell_y"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v10, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 896
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    const-string v11, "launcher.add_span_x"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v10, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 897
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    const-string v11, "launcher.add_span_y"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v10, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 898
    const-string v10, "launcher.add_widget_info"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/appwidget/AppWidgetProviderInfo;

    iput-object v10, p0, Lcom/android/launcher2/Launcher;->mPendingAddWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 899
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    .line 900
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    .line 904
    :cond_4
    const-string v10, "launcher.rename_folder"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 905
    .local v8, "renameFolder":Z
    if-eqz v8, :cond_5

    .line 906
    const-string v10, "launcher.rename_folder_id"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 907
    .local v3, "id":J
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    sget-object v11, Lcom/android/launcher2/Launcher;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v10, p0, v11, v3, v4}, Lcom/android/launcher2/LauncherModel;->getFolderById(Landroid/content/Context;Ljava/util/HashMap;J)Lcom/android/launcher2/FolderInfo;

    move-result-object v10

    iput-object v10, p0, Lcom/android/launcher2/Launcher;->mFolderInfo:Lcom/android/launcher2/FolderInfo;

    .line 908
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    .line 913
    .end local v3    # "id":J
    :cond_5
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    if-eqz v10, :cond_0

    .line 914
    const-string v10, "apps_customize_currentTab"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 915
    .local v0, "curTab":Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 916
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    iget-object v11, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-virtual {v11, v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getContentTypeForTabTag(Ljava/lang/String;)Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/launcher2/AppsCustomizeTabHost;->setContentTypeImmediate(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V

    .line 918
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    iget-object v11, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v11}, Lcom/android/launcher2/AppsCustomizePagedView;->getCurrentPage()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/launcher2/AppsCustomizePagedView;->loadAssociatedPages(I)V

    .line 922
    :cond_6
    const-string v10, "apps_customize_currentIndex"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 923
    .local v1, "currentIndex":I
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v10, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->restorePageForIndex(I)V

    goto/16 :goto_0
.end method

.method private runNewAppsAnimation(Z)V
    .locals 13
    .param p1, "immediate"    # Z

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    .line 3490
    invoke-static {}, Lcom/android/launcher2/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 3491
    .local v0, "anim":Landroid/animation/AnimatorSet;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3494
    .local v2, "bounceAnims":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/animation/Animator;>;"
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mNewShortcutAnimateViews:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/launcher2/Launcher$22;

    invoke-direct {v7, p0}, Lcom/android/launcher2/Launcher$22;-><init>(Lcom/android/launcher2/Launcher;)V

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3505
    if-eqz p1, :cond_0

    .line 3506
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mNewShortcutAnimateViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 3507
    .local v5, "v":Landroid/view/View;
    invoke-virtual {v5, v10}, Landroid/view/View;->setAlpha(F)V

    .line 3508
    invoke-virtual {v5, v10}, Landroid/view/View;->setScaleX(F)V

    .line 3509
    invoke-virtual {v5, v10}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    .line 3512
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "v":Landroid/view/View;
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mNewShortcutAnimateViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 3513
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mNewShortcutAnimateViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 3514
    .restart local v5    # "v":Landroid/view/View;
    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    const-string v7, "alpha"

    new-array v8, v12, [F

    aput v10, v8, v11

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v6, v11

    const-string v7, "scaleX"

    new-array v8, v12, [F

    aput v10, v8, v11

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v6, v12

    const/4 v7, 0x2

    const-string v8, "scaleY"

    new-array v9, v12, [F

    aput v10, v9, v11

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/android/launcher2/LauncherAnimUtils;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 3518
    .local v1, "bounceAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v6, 0x1c2

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3519
    mul-int/lit8 v6, v3, 0x4b

    int-to-long v6, v6

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 3520
    new-instance v6, Lcom/android/launcher2/SmoothPagedView$OvershootInterpolator;

    invoke-direct {v6}, Lcom/android/launcher2/SmoothPagedView$OvershootInterpolator;-><init>()V

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3521
    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 3512
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3523
    .end local v1    # "bounceAnim":Landroid/animation/ValueAnimator;
    .end local v5    # "v":Landroid/view/View;
    :cond_1
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 3524
    new-instance v6, Lcom/android/launcher2/Launcher$23;

    invoke-direct {v6, p0}, Lcom/android/launcher2/Launcher$23;-><init>(Lcom/android/launcher2/Launcher;)V

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3532
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 3536
    .end local v3    # "i":I
    :cond_2
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/launcher2/Launcher;->mNewShortcutAnimatePage:I

    .line 3537
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mNewShortcutAnimateViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 3538
    new-instance v6, Lcom/android/launcher2/Launcher$24;

    const-string v7, "clearNewAppsThread"

    invoke-direct {v6, p0, v7}, Lcom/android/launcher2/Launcher$24;-><init>(Lcom/android/launcher2/Launcher;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher$24;->start()V

    .line 3546
    return-void
.end method

.method private sendAdvanceMessage(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    const/4 v2, 0x1

    .line 1296
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1297
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1298
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1299
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/launcher2/Launcher;->mAutoAdvanceSentTime:J

    .line 1300
    return-void
.end method

.method private setPivotsForZoom(Landroid/view/View;F)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "scaleFactor"    # F

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 2380
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 2381
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 2382
    return-void
.end method

.method static setScreen(I)V
    .locals 2
    .param p0, "screen"    # I

    .prologue
    .line 579
    sget-object v1, Lcom/android/launcher2/Launcher;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 580
    :try_start_0
    sput p0, Lcom/android/launcher2/Launcher;->sScreen:I

    .line 581
    monitor-exit v1

    .line 582
    return-void

    .line 581
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setWorkspaceBackground(Z)V
    .locals 2
    .param p1, "workspace"    # Z

    .prologue
    .line 2395
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mLauncherView:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspaceBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2397
    return-void

    .line 2395
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mBlackBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private setupViews()V
    .locals 3

    .prologue
    .line 931
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    .line 933
    .local v0, "dragController":Lcom/android/launcher2/DragController;
    const v1, 0x7f07001a

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mLauncherView:Landroid/view/View;

    .line 934
    const v1, 0x7f07001b

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/DragLayer;

    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    .line 935
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    const v2, 0x7f07001c

    invoke-virtual {v1, v2}, Lcom/android/launcher2/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Workspace;

    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 936
    const v1, 0x7f070022

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mQsbDivider:Landroid/view/View;

    .line 937
    const v1, 0x7f070023

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mDockDivider:Landroid/view/View;

    .line 939
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mLauncherView:Landroid/view/View;

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 940
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020061

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspaceBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 941
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x1000000

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mBlackBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 944
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher2/DragLayer;->setup(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/DragController;)V

    .line 947
    const v1, 0x7f070024

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Hotseat;

    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    .line 948
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v1, :cond_0

    .line 949
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/Hotseat;->setup(Lcom/android/launcher2/Launcher;)V

    .line 953
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 954
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/Workspace;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 955
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Workspace;->setup(Lcom/android/launcher2/DragController;)V

    .line 956
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragController;->addDragListener(Lcom/android/launcher2/DragController$DragListener;)V

    .line 959
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    const v2, 0x7f070025

    invoke-virtual {v1, v2}, Lcom/android/launcher2/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/SearchDropTargetBar;

    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    .line 962
    const v1, 0x7f07002a

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppsCustomizeTabHost;

    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    .line 963
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    const v2, 0x7f070009

    invoke-virtual {v1, v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppsCustomizePagedView;

    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    .line 965
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->setup(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/DragController;)V

    .line 968
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragController;->setDragScoller(Lcom/android/launcher2/DragScroller;)V

    .line 969
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragController;->setScrollView(Landroid/view/View;)V

    .line 970
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragController;->setMoveTarget(Landroid/view/View;)V

    .line 971
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragController;->addDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 972
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    if-eqz v1, :cond_1

    .line 973
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher2/SearchDropTargetBar;->setup(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/DragController;)V

    .line 975
    :cond_1
    return-void
.end method

.method private showAppsCustomizeHelper(ZZ)V
    .locals 23
    .param p1, "animated"    # Z
    .param p2, "springLoaded"    # Z

    .prologue
    .line 2485
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    .line 2486
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2487
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    .line 2489
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 2491
    .local v19, "res":Landroid/content/res/Resources;
    const v2, 0x7f0a0004

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v16

    .line 2492
    .local v16, "duration":I
    const v2, 0x7f0a0007

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    .line 2493
    .local v17, "fadeDuration":I
    const v2, 0x7f0a0006

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v10, v2

    .line 2494
    .local v10, "scale":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 2495
    .local v5, "fromView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    .line 2496
    .local v4, "toView":Lcom/android/launcher2/AppsCustomizeTabHost;
    const v2, 0x7f0a000b

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v21

    .line 2499
    .local v21, "startDelay":I
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v10}, Lcom/android/launcher2/Launcher;->setPivotsForZoom(Landroid/view/View;F)V

    .line 2502
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    sget-object v3, Lcom/android/launcher2/Workspace$State;->SMALL:Lcom/android/launcher2/Workspace$State;

    move/from16 v0, p1

    invoke-virtual {v2, v3, v0}, Lcom/android/launcher2/Workspace;->getChangeStateAnimation(Lcom/android/launcher2/Workspace$State;Z)Landroid/animation/Animator;

    move-result-object v22

    .line 2505
    .local v22, "workspaceAnim":Landroid/animation/Animator;
    if-eqz p1, :cond_5

    .line 2506
    invoke-virtual {v4, v10}, Lcom/android/launcher2/AppsCustomizeTabHost;->setScaleX(F)V

    .line 2507
    invoke-virtual {v4, v10}, Lcom/android/launcher2/AppsCustomizeTabHost;->setScaleY(F)V

    .line 2508
    new-instance v20, Lcom/android/launcher2/LauncherViewPropertyAnimator;

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Lcom/android/launcher2/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 2509
    .local v20, "scaleAnim":Lcom/android/launcher2/LauncherViewPropertyAnimator;
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/android/launcher2/LauncherViewPropertyAnimator;->scaleX(F)Lcom/android/launcher2/LauncherViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lcom/android/launcher2/LauncherViewPropertyAnimator;->scaleY(F)Lcom/android/launcher2/LauncherViewPropertyAnimator;

    move-result-object v2

    move/from16 v0, v16

    int-to-long v11, v0

    invoke-virtual {v2, v11, v12}, Lcom/android/launcher2/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    new-instance v3, Lcom/android/launcher2/Workspace$ZoomOutInterpolator;

    invoke-direct {v3}, Lcom/android/launcher2/Workspace$ZoomOutInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2514
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->setVisibility(I)V

    .line 2515
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->setAlpha(F)V

    .line 2516
    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v4, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    move/from16 v0, v17

    int-to-long v11, v0

    invoke-virtual {v2, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 2519
    .local v13, "alphaAnim":Landroid/animation/ObjectAnimator;
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v13, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2520
    new-instance v2, Lcom/android/launcher2/Launcher$12;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v5, v4}, Lcom/android/launcher2/Launcher$12;-><init>(Lcom/android/launcher2/Launcher;Landroid/view/View;Lcom/android/launcher2/AppsCustomizeTabHost;)V

    invoke-virtual {v13, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2534
    invoke-static {}, Lcom/android/launcher2/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    .line 2535
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    move/from16 v0, v21

    int-to-long v11, v0

    invoke-virtual {v2, v11, v12}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    .line 2536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v13}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    move/from16 v0, v21

    int-to-long v11, v0

    invoke-virtual {v2, v11, v12}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    .line 2538
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/launcher2/Launcher$13;

    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher2/Launcher$13;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/AppsCustomizeTabHost;Landroid/view/View;ZZ)V

    invoke-virtual {v9, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2576
    if-eqz v22, :cond_1

    .line 2577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2580
    :cond_1
    const/4 v14, 0x0

    .line 2583
    .local v14, "delayAnim":Z
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v5, v1, v2}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 2584
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v4, v1, v2}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 2588
    invoke-interface {v4}, Lcom/android/launcher2/LauncherTransitionable;->getContent()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getMeasuredWidth()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v4}, Lcom/android/launcher2/AppsCustomizeTabHost;->getMeasuredWidth()I

    move-result v2

    if-nez v2, :cond_3

    .line 2591
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v18

    .line 2592
    .local v18, "observer":Landroid/view/ViewTreeObserver;
    const/4 v14, 0x1

    .line 2597
    :goto_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    .line 2598
    .local v8, "stateAnimation":Landroid/animation/AnimatorSet;
    new-instance v6, Lcom/android/launcher2/Launcher$14;

    move-object/from16 v7, p0

    move-object v9, v4

    move-object v11, v5

    move/from16 v12, p1

    invoke-direct/range {v6 .. v12}, Lcom/android/launcher2/Launcher$14;-><init>(Lcom/android/launcher2/Launcher;Landroid/animation/AnimatorSet;Lcom/android/launcher2/AppsCustomizeTabHost;FLandroid/view/View;Z)V

    .line 2618
    .local v6, "startAnimRunnable":Ljava/lang/Runnable;
    if-eqz v14, :cond_4

    .line 2619
    new-instance v15, Lcom/android/launcher2/Launcher$15;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v15, v0, v4, v6, v1}, Lcom/android/launcher2/Launcher$15;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/AppsCustomizeTabHost;Ljava/lang/Runnable;Landroid/view/ViewTreeObserver;)V

    .line 2625
    .local v15, "delayedStart":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2655
    .end local v6    # "startAnimRunnable":Ljava/lang/Runnable;
    .end local v8    # "stateAnimation":Landroid/animation/AnimatorSet;
    .end local v13    # "alphaAnim":Landroid/animation/ObjectAnimator;
    .end local v14    # "delayAnim":Z
    .end local v15    # "delayedStart":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .end local v18    # "observer":Landroid/view/ViewTreeObserver;
    .end local v20    # "scaleAnim":Lcom/android/launcher2/LauncherViewPropertyAnimator;
    :goto_1
    return-void

    .line 2594
    .restart local v13    # "alphaAnim":Landroid/animation/ObjectAnimator;
    .restart local v14    # "delayAnim":Z
    .restart local v20    # "scaleAnim":Lcom/android/launcher2/LauncherViewPropertyAnimator;
    :cond_3
    const/16 v18, 0x0

    .restart local v18    # "observer":Landroid/view/ViewTreeObserver;
    goto :goto_0

    .line 2627
    .restart local v6    # "startAnimRunnable":Ljava/lang/Runnable;
    .restart local v8    # "stateAnimation":Landroid/animation/AnimatorSet;
    :cond_4
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 2630
    .end local v6    # "startAnimRunnable":Ljava/lang/Runnable;
    .end local v8    # "stateAnimation":Landroid/animation/AnimatorSet;
    .end local v13    # "alphaAnim":Landroid/animation/ObjectAnimator;
    .end local v14    # "delayAnim":Z
    .end local v18    # "observer":Landroid/view/ViewTreeObserver;
    .end local v20    # "scaleAnim":Lcom/android/launcher2/LauncherViewPropertyAnimator;
    :cond_5
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->setTranslationX(F)V

    .line 2631
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->setTranslationY(F)V

    .line 2632
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v4, v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->setScaleX(F)V

    .line 2633
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v4, v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->setScaleY(F)V

    .line 2634
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->setVisibility(I)V

    .line 2635
    invoke-virtual {v4}, Lcom/android/launcher2/AppsCustomizeTabHost;->bringToFront()V

    .line 2637
    if-nez p2, :cond_6

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v2

    if-nez v2, :cond_6

    .line 2639
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->hideScrollingIndicator(Z)V

    .line 2640
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->hideDockDivider()V

    .line 2643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    if-eqz v2, :cond_6

    .line 2644
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/SearchDropTargetBar;->hideSearchBar(Z)V

    .line 2647
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v5, v1, v2}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 2648
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v5, v1, v2}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V

    .line 2649
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v5, v1, v2}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZ)V

    .line 2650
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v4, v1, v2}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZ)V

    .line 2651
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v4, v1, v2}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionStart(Landroid/view/View;ZZ)V

    .line 2652
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v4, v1, v2}, Lcom/android/launcher2/Launcher;->dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZ)V

    .line 2653
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Launcher;->updateWallpaperVisibility(Z)V

    goto :goto_1

    .line 2516
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private shrinkAndFadeInFolderIcon(Lcom/android/launcher2/FolderIcon;)V
    .locals 10
    .param p1, "fi"    # Lcom/android/launcher2/FolderIcon;

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2220
    if-nez p1, :cond_0

    .line 2245
    :goto_0
    return-void

    .line 2221
    :cond_0
    const-string v5, "alpha"

    new-array v6, v8, [F

    aput v9, v6, v7

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 2222
    .local v0, "alpha":Landroid/animation/PropertyValuesHolder;
    const-string v5, "scaleX"

    new-array v6, v8, [F

    aput v9, v6, v7

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 2223
    .local v3, "scaleX":Landroid/animation/PropertyValuesHolder;
    const-string v5, "scaleY"

    new-array v6, v8, [F

    aput v9, v6, v7

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 2225
    .local v4, "scaleY":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {p1}, Lcom/android/launcher2/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 2228
    .local v1, "cl":Lcom/android/launcher2/CellLayout;
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Lcom/android/launcher2/DragLayer;->removeView(Landroid/view/View;)V

    .line 2229
    invoke-direct {p0, p1}, Lcom/android/launcher2/Launcher;->copyFolderIconToImage(Lcom/android/launcher2/FolderIcon;)V

    .line 2230
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v6, v7

    aput-object v3, v6, v8

    const/4 v7, 0x2

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Lcom/android/launcher2/LauncherAnimUtils;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 2232
    .local v2, "oa":Landroid/animation/ObjectAnimator;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0015

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2233
    new-instance v5, Lcom/android/launcher2/Launcher$11;

    invoke-direct {v5, p0, v1, p1}, Lcom/android/launcher2/Launcher$11;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/FolderIcon;)V

    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2244
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private skipCustomClingIfNoAccounts()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 3781
    const v5, 0x7f070026

    invoke-virtual {p0, v5}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Cling;

    .line 3782
    .local v2, "cling":Lcom/android/launcher2/Cling;
    invoke-virtual {v2}, Lcom/android/launcher2/Cling;->getDrawIdentifier()Ljava/lang/String;

    move-result-object v5

    const-string v6, "workspace_custom"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 3783
    .local v3, "customCling":Z
    if-eqz v3, :cond_0

    .line 3784
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 3785
    .local v1, "am":Landroid/accounts/AccountManager;
    const-string v5, "com.google"

    invoke-virtual {v1, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 3786
    .local v0, "accounts":[Landroid/accounts/Account;
    array-length v5, v0

    if-nez v5, :cond_0

    const/4 v4, 0x1

    .line 3788
    .end local v0    # "accounts":[Landroid/accounts/Account;
    .end local v1    # "am":Landroid/accounts/AccountManager;
    :cond_0
    return v4
.end method

.method private startWallpaper()V
    .locals 3

    .prologue
    .line 1844
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->showWorkspace(Z)V

    .line 1845
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1846
    .local v1, "pickWallpaper":Landroid/content/Intent;
    const v2, 0x7f0d0004

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 1859
    .local v0, "chooser":Landroid/content/Intent;
    const/16 v2, 0xa

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher2/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1860
    return-void
.end method

.method private updateAppMarketIcon()V
    .locals 9

    .prologue
    const v8, 0x7f070008

    const/4 v7, 0x0

    .line 3184
    invoke-virtual {p0, v8}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3185
    .local v3, "marketButton":Landroid/view/View;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "android.intent.category.APP_MARKET"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 3188
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 3189
    .local v0, "activityName":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 3190
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->getCurrentOrientationIndexForGlobalIcons()I

    move-result v1

    .line 3191
    .local v1, "coi":I
    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mAppMarketIntent:Landroid/content/Intent;

    .line 3192
    sget-object v4, Lcom/android/launcher2/Launcher;->sAppMarketIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    const v5, 0x7f020023

    const-string v6, "com.android.launcher.toolbar_icon"

    invoke-direct {p0, v8, v0, v5, v6}, Lcom/android/launcher2/Launcher;->updateTextButtonWithIconFromExternalActivity(ILandroid/content/ComponentName;ILjava/lang/String;)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    aput-object v5, v4, v1

    .line 3195
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3202
    .end local v1    # "coi":I
    :goto_0
    return-void

    .line 3199
    :cond_0
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3200
    invoke-virtual {v3, v7}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateAppMarketIcon(Landroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 6
    .param p1, "d"    # Landroid/graphics/drawable/Drawable$ConstantState;

    .prologue
    const/4 v5, 0x0

    .line 3206
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 3207
    .local v2, "r":Landroid/content/res/Resources;
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3208
    .local v1, "marketIconDrawable":Landroid/graphics/drawable/Drawable;
    const v4, 0x7f0b001e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 3209
    .local v3, "w":I
    const v4, 0x7f0b001f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 3210
    .local v0, "h":I
    invoke-virtual {v1, v5, v5, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3212
    const v4, 0x7f070008

    invoke-direct {p0, v4, v1}, Lcom/android/launcher2/Launcher;->updateTextButtonWithDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 3213
    return-void
.end method

.method private updateButtonWithDrawable(ILandroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 2
    .param p1, "buttonId"    # I
    .param p2, "d"    # Landroid/graphics/drawable/Drawable$ConstantState;

    .prologue
    .line 3063
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3064
    .local v0, "button":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3065
    return-void
.end method

.method private updateButtonWithIconFromExternalActivity(ILandroid/content/ComponentName;ILjava/lang/String;)Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 3
    .param p1, "buttonId"    # I
    .param p2, "activityName"    # Landroid/content/ComponentName;
    .param p3, "fallbackDrawableId"    # I
    .param p4, "toolbarResourceName"    # Ljava/lang/String;

    .prologue
    .line 3040
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3041
    .local v0, "button":Landroid/widget/ImageView;
    invoke-direct {p0, p2, p4}, Lcom/android/launcher2/Launcher;->getExternalPackageToolbarIcon(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3043
    .local v1, "toolbarIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 3046
    if-nez v1, :cond_1

    .line 3047
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3053
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    :goto_1
    return-object v2

    .line 3049
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3053
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateGlobalIcons()V
    .locals 4

    .prologue
    .line 435
    const/4 v1, 0x0

    .line 436
    .local v1, "searchVisible":Z
    const/4 v2, 0x0

    .line 438
    .local v2, "voiceVisible":Z
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->getCurrentOrientationIndexForGlobalIcons()I

    move-result v0

    .line 439
    .local v0, "coi":I
    sget-object v3, Lcom/android/launcher2/Launcher;->sGlobalSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/launcher2/Launcher;->sVoiceSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/launcher2/Launcher;->sAppMarketIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v3, v3, v0

    if-nez v3, :cond_1

    .line 441
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateAppMarketIcon()V

    .line 442
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateGlobalSearchIcon()Z

    move-result v1

    .line 443
    invoke-direct {p0, v1}, Lcom/android/launcher2/Launcher;->updateVoiceSearchIcon(Z)Z

    move-result v2

    .line 445
    :cond_1
    sget-object v3, Lcom/android/launcher2/Launcher;->sGlobalSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v3, v3, v0

    if-eqz v3, :cond_2

    .line 446
    sget-object v3, Lcom/android/launcher2/Launcher;->sGlobalSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v3, v3, v0

    invoke-direct {p0, v3}, Lcom/android/launcher2/Launcher;->updateGlobalSearchIcon(Landroid/graphics/drawable/Drawable$ConstantState;)V

    .line 447
    const/4 v1, 0x1

    .line 449
    :cond_2
    sget-object v3, Lcom/android/launcher2/Launcher;->sVoiceSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v3, v3, v0

    if-eqz v3, :cond_3

    .line 450
    sget-object v3, Lcom/android/launcher2/Launcher;->sVoiceSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v3, v3, v0

    invoke-direct {p0, v3}, Lcom/android/launcher2/Launcher;->updateVoiceSearchIcon(Landroid/graphics/drawable/Drawable$ConstantState;)V

    .line 451
    const/4 v2, 0x1

    .line 453
    :cond_3
    sget-object v3, Lcom/android/launcher2/Launcher;->sAppMarketIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v3, v3, v0

    if-eqz v3, :cond_4

    .line 454
    sget-object v3, Lcom/android/launcher2/Launcher;->sAppMarketIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v3, v3, v0

    invoke-direct {p0, v3}, Lcom/android/launcher2/Launcher;->updateAppMarketIcon(Landroid/graphics/drawable/Drawable$ConstantState;)V

    .line 456
    :cond_4
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    if-eqz v3, :cond_5

    .line 457
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    invoke-virtual {v3, v1, v2}, Lcom/android/launcher2/SearchDropTargetBar;->onSearchPackagesChanged(ZZ)V

    .line 459
    :cond_5
    return-void
.end method

.method private updateGlobalSearchIcon(Landroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 4
    .param p1, "d"    # Landroid/graphics/drawable/Drawable$ConstantState;

    .prologue
    const v3, 0x7f07002f

    .line 3116
    const v2, 0x7f070030

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3117
    .local v1, "searchButtonContainer":Landroid/view/View;
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3118
    .local v0, "searchButton":Landroid/view/View;
    invoke-direct {p0, v3, p1}, Lcom/android/launcher2/Launcher;->updateButtonWithDrawable(ILandroid/graphics/drawable/Drawable$ConstantState;)V

    .line 3119
    invoke-direct {p0, v1, v0}, Lcom/android/launcher2/Launcher;->invalidatePressedFocusedStates(Landroid/view/View;Landroid/view/View;)V

    .line 3120
    return-void
.end method

.method private updateGlobalSearchIcon()Z
    .locals 13

    .prologue
    const v12, 0x7f02001d

    const v11, 0x7f07002f

    const/4 v8, 0x0

    const/16 v10, 0x8

    .line 3078
    const v9, 0x7f070030

    invoke-virtual {p0, v9}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3079
    .local v3, "searchButtonContainer":Landroid/view/View;
    invoke-virtual {p0, v11}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 3080
    .local v2, "searchButton":Landroid/widget/ImageView;
    const v9, 0x7f070031

    invoke-virtual {p0, v9}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 3081
    .local v6, "voiceButtonContainer":Landroid/view/View;
    const v9, 0x7f070029

    invoke-virtual {p0, v9}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 3082
    .local v5, "voiceButton":Landroid/view/View;
    const v9, 0x7f070028

    invoke-virtual {p0, v9}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 3084
    .local v7, "voiceButtonProxy":Landroid/view/View;
    const-string v9, "search"

    invoke-virtual {p0, v9}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/SearchManager;

    .line 3086
    .local v4, "searchManager":Landroid/app/SearchManager;
    invoke-virtual {v4}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 3087
    .local v0, "activityName":Landroid/content/ComponentName;
    if-eqz v0, :cond_3

    .line 3088
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->getCurrentOrientationIndexForGlobalIcons()I

    move-result v1

    .line 3089
    .local v1, "coi":I
    sget-object v9, Lcom/android/launcher2/Launcher;->sGlobalSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    const-string v10, "com.android.launcher.toolbar_search_icon"

    invoke-direct {p0, v11, v0, v12, v10}, Lcom/android/launcher2/Launcher;->updateButtonWithIconFromExternalActivity(ILandroid/content/ComponentName;ILjava/lang/String;)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v10

    aput-object v10, v9, v1

    .line 3092
    sget-object v9, Lcom/android/launcher2/Launcher;->sGlobalSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v9, v9, v1

    if-nez v9, :cond_0

    .line 3093
    sget-object v9, Lcom/android/launcher2/Launcher;->sGlobalSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    const-string v10, "com.android.launcher.toolbar_icon"

    invoke-direct {p0, v11, v0, v12, v10}, Lcom/android/launcher2/Launcher;->updateButtonWithIconFromExternalActivity(ILandroid/content/ComponentName;ILjava/lang/String;)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v10

    aput-object v10, v9, v1

    .line 3098
    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 3099
    :cond_1
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3100
    invoke-direct {p0, v3, v2}, Lcom/android/launcher2/Launcher;->invalidatePressedFocusedStates(Landroid/view/View;Landroid/view/View;)V

    .line 3101
    const/4 v8, 0x1

    .line 3111
    .end local v1    # "coi":I
    :cond_2
    :goto_0
    return v8

    .line 3104
    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 3105
    :cond_4
    if-eqz v6, :cond_5

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 3106
    :cond_5
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3107
    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 3108
    if-eqz v7, :cond_2

    .line 3109
    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateRunning()V
    .locals 11

    .prologue
    const-wide/16 v1, 0x4e20

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1303
    iget-boolean v5, p0, Lcom/android/launcher2/Launcher;->mVisible:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/android/launcher2/Launcher;->mUserPresent:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    move v0, v3

    .line 1304
    .local v0, "autoAdvanceRunning":Z
    :goto_0
    iget-boolean v5, p0, Lcom/android/launcher2/Launcher;->mAutoAdvanceRunning:Z

    if-eq v0, v5, :cond_0

    .line 1305
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mAutoAdvanceRunning:Z

    .line 1306
    if-eqz v0, :cond_3

    .line 1307
    iget-wide v3, p0, Lcom/android/launcher2/Launcher;->mAutoAdvanceTimeLeft:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 1308
    .local v1, "delay":J
    :goto_1
    invoke-direct {p0, v1, v2}, Lcom/android/launcher2/Launcher;->sendAdvanceMessage(J)V

    .line 1318
    .end local v1    # "delay":J
    :cond_0
    :goto_2
    return-void

    .end local v0    # "autoAdvanceRunning":Z
    :cond_1
    move v0, v4

    .line 1303
    goto :goto_0

    .line 1307
    .restart local v0    # "autoAdvanceRunning":Z
    :cond_2
    iget-wide v1, p0, Lcom/android/launcher2/Launcher;->mAutoAdvanceTimeLeft:J

    goto :goto_1

    .line 1310
    :cond_3
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1311
    const-wide/16 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/launcher2/Launcher;->mAutoAdvanceSentTime:J

    sub-long/2addr v7, v9

    sub-long v7, v1, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/launcher2/Launcher;->mAutoAdvanceTimeLeft:J

    .line 1314
    :cond_4
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1315
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2
.end method

.method private updateTextButtonWithDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "buttonId"    # I
    .param p2, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 3058
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3059
    .local v0, "button":Landroid/widget/TextView;
    invoke-virtual {v0, p2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3060
    return-void
.end method

.method private updateTextButtonWithIconFromExternalActivity(ILandroid/content/ComponentName;ILjava/lang/String;)Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 8
    .param p1, "buttonId"    # I
    .param p2, "activityName"    # Landroid/content/ComponentName;
    .param p3, "fallbackDrawableId"    # I
    .param p4, "toolbarResourceName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 3013
    invoke-direct {p0, p2, p4}, Lcom/android/launcher2/Launcher;->getExternalPackageToolbarIcon(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 3014
    .local v3, "toolbarIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 3015
    .local v2, "r":Landroid/content/res/Resources;
    const v6, 0x7f0b001e

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 3016
    .local v4, "w":I
    const v6, 0x7f0b001f

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 3018
    .local v1, "h":I
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3020
    .local v0, "button":Landroid/widget/TextView;
    if-nez v3, :cond_1

    .line 3021
    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 3022
    invoke-virtual {v3, v7, v7, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3023
    if-eqz v0, :cond_0

    .line 3024
    invoke-virtual {v0, v3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3032
    :cond_0
    :goto_0
    return-object v5

    .line 3028
    :cond_1
    invoke-virtual {v3, v7, v7, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3029
    if-eqz v0, :cond_2

    .line 3030
    invoke-virtual {v0, v3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3032
    :cond_2
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    goto :goto_0
.end method

.method private updateVoiceSearchIcon(Landroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 4
    .param p1, "d"    # Landroid/graphics/drawable/Drawable$ConstantState;

    .prologue
    const v3, 0x7f070029

    .line 3174
    const v2, 0x7f070031

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3175
    .local v1, "voiceButtonContainer":Landroid/view/View;
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3176
    .local v0, "voiceButton":Landroid/view/View;
    invoke-direct {p0, v3, p1}, Lcom/android/launcher2/Launcher;->updateButtonWithDrawable(ILandroid/graphics/drawable/Drawable$ConstantState;)V

    .line 3177
    invoke-direct {p0, v1, v0}, Lcom/android/launcher2/Launcher;->invalidatePressedFocusedStates(Landroid/view/View;Landroid/view/View;)V

    .line 3178
    return-void
.end method

.method private updateVoiceSearchIcon(Z)Z
    .locals 13
    .param p1, "searchVisible"    # Z

    .prologue
    const v12, 0x7f02001e

    const v11, 0x7f070029

    const/16 v10, 0x8

    const/4 v8, 0x0

    .line 3123
    const v9, 0x7f070031

    invoke-virtual {p0, v9}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 3124
    .local v6, "voiceButtonContainer":Landroid/view/View;
    invoke-virtual {p0, v11}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 3125
    .local v5, "voiceButton":Landroid/view/View;
    const v9, 0x7f070028

    invoke-virtual {p0, v9}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 3128
    .local v7, "voiceButtonProxy":Landroid/view/View;
    const-string v9, "search"

    invoke-virtual {p0, v9}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/SearchManager;

    .line 3130
    .local v4, "searchManager":Landroid/app/SearchManager;
    invoke-virtual {v4}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v2

    .line 3132
    .local v2, "globalSearchActivity":Landroid/content/ComponentName;
    const/4 v0, 0x0

    .line 3133
    .local v0, "activityName":Landroid/content/ComponentName;
    if-eqz v2, :cond_0

    .line 3135
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.speech.action.WEB_SEARCH"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3136
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3137
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 3140
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_0
    if-nez v0, :cond_1

    .line 3143
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.speech.action.WEB_SEARCH"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3144
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 3146
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_1
    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    .line 3147
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->getCurrentOrientationIndexForGlobalIcons()I

    move-result v1

    .line 3148
    .local v1, "coi":I
    sget-object v9, Lcom/android/launcher2/Launcher;->sVoiceSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    const-string v10, "com.android.launcher.toolbar_voice_search_icon"

    invoke-direct {p0, v11, v0, v12, v10}, Lcom/android/launcher2/Launcher;->updateButtonWithIconFromExternalActivity(ILandroid/content/ComponentName;ILjava/lang/String;)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v10

    aput-object v10, v9, v1

    .line 3151
    sget-object v9, Lcom/android/launcher2/Launcher;->sVoiceSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v9, v9, v1

    if-nez v9, :cond_2

    .line 3152
    sget-object v9, Lcom/android/launcher2/Launcher;->sVoiceSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    const-string v10, "com.android.launcher.toolbar_icon"

    invoke-direct {p0, v11, v0, v12, v10}, Lcom/android/launcher2/Launcher;->updateButtonWithIconFromExternalActivity(ILandroid/content/ComponentName;ILjava/lang/String;)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v10

    aput-object v10, v9, v1

    .line 3156
    :cond_2
    if-eqz v6, :cond_3

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 3157
    :cond_3
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 3158
    if-eqz v7, :cond_4

    .line 3159
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 3161
    :cond_4
    invoke-direct {p0, v6, v5}, Lcom/android/launcher2/Launcher;->invalidatePressedFocusedStates(Landroid/view/View;Landroid/view/View;)V

    .line 3162
    const/4 v8, 0x1

    .line 3169
    .end local v1    # "coi":I
    :cond_5
    :goto_0
    return v8

    .line 3164
    :cond_6
    if-eqz v6, :cond_7

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 3165
    :cond_7
    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 3166
    if-eqz v7, :cond_5

    .line 3167
    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private static writeConfiguration(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "configuration"    # Lcom/android/launcher2/Launcher$LocaleConfiguration;

    .prologue
    .line 539
    const/4 v1, 0x0

    .line 541
    .local v1, "out":Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/DataOutputStream;

    const-string v3, "launcher.preferences"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 542
    .end local v1    # "out":Ljava/io/DataOutputStream;
    .local v2, "out":Ljava/io/DataOutputStream;
    :try_start_1
    iget-object v3, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 543
    iget v3, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mcc:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 544
    iget v3, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mnc:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 545
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 552
    if-eqz v2, :cond_2

    .line 554
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 560
    .end local v2    # "out":Ljava/io/DataOutputStream;
    .restart local v1    # "out":Ljava/io/DataOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 555
    .end local v1    # "out":Ljava/io/DataOutputStream;
    .restart local v2    # "out":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 557
    .end local v2    # "out":Ljava/io/DataOutputStream;
    .restart local v1    # "out":Ljava/io/DataOutputStream;
    goto :goto_0

    .line 546
    :catch_1
    move-exception v3

    .line 552
    :goto_1
    if-eqz v1, :cond_0

    .line 554
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 555
    :catch_2
    move-exception v3

    goto :goto_0

    .line 548
    :catch_3
    move-exception v0

    .line 550
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    const-string v3, "launcher.preferences"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 552
    if-eqz v1, :cond_0

    .line 554
    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 555
    :catch_4
    move-exception v3

    goto :goto_0

    .line 552
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v1, :cond_1

    .line 554
    :try_start_6
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 557
    :cond_1
    :goto_4
    throw v3

    .line 555
    :catch_5
    move-exception v4

    goto :goto_4

    .line 552
    .end local v1    # "out":Ljava/io/DataOutputStream;
    .restart local v2    # "out":Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/DataOutputStream;
    .restart local v1    # "out":Ljava/io/DataOutputStream;
    goto :goto_3

    .line 548
    .end local v1    # "out":Ljava/io/DataOutputStream;
    .restart local v2    # "out":Ljava/io/DataOutputStream;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/DataOutputStream;
    .restart local v1    # "out":Ljava/io/DataOutputStream;
    goto :goto_2

    .line 546
    .end local v1    # "out":Ljava/io/DataOutputStream;
    .restart local v2    # "out":Ljava/io/DataOutputStream;
    :catch_7
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/DataOutputStream;
    .restart local v1    # "out":Ljava/io/DataOutputStream;
    goto :goto_1

    .end local v1    # "out":Ljava/io/DataOutputStream;
    .restart local v2    # "out":Ljava/io/DataOutputStream;
    :cond_2
    move-object v1, v2

    .end local v2    # "out":Ljava/io/DataOutputStream;
    .restart local v1    # "out":Ljava/io/DataOutputStream;
    goto :goto_0
.end method


# virtual methods
.method addAppWidgetFromDrop(Lcom/android/launcher2/PendingAddWidgetInfo;JI[I[I[I)V
    .locals 7
    .param p1, "info"    # Lcom/android/launcher2/PendingAddWidgetInfo;
    .param p2, "container"    # J
    .param p4, "screen"    # I
    .param p5, "cell"    # [I
    .param p6, "span"    # [I
    .param p7, "loc"    # [I

    .prologue
    .line 1750
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->resetAddInfo()V

    .line 1751
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput-wide p2, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->container:J

    iput-wide p2, v5, Lcom/android/launcher2/ItemInfo;->container:J

    .line 1752
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput p4, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->screen:I

    iput p4, v5, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 1753
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput-object p7, v5, Lcom/android/launcher2/ItemInfo;->dropPos:[I

    .line 1754
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v6, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->minSpanX:I

    iput v6, v5, Lcom/android/launcher2/ItemInfo;->minSpanX:I

    .line 1755
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v6, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->minSpanY:I

    iput v6, v5, Lcom/android/launcher2/ItemInfo;->minSpanY:I

    .line 1757
    if-eqz p5, :cond_0

    .line 1758
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    const/4 v6, 0x0

    aget v6, p5, v6

    iput v6, v5, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 1759
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    const/4 v6, 0x1

    aget v6, p5, v6

    iput v6, v5, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 1761
    :cond_0
    if-eqz p6, :cond_1

    .line 1762
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    const/4 v6, 0x0

    aget v6, p6, v6

    iput v6, v5, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 1763
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    const/4 v6, 0x1

    aget v6, p6, v6

    iput v6, v5, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 1766
    :cond_1
    iget-object v1, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    .line 1768
    .local v1, "hostView":Landroid/appwidget/AppWidgetHostView;
    if-eqz v1, :cond_2

    .line 1769
    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v0

    .line 1770
    .local v0, "appWidgetId":I
    iget-object v5, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {p0, v0, p1, v1, v5}, Lcom/android/launcher2/Launcher;->addAppWidgetImpl(ILcom/android/launcher2/ItemInfo;Landroid/appwidget/AppWidgetHostView;Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 1797
    :goto_0
    return-void

    .line 1774
    .end local v0    # "appWidgetId":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 1775
    .restart local v0    # "appWidgetId":I
    iget-object v3, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->bindOptions:Landroid/os/Bundle;

    .line 1777
    .local v3, "options":Landroid/os/Bundle;
    const/4 v4, 0x0

    .line 1778
    .local v4, "success":Z
    if-eqz v3, :cond_3

    .line 1779
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v6, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5, v0, v6, v3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v4

    .line 1785
    :goto_1
    if-eqz v4, :cond_4

    .line 1786
    const/4 v5, 0x0

    iget-object v6, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {p0, v0, p1, v5, v6}, Lcom/android/launcher2/Launcher;->addAppWidgetImpl(ILcom/android/launcher2/ItemInfo;Landroid/appwidget/AppWidgetHostView;Landroid/appwidget/AppWidgetProviderInfo;)V

    goto :goto_0

    .line 1782
    :cond_3
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v6, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5, v0, v6}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result v4

    goto :goto_1

    .line 1788
    :cond_4
    iget-object v5, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iput-object v5, p0, Lcom/android/launcher2/Launcher;->mPendingAddWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 1789
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.appwidget.action.APPWIDGET_BIND"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1790
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "appWidgetId"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1791
    const-string v5, "appWidgetProvider"

    iget-object v6, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1794
    const/16 v5, 0xb

    invoke-virtual {p0, v2, v5}, Lcom/android/launcher2/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method addAppWidgetImpl(ILcom/android/launcher2/ItemInfo;Landroid/appwidget/AppWidgetHostView;Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 8
    .param p1, "appWidgetId"    # I
    .param p2, "info"    # Lcom/android/launcher2/ItemInfo;
    .param p3, "boundWidget"    # Landroid/appwidget/AppWidgetHostView;
    .param p4, "appWidgetInfo"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 1698
    iget-object v0, p4, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 1699
    iput-object p4, p0, Lcom/android/launcher2/Launcher;->mPendingAddWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 1702
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1703
    .local v7, "intent":Landroid/content/Intent;
    iget-object v0, p4, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1704
    const-string v0, "appWidgetId"

    invoke-virtual {v7, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1705
    const/4 v0, 0x5

    invoke-virtual {p0, v7, v0}, Lcom/android/launcher2/Launcher;->startActivityForResultSafely(Landroid/content/Intent;I)V

    .line 1713
    .end local v7    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1708
    :cond_0
    iget-wide v2, p2, Lcom/android/launcher2/ItemInfo;->container:J

    iget v4, p2, Lcom/android/launcher2/ItemInfo;->screen:I

    move-object v0, p0

    move v1, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/Launcher;->completeAddAppWidget(IJILandroid/appwidget/AppWidgetHostView;Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 1711
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/Launcher;->exitSpringLoadedDragModeDelayed(ZZLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method addExternalItemToScreen(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;)V
    .locals 1
    .param p1, "itemInfo"    # Lcom/android/launcher2/ItemInfo;
    .param p2, "layout"    # Lcom/android/launcher2/CellLayout;

    .prologue
    .line 2968
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/Workspace;->addExternalItemToScreen(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2969
    invoke-virtual {p0, p2}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->showOutOfSpaceMessage(Z)V

    .line 2971
    :cond_0
    return-void
.end method

.method addFolder(Lcom/android/launcher2/CellLayout;JIII)Lcom/android/launcher2/FolderIcon;
    .locals 12
    .param p1, "layout"    # Lcom/android/launcher2/CellLayout;
    .param p2, "container"    # J
    .param p4, "screen"    # I
    .param p5, "cellX"    # I
    .param p6, "cellY"    # I

    .prologue
    .line 1823
    new-instance v1, Lcom/android/launcher2/FolderInfo;

    invoke-direct {v1}, Lcom/android/launcher2/FolderInfo;-><init>()V

    .line 1824
    .local v1, "folderInfo":Lcom/android/launcher2/FolderInfo;
    const v0, 0x7f0d0003

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/android/launcher2/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 1827
    const/4 v7, 0x0

    move-object v0, p0

    move-wide v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-static/range {v0 .. v7}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIIIZ)V

    .line 1829
    sget-object v0, Lcom/android/launcher2/Launcher;->sFolders:Ljava/util/HashMap;

    iget-wide v4, v1, Lcom/android/launcher2/FolderInfo;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1832
    const v0, 0x7f04000c

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-static {v0, p0, p1, v1, v2}, Lcom/android/launcher2/FolderIcon;->fromXml(ILcom/android/launcher2/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher2/FolderInfo;Lcom/android/launcher2/IconCache;)Lcom/android/launcher2/FolderIcon;

    move-result-object v3

    .line 1834
    .local v3, "newFolder":Lcom/android/launcher2/FolderIcon;
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v11

    move-wide v4, p2

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v2 .. v11}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    .line 1836
    return-object v3
.end method

.method addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 3
    .param p1, "hostView"    # Landroid/view/View;
    .param p2, "appWidgetInfo"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 1343
    if-eqz p2, :cond_0

    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 1350
    :cond_0
    :goto_0
    return-void

    .line 1344
    :cond_1
    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1345
    .local v0, "v":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/Advanceable;

    if-eqz v1, :cond_0

    .line 1346
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1347
    check-cast v0, Landroid/widget/Advanceable;

    .end local v0    # "v":Landroid/view/View;
    invoke-interface {v0}, Landroid/widget/Advanceable;->fyiWillBeAdvancedByHostKThx()V

    .line 1348
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateRunning()V

    goto :goto_0
.end method

.method public bindAllApplications(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3563
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    new-instance v1, Lcom/android/launcher2/Launcher$25;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher2/Launcher$25;-><init>(Lcom/android/launcher2/Launcher;Ljava/util/ArrayList;)V

    .line 3573
    .local v1, "setAllAppsRunnable":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    const v3, 0x7f07000d

    invoke-virtual {v2, v3}, Lcom/android/launcher2/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3575
    .local v0, "progressBar":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 3576
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3581
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/AppsCustomizeTabHost;->post(Ljava/lang/Runnable;)Z

    .line 3587
    :goto_0
    return-void

    .line 3585
    :cond_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public bindAppWidget(Lcom/android/launcher2/LauncherAppWidgetInfo;)V
    .locals 14
    .param p1, "item"    # Lcom/android/launcher2/LauncherAppWidgetInfo;

    .prologue
    .line 3386
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 3388
    const-wide/16 v12, 0x0

    .line 3392
    .local v12, "start":J
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 3394
    .local v0, "workspace":Lcom/android/launcher2/Workspace;
    iget v10, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->appWidgetId:I

    .line 3395
    .local v10, "appWidgetId":I
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v1, v10}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v11

    .line 3400
    .local v11, "appWidgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v1, p0, v10, v11}, Lcom/android/launcher2/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v1

    iput-object v1, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 3402
    iget-object v1, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1, p1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 3403
    invoke-virtual {p1, p0}, Lcom/android/launcher2/LauncherAppWidgetInfo;->onBindAppWidget(Lcom/android/launcher2/Launcher;)V

    .line 3405
    iget-object v1, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget-wide v2, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->container:J

    iget v4, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->screen:I

    iget v5, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->cellX:I

    iget v6, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->cellY:I

    iget v7, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanX:I

    iget v8, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanY:I

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    .line 3407
    iget-object v1, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p0, v1, v11}, Lcom/android/launcher2/Launcher;->addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 3409
    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->requestLayout()V

    .line 3415
    return-void
.end method

.method public bindAppsAdded(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3595
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 3597
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    if-eqz v0, :cond_0

    .line 3598
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->addApps(Ljava/util/ArrayList;)V

    .line 3600
    :cond_0
    return-void
.end method

.method public bindAppsRemoved(Ljava/util/ArrayList;Z)V
    .locals 1
    .param p2, "permanent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 3624
    .local p1, "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 3625
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->removeItems(Ljava/util/ArrayList;)V

    .line 3628
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    if-eqz v0, :cond_1

    .line 3629
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->removeApps(Ljava/util/ArrayList;)V

    .line 3633
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0, p1, p0}, Lcom/android/launcher2/DragController;->onAppsRemoved(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 3634
    return-void
.end method

.method public bindAppsUpdated(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3608
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 3609
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_0

    .line 3610
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->updateShortcuts(Ljava/util/ArrayList;)V

    .line 3613
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    if-eqz v0, :cond_1

    .line 3614
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->updateApps(Ljava/util/ArrayList;)V

    .line 3616
    :cond_1
    return-void
.end method

.method public bindFolders(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/FolderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3375
    .local p1, "folders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/FolderInfo;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 3376
    sget-object v0, Lcom/android/launcher2/Launcher;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 3377
    sget-object v0, Lcom/android/launcher2/Launcher;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 3378
    return-void
.end method

.method public bindItems(Ljava/util/ArrayList;II)V
    .locals 19
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ItemInfo;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 3317
    .local p1, "shortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 3320
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    .line 3321
    .local v17, "newApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v5, "apps.new.list"

    move-object/from16 v0, v17

    invoke-interface {v3, v5, v0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v17

    .line 3323
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 3324
    .local v1, "workspace":Lcom/android/launcher2/Workspace;
    move/from16 v14, p2

    .local v14, "i":I
    :goto_0
    move/from16 v0, p3

    if-ge v14, v0, :cond_3

    .line 3325
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/launcher2/ItemInfo;

    .line 3328
    .local v16, "item":Lcom/android/launcher2/ItemInfo;
    move-object/from16 v0, v16

    iget-wide v5, v0, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v7, -0x65

    cmp-long v3, v5, v7

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-nez v3, :cond_1

    .line 3324
    :cond_0
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 3333
    :cond_1
    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/launcher2/ItemInfo;->itemType:I

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    move-object/from16 v15, v16

    .line 3336
    check-cast v15, Lcom/android/launcher2/ShortcutInfo;

    .line 3337
    .local v15, "info":Lcom/android/launcher2/ShortcutInfo;
    iget-object v3, v15, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v18

    .line 3338
    .local v18, "uri":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/launcher2/Launcher;->createShortcut(Lcom/android/launcher2/ShortcutInfo;)Landroid/view/View;

    move-result-object v2

    .line 3339
    .local v2, "shortcut":Landroid/view/View;
    move-object/from16 v0, v16

    iget-wide v3, v0, Lcom/android/launcher2/ItemInfo;->container:J

    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/launcher2/ItemInfo;->screen:I

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/launcher2/ItemInfo;->cellX:I

    move-object/from16 v0, v16

    iget v7, v0, Lcom/android/launcher2/ItemInfo;->cellY:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v1 .. v10}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    .line 3341
    const/4 v13, 0x0

    .line 3342
    .local v13, "animateIconUp":Z
    monitor-enter v17

    .line 3343
    :try_start_0
    invoke-interface/range {v17 .. v18}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3344
    invoke-interface/range {v17 .. v18}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v13

    .line 3346
    :cond_2
    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3347
    if-eqz v13, :cond_0

    .line 3349
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 3350
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    .line 3351
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    .line 3352
    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/launcher2/ItemInfo;->screen:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/launcher2/Launcher;->mNewShortcutAnimatePage:I

    .line 3353
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mNewShortcutAnimateViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3354
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mNewShortcutAnimateViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3346
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 3359
    .end local v2    # "shortcut":Landroid/view/View;
    .end local v13    # "animateIconUp":Z
    .end local v15    # "info":Lcom/android/launcher2/ShortcutInfo;
    .end local v18    # "uri":Ljava/lang/String;
    :pswitch_1
    const v6, 0x7f04000c

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object/from16 v5, v16

    check-cast v5, Lcom/android/launcher2/FolderInfo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/Launcher;->mIconCache:Lcom/android/launcher2/IconCache;

    move-object/from16 v0, p0

    invoke-static {v6, v0, v3, v5, v7}, Lcom/android/launcher2/FolderIcon;->fromXml(ILcom/android/launcher2/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher2/FolderInfo;Lcom/android/launcher2/IconCache;)Lcom/android/launcher2/FolderIcon;

    move-result-object v4

    .line 3362
    .local v4, "newFolder":Lcom/android/launcher2/FolderIcon;
    move-object/from16 v0, v16

    iget-wide v5, v0, Lcom/android/launcher2/ItemInfo;->container:J

    move-object/from16 v0, v16

    iget v7, v0, Lcom/android/launcher2/ItemInfo;->screen:I

    move-object/from16 v0, v16

    iget v8, v0, Lcom/android/launcher2/ItemInfo;->cellX:I

    move-object/from16 v0, v16

    iget v9, v0, Lcom/android/launcher2/ItemInfo;->cellY:I

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v3, v1

    invoke-virtual/range {v3 .. v12}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    goto/16 :goto_1

    .line 3368
    .end local v4    # "newFolder":Lcom/android/launcher2/FolderIcon;
    .end local v16    # "item":Lcom/android/launcher2/ItemInfo;
    :cond_3
    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->requestLayout()V

    .line 3369
    return-void

    .line 3333
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bindPackagesUpdated()V
    .locals 1

    .prologue
    .line 3640
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    if-eqz v0, :cond_0

    .line 3641
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizePagedView;->onPackagesUpdated()V

    .line 3643
    :cond_0
    return-void
.end method

.method public bindSearchablesChanged()V
    .locals 3

    .prologue
    .line 3550
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateGlobalSearchIcon()Z

    move-result v0

    .line 3551
    .local v0, "searchVisible":Z
    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->updateVoiceSearchIcon(Z)Z

    move-result v1

    .line 3552
    .local v1, "voiceVisible":Z
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    if-eqz v2, :cond_0

    .line 3553
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher2/SearchDropTargetBar;->onSearchPackagesChanged(ZZ)V

    .line 3555
    :cond_0
    return-void
.end method

.method public closeFolder()V
    .locals 2

    .prologue
    .line 2274
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 2275
    .local v0, "folder":Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_1

    .line 2276
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2277
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->dismissEditingName()V

    .line 2279
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->closeFolder(Lcom/android/launcher2/Folder;)V

    .line 2282
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->dismissFolderCling(Landroid/view/View;)V

    .line 2284
    :cond_1
    return-void
.end method

.method closeFolder(Lcom/android/launcher2/Folder;)V
    .locals 4
    .param p1, "folder"    # Lcom/android/launcher2/Folder;

    .prologue
    .line 2287
    invoke-virtual {p1}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderInfo;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/launcher2/FolderInfo;->opened:Z

    .line 2289
    invoke-virtual {p1}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2290
    .local v1, "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 2291
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v3, p1, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->getViewForTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderIcon;

    .line 2292
    .local v0, "fi":Lcom/android/launcher2/FolderIcon;
    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->shrinkAndFadeInFolderIcon(Lcom/android/launcher2/FolderIcon;)V

    .line 2294
    .end local v0    # "fi":Lcom/android/launcher2/FolderIcon;
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher2/Folder;->animateClosed()V

    .line 2295
    return-void
.end method

.method closeSystemDialogs()V
    .locals 1

    .prologue
    .line 1378
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    .line 1381
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    .line 1382
    return-void
.end method

.method completeAddApplication(Landroid/content/Intent;JIII)V
    .locals 15
    .param p1, "data"    # Landroid/content/Intent;
    .param p2, "container"    # J
    .param p4, "screen"    # I
    .param p5, "cellX"    # I
    .param p6, "cellY"    # I

    .prologue
    .line 1012
    iget-object v14, p0, Lcom/android/launcher2/Launcher;->mTmpAddItemCellCoordinates:[I

    .line 1013
    .local v14, "cellXY":[I
    move-wide/from16 v0, p2

    move/from16 v2, p4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/Launcher;->getCellLayout(JI)Lcom/android/launcher2/CellLayout;

    move-result-object v5

    .line 1016
    .local v5, "layout":Lcom/android/launcher2/CellLayout;
    if-ltz p5, :cond_1

    if-ltz p6, :cond_1

    .line 1017
    const/4 v3, 0x0

    aput p5, v14, v3

    .line 1018
    const/4 v3, 0x1

    aput p6, v14, v3

    .line 1024
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v3, v6, v0, p0}, Lcom/android/launcher2/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v4

    .line 1026
    .local v4, "info":Lcom/android/launcher2/ShortcutInfo;
    if-eqz v4, :cond_2

    .line 1027
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    const/high16 v6, 0x10200000

    invoke-virtual {v4, v3, v6}, Lcom/android/launcher2/ShortcutInfo;->setActivity(Landroid/content/ComponentName;I)V

    .line 1029
    const-wide/16 v6, -0x1

    iput-wide v6, v4, Lcom/android/launcher2/ShortcutInfo;->container:J

    .line 1030
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v6, 0x0

    aget v9, v14, v6

    const/4 v6, 0x1

    aget v10, v14, v6

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v11

    move-wide/from16 v6, p2

    move/from16 v8, p4

    move/from16 v12, p5

    move/from16 v13, p6

    invoke-virtual/range {v3 .. v13}, Lcom/android/launcher2/Workspace;->addApplicationShortcut(Lcom/android/launcher2/ShortcutInfo;Lcom/android/launcher2/CellLayout;JIIIZII)V

    .line 1035
    .end local v4    # "info":Lcom/android/launcher2/ShortcutInfo;
    :goto_0
    return-void

    .line 1019
    :cond_1
    const/4 v3, 0x1

    const/4 v6, 0x1

    invoke-virtual {v5, v14, v3, v6}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1020
    invoke-virtual {p0, v5}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->showOutOfSpaceMessage(Z)V

    goto :goto_0

    .line 1033
    .restart local v4    # "info":Lcom/android/launcher2/ShortcutInfo;
    :cond_2
    const-string v3, "Launcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t find ActivityInfo for selected application: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method createShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher2/ShortcutInfo;)Landroid/view/View;
    .locals 3
    .param p1, "layoutResId"    # I
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "info"    # Lcom/android/launcher2/ShortcutInfo;

    .prologue
    .line 999
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mInflater:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BubbleTextView;

    .line 1000
    .local v0, "favorite":Lcom/android/launcher2/BubbleTextView;
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v0, p3, v1}, Lcom/android/launcher2/BubbleTextView;->applyFromShortcutInfo(Lcom/android/launcher2/ShortcutInfo;Lcom/android/launcher2/IconCache;)V

    .line 1001
    invoke-virtual {v0, p0}, Lcom/android/launcher2/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1002
    return-object v0
.end method

.method createShortcut(Lcom/android/launcher2/ShortcutInfo;)Landroid/view/View;
    .locals 3
    .param p1, "info"    # Lcom/android/launcher2/ShortcutInfo;

    .prologue
    .line 985
    const v1, 0x7f040002

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/launcher2/Launcher;->createShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher2/ShortcutInfo;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method disableWallpaperIfInAllApps()V
    .locals 1

    .prologue
    .line 2386
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isAllAppsVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2387
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->isTransitioning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2389
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->updateWallpaperVisibility(Z)V

    .line 2392
    :cond_0
    return-void
.end method

.method public dismissAllAppsCling(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3846
    const v1, 0x7f07000c

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Cling;

    .line 3847
    .local v0, "cling":Lcom/android/launcher2/Cling;
    const-string v1, "cling.allapps.dismissed"

    const/16 v2, 0xfa

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher2/Launcher;->dismissCling(Lcom/android/launcher2/Cling;Ljava/lang/String;I)V

    .line 3848
    return-void
.end method

.method public dismissFolderCling(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3850
    const v1, 0x7f070027

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Cling;

    .line 3851
    .local v0, "cling":Lcom/android/launcher2/Cling;
    const-string v1, "cling.folder.dismissed"

    const/16 v2, 0xfa

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher2/Launcher;->dismissCling(Lcom/android/launcher2/Cling;Ljava/lang/String;I)V

    .line 3852
    return-void
.end method

.method public dismissWorkspaceCling(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3842
    const v1, 0x7f070026

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Cling;

    .line 3843
    .local v0, "cling":Lcom/android/launcher2/Cling;
    const-string v1, "cling.workspace.dismissed"

    const/16 v2, 0xfa

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher2/Launcher;->dismissCling(Lcom/android/launcher2/Cling;Ljava/lang/String;I)V

    .line 3844
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1874
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 1875
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1892
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    :pswitch_0
    :sswitch_0
    return v0

    .line 1879
    :sswitch_1
    const-string v1, "launcher_dump_state"

    invoke-static {v1}, Lcom/android/launcher2/Launcher;->isPropertyEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1880
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->dumpState()V

    goto :goto_1

    .line 1885
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1886
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1875
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x19 -> :sswitch_1
    .end sparse-switch

    .line 1886
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 3217
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 3218
    .local v0, "result":Z
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    .line 3219
    .local v1, "text":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3221
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v3, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    if-ne v2, v3, :cond_0

    .line 3222
    const v2, 0x7f0d0021

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3226
    :goto_0
    return v0

    .line 3224
    :cond_0
    const v2, 0x7f0d0022

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 3875
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3876
    const-string v1, " "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3877
    const-string v1, "Debug logs: "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3878
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/launcher2/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3879
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v1, Lcom/android/launcher2/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3878
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3881
    :cond_0
    return-void
.end method

.method public dumpState()V
    .locals 3

    .prologue
    .line 3858
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BEGIN launcher2 dump state for launcher "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3859
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSavedState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mSavedState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3860
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWorkspaceLoading="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3861
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRestoring="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3862
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWaitingForResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3863
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSavedInstanceState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3864
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sFolders.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/Launcher;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3865
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel;->dumpState()V

    .line 3867
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    if-eqz v0, :cond_0

    .line 3868
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizePagedView;->dumpState()V

    .line 3870
    :cond_0
    const-string v0, "Launcher"

    const-string v1, "END launcher2 dump state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3871
    return-void
.end method

.method enterSpringLoadedDragMode()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2847
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isAllAppsVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2848
    sget-object v0, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE_SPRING_LOADED:Lcom/android/launcher2/Launcher$State;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/android/launcher2/Launcher;->hideAppsCustomizeHelper(Lcom/android/launcher2/Launcher$State;ZZLjava/lang/Runnable;)V

    .line 2849
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->hideDockDivider()V

    .line 2850
    sget-object v0, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE_SPRING_LOADED:Lcom/android/launcher2/Launcher$State;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    .line 2852
    :cond_0
    return-void
.end method

.method exitSpringLoadedDragMode()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2877
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v3, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE_SPRING_LOADED:Lcom/android/launcher2/Launcher$State;

    if-ne v2, v3, :cond_0

    .line 2878
    const/4 v0, 0x1

    .line 2879
    .local v0, "animated":Z
    const/4 v1, 0x1

    .line 2880
    .local v1, "springLoaded":Z
    invoke-direct {p0, v4, v4}, Lcom/android/launcher2/Launcher;->showAppsCustomizeHelper(ZZ)V

    .line 2881
    sget-object v2, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    .line 2884
    .end local v0    # "animated":Z
    .end local v1    # "springLoaded":Z
    :cond_0
    return-void
.end method

.method exitSpringLoadedDragModeDelayed(ZZLjava/lang/Runnable;)V
    .locals 5
    .param p1, "successfulDrop"    # Z
    .param p2, "extendedDelay"    # Z
    .param p3, "onCompleteRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 2856
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v1, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE_SPRING_LOADED:Lcom/android/launcher2/Launcher$State;

    if-eq v0, v1, :cond_0

    .line 2874
    :goto_0
    return-void

    .line 2858
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/launcher2/Launcher$20;

    invoke-direct {v2, p0, p1, p3}, Lcom/android/launcher2/Launcher$20;-><init>(Lcom/android/launcher2/Launcher;ZLjava/lang/Runnable;)V

    if-eqz p2, :cond_1

    const/16 v0, 0x258

    :goto_1
    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const/16 v0, 0x12c

    goto :goto_1
.end method

.method public finishBindingItems()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 3427
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 3429
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mSavedState:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    .line 3430
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3431
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 3433
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mSavedState:Landroid/os/Bundle;

    .line 3436
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->restoreInstanceStateForRemainingPages()V

    .line 3440
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/android/launcher2/Launcher;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 3441
    sget-object v3, Lcom/android/launcher2/Launcher;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher$PendingAddArguments;

    invoke-direct {p0, v3}, Lcom/android/launcher2/Launcher;->completeAdd(Lcom/android/launcher2/Launcher$PendingAddArguments;)Z

    .line 3440
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3443
    :cond_2
    sget-object v3, Lcom/android/launcher2/Launcher;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 3447
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateAppMarketIcon()V

    .line 3450
    iget-boolean v3, p0, Lcom/android/launcher2/Launcher;->mVisible:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    if-eqz v3, :cond_4

    .line 3451
    :cond_3
    new-instance v1, Lcom/android/launcher2/Launcher$21;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Launcher$21;-><init>(Lcom/android/launcher2/Launcher;)V

    .line 3458
    .local v1, "newAppsRunnable":Ljava/lang/Runnable;
    iget v3, p0, Lcom/android/launcher2/Launcher;->mNewShortcutAnimatePage:I

    const/4 v5, -0x1

    if-le v3, v5, :cond_5

    iget v3, p0, Lcom/android/launcher2/Launcher;->mNewShortcutAnimatePage:I

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v5

    if-eq v3, v5, :cond_5

    const/4 v2, 0x1

    .line 3460
    .local v2, "willSnapPage":Z
    :goto_1
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->canRunNewAppsAnimation()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3463
    if-eqz v2, :cond_6

    .line 3464
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget v5, p0, Lcom/android/launcher2/Launcher;->mNewShortcutAnimatePage:I

    invoke-virtual {v3, v5, v1}, Lcom/android/launcher2/Workspace;->snapToPage(ILjava/lang/Runnable;)V

    .line 3475
    .end local v1    # "newAppsRunnable":Ljava/lang/Runnable;
    .end local v2    # "willSnapPage":Z
    :cond_4
    :goto_2
    iput-boolean v4, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    .line 3476
    return-void

    .restart local v1    # "newAppsRunnable":Ljava/lang/Runnable;
    :cond_5
    move v2, v4

    .line 3458
    goto :goto_1

    .line 3466
    .restart local v2    # "willSnapPage":Z
    :cond_6
    invoke-direct {p0, v4}, Lcom/android/launcher2/Launcher;->runNewAppsAnimation(Z)V

    goto :goto_2

    .line 3471
    :cond_7
    invoke-direct {p0, v2}, Lcom/android/launcher2/Launcher;->runNewAppsAnimation(Z)V

    goto :goto_2
.end method

.method public getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;
    .locals 1

    .prologue
    .line 1370
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    return-object v0
.end method

.method getCellLayout(JI)Lcom/android/launcher2/CellLayout;
    .locals 2
    .param p1, "container"    # J
    .param p3, "screen"    # I

    .prologue
    .line 2348
    const-wide/16 v0, -0x65

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 2349
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v0, :cond_0

    .line 2350
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    .line 2355
    :goto_0
    return-object v0

    .line 2352
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2355
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    goto :goto_0
.end method

.method public getCurrentWorkspaceScreen()I
    .locals 1

    .prologue
    .line 3281
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_0

    .line 3282
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v0

    .line 3284
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getDragController()Lcom/android/launcher2/DragController;
    .locals 1

    .prologue
    .line 1537
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    return-object v0
.end method

.method public getDragLayer()Lcom/android/launcher2/DragLayer;
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    return-object v0
.end method

.method getHotseat()Lcom/android/launcher2/Hotseat;
    .locals 1

    .prologue
    .line 2338
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    return-object v0
.end method

.method public getModel()Lcom/android/launcher2/LauncherModel;
    .locals 1

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    return-object v0
.end method

.method getSearchBar()Lcom/android/launcher2/SearchDropTargetBar;
    .locals 1

    .prologue
    .line 2341
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    return-object v0
.end method

.method getWorkspace()Lcom/android/launcher2/Workspace;
    .locals 1

    .prologue
    .line 2360
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    return-object v0
.end method

.method hideDockDivider()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 2887
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mQsbDivider:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDockDivider:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2888
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mQsbDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2889
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDockDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2891
    :cond_0
    return-void
.end method

.method hideHotseat(Z)V
    .locals 4
    .param p1, "animated"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2948
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2949
    if-eqz p1, :cond_2

    .line 2950
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v1}, Lcom/android/launcher2/Hotseat;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 2951
    const/4 v0, 0x0

    .line 2952
    .local v0, "duration":I
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    if-eqz v1, :cond_0

    .line 2953
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    invoke-virtual {v1}, Lcom/android/launcher2/SearchDropTargetBar;->getTransitionOutDuration()I

    move-result v0

    .line 2955
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v1}, Lcom/android/launcher2/Hotseat;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2961
    .end local v0    # "duration":I
    :cond_1
    :goto_0
    return-void

    .line 2958
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Hotseat;->setAlpha(F)V

    goto :goto_0
.end method

.method public isAllAppsButtonRank(I)Z
    .locals 1
    .param p1, "rank"    # I

    .prologue
    .line 2371
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Hotseat;->isAllAppsButtonRank(I)Z

    move-result v0

    return v0
.end method

.method public isAllAppsVisible()Z
    .locals 2

    .prologue
    .line 2366
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v1, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mOnResumeState:Lcom/android/launcher2/Launcher$State;

    sget-object v1, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDraggingEnabled()Z
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel;->isLoadingWorkspace()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFolderClingVisible()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3835
    const v2, 0x7f070027

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Cling;

    .line 3836
    .local v0, "cling":Lcom/android/launcher2/Cling;
    if-eqz v0, :cond_0

    .line 3837
    invoke-virtual {v0}, Lcom/android/launcher2/Cling;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 3839
    :cond_0
    return v1
.end method

.method isHotseatLayout(Landroid/view/View;)Z
    .locals 1
    .param p1, "layout"    # Landroid/view/View;

    .prologue
    .line 2334
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRotationEnabled()Z
    .locals 3

    .prologue
    .line 3678
    sget-boolean v1, Lcom/android/launcher2/Launcher;->sForceEnableRotation:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 3680
    .local v0, "enableRotation":Z
    :goto_0
    return v0

    .line 3678
    .end local v0    # "enableRotation":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWorkspaceLocked()Z
    .locals 1

    .prologue
    .line 1684
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method lockAllApps()V
    .locals 0

    .prologue
    .line 2919
    return-void
.end method

.method public lockScreenOrientation()V
    .locals 1

    .prologue
    .line 3683
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isRotationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3684
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->mapConfigurationOriActivityInfoOri(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->setRequestedOrientation(I)V

    .line 3687
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v6, -0x1

    .line 622
    const/16 v7, 0xb

    if-ne p1, v7, :cond_3

    .line 623
    if-eqz p3, :cond_1

    const-string v5, "appWidgetId"

    invoke-virtual {p3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 625
    .local v0, "appWidgetId":I
    :goto_0
    if-nez p2, :cond_2

    .line 626
    invoke-direct {p0, v4, v0}, Lcom/android/launcher2/Launcher;->completeTwoStageWidgetDrop(II)V

    .line 674
    .end local v0    # "appWidgetId":I
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v6

    .line 623
    goto :goto_0

    .line 627
    .restart local v0    # "appWidgetId":I
    :cond_2
    if-ne p2, v6, :cond_0

    .line 628
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mPendingAddWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {p0, v0, v4, v10, v5}, Lcom/android/launcher2/Launcher;->addAppWidgetImpl(ILcom/android/launcher2/ItemInfo;Landroid/appwidget/AppWidgetHostView;Landroid/appwidget/AppWidgetProviderInfo;)V

    goto :goto_1

    .line 632
    .end local v0    # "appWidgetId":I
    :cond_3
    const/4 v2, 0x0

    .line 633
    .local v2, "delayExitSpringLoadedMode":Z
    const/16 v7, 0x9

    if-eq p1, v7, :cond_4

    const/4 v7, 0x5

    if-ne p1, v7, :cond_5

    :cond_4
    move v3, v5

    .line 635
    .local v3, "isWidgetDrop":Z
    :goto_2
    iput-boolean v4, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    .line 638
    if-eqz v3, :cond_8

    .line 639
    if-eqz p3, :cond_6

    const-string v5, "appWidgetId"

    invoke-virtual {p3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 641
    .restart local v0    # "appWidgetId":I
    :goto_3
    if-gez v0, :cond_7

    .line 642
    const-string v5, "Launcher"

    const-string v6, "Error: appWidgetId (EXTRA_APPWIDGET_ID) was not returned from the \\widget configuration activity."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    invoke-direct {p0, v4, v0}, Lcom/android/launcher2/Launcher;->completeTwoStageWidgetDrop(II)V

    goto :goto_1

    .end local v0    # "appWidgetId":I
    .end local v3    # "isWidgetDrop":Z
    :cond_5
    move v3, v4

    .line 633
    goto :goto_2

    .restart local v3    # "isWidgetDrop":Z
    :cond_6
    move v0, v6

    .line 639
    goto :goto_3

    .line 646
    .restart local v0    # "appWidgetId":I
    :cond_7
    invoke-direct {p0, p2, v0}, Lcom/android/launcher2/Launcher;->completeTwoStageWidgetDrop(II)V

    goto :goto_1

    .line 656
    .end local v0    # "appWidgetId":I
    :cond_8
    if-ne p2, v6, :cond_9

    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget-wide v6, v6, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_9

    .line 657
    new-instance v1, Lcom/android/launcher2/Launcher$PendingAddArguments;

    invoke-direct {v1, v10}, Lcom/android/launcher2/Launcher$PendingAddArguments;-><init>(Lcom/android/launcher2/Launcher$1;)V

    .line 658
    .local v1, "args":Lcom/android/launcher2/Launcher$PendingAddArguments;
    iput p1, v1, Lcom/android/launcher2/Launcher$PendingAddArguments;->requestCode:I

    .line 659
    iput-object p3, v1, Lcom/android/launcher2/Launcher$PendingAddArguments;->intent:Landroid/content/Intent;

    .line 660
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget-wide v6, v6, Lcom/android/launcher2/ItemInfo;->container:J

    iput-wide v6, v1, Lcom/android/launcher2/Launcher$PendingAddArguments;->container:J

    .line 661
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v6, v6, Lcom/android/launcher2/ItemInfo;->screen:I

    iput v6, v1, Lcom/android/launcher2/Launcher$PendingAddArguments;->screen:I

    .line 662
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v6, v6, Lcom/android/launcher2/ItemInfo;->cellX:I

    iput v6, v1, Lcom/android/launcher2/Launcher$PendingAddArguments;->cellX:I

    .line 663
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v6, v6, Lcom/android/launcher2/ItemInfo;->cellY:I

    iput v6, v1, Lcom/android/launcher2/Launcher$PendingAddArguments;->cellY:I

    .line 664
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 665
    sget-object v6, Lcom/android/launcher2/Launcher;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    .end local v1    # "args":Lcom/android/launcher2/Launcher$PendingAddArguments;
    :cond_9
    :goto_4
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v6}, Lcom/android/launcher2/DragLayer;->clearAnimatedView()V

    .line 672
    if-eqz p2, :cond_b

    :goto_5
    invoke-virtual {p0, v5, v2, v10}, Lcom/android/launcher2/Launcher;->exitSpringLoadedDragModeDelayed(ZZLjava/lang/Runnable;)V

    goto :goto_1

    .line 667
    .restart local v1    # "args":Lcom/android/launcher2/Launcher$PendingAddArguments;
    :cond_a
    invoke-direct {p0, v1}, Lcom/android/launcher2/Launcher;->completeAdd(Lcom/android/launcher2/Launcher$PendingAddArguments;)Z

    move-result v2

    goto :goto_4

    .end local v1    # "args":Lcom/android/launcher2/Launcher$PendingAddArguments;
    :cond_b
    move v5, v4

    .line 672
    goto :goto_5
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1236
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 1239
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1240
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1241
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1242
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1244
    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mAttached:Z

    .line 1245
    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mVisible:Z

    .line 1246
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 1897
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isAllAppsVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1898
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->showWorkspace(Z)V

    .line 1912
    :goto_0
    return-void

    .line 1899
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1900
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 1901
    .local v0, "openFolder":Lcom/android/launcher2/Folder;
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1902
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->dismissEditingName()V

    goto :goto_0

    .line 1904
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closeFolder()V

    goto :goto_0

    .line 1907
    .end local v0    # "openFolder":Lcom/android/launcher2/Folder;
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    .line 1910
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->showOutlinesTemporarily()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x1

    .line 1931
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-nez v5, :cond_1

    .line 1966
    .end local p1    # "v":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 1935
    .restart local p1    # "v":Landroid/view/View;
    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->isFinishedSwitchingState()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1939
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 1940
    .local v4, "tag":Ljava/lang/Object;
    instance-of v5, v4, Lcom/android/launcher2/ShortcutInfo;

    if-eqz v5, :cond_2

    move-object v5, v4

    .line 1942
    check-cast v5, Lcom/android/launcher2/ShortcutInfo;

    iget-object v1, v5, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 1943
    .local v1, "intent":Landroid/content/Intent;
    const/4 v5, 0x2

    new-array v2, v5, [I

    .line 1944
    .local v2, "pos":[I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1945
    new-instance v5, Landroid/graphics/Rect;

    aget v6, v2, v8

    aget v7, v2, v11

    aget v8, v2, v8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    aget v9, v2, v11

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 1948
    invoke-virtual {p0, p1, v1, v4}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result v3

    .line 1950
    .local v3, "success":Z
    if-eqz v3, :cond_0

    instance-of v5, p1, Lcom/android/launcher2/BubbleTextView;

    if-eqz v5, :cond_0

    .line 1951
    check-cast p1, Lcom/android/launcher2/BubbleTextView;

    .end local p1    # "v":Landroid/view/View;
    iput-object p1, p0, Lcom/android/launcher2/Launcher;->mWaitingForResume:Lcom/android/launcher2/BubbleTextView;

    .line 1952
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mWaitingForResume:Lcom/android/launcher2/BubbleTextView;

    invoke-virtual {v5, v11}, Lcom/android/launcher2/BubbleTextView;->setStayPressed(Z)V

    goto :goto_0

    .line 1954
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "pos":[I
    .end local v3    # "success":Z
    .restart local p1    # "v":Landroid/view/View;
    :cond_2
    instance-of v5, v4, Lcom/android/launcher2/FolderInfo;

    if-eqz v5, :cond_3

    .line 1955
    instance-of v5, p1, Lcom/android/launcher2/FolderIcon;

    if-eqz v5, :cond_0

    move-object v0, p1

    .line 1956
    check-cast v0, Lcom/android/launcher2/FolderIcon;

    .line 1957
    .local v0, "fi":Lcom/android/launcher2/FolderIcon;
    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->handleFolderClick(Lcom/android/launcher2/FolderIcon;)V

    goto :goto_0

    .line 1959
    .end local v0    # "fi":Lcom/android/launcher2/FolderIcon;
    :cond_3
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mAllAppsButton:Landroid/view/View;

    if-ne p1, v5, :cond_0

    .line 1960
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isAllAppsVisible()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1961
    invoke-virtual {p0, v11}, Lcom/android/launcher2/Launcher;->showWorkspace(Z)V

    goto :goto_0

    .line 1963
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->onClickAllAppsButton(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onClickAllAppsButton(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2018
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->showAllApps(Z)V

    .line 2019
    return-void
.end method

.method public onClickAppMarketButton(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2027
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppMarketIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 2028
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppMarketIntent:Landroid/content/Intent;

    const-string v1, "app market"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 2032
    :goto_0
    return-void

    .line 2030
    :cond_0
    const-string v0, "Launcher"

    const-string v1, "Invalid app market intent."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onClickSearchButton(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1981
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 1983
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->onSearchRequested()Z

    .line 1984
    return-void
.end method

.method public onClickVoiceButton(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x10000000

    .line 1992
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 1995
    :try_start_0
    const-string v4, "search"

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/SearchManager;

    .line 1997
    .local v3, "searchManager":Landroid/app/SearchManager;
    invoke-virtual {v3}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 1998
    .local v0, "activityName":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.speech.action.WEB_SEARCH"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1999
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2000
    if-eqz v0, :cond_0

    .line 2001
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2003
    :cond_0
    const/4 v4, 0x0

    const-string v5, "onClickVoiceButton"

    invoke-virtual {p0, v4, v2, v5}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2009
    .end local v0    # "activityName":Landroid/content/ComponentName;
    .end local v3    # "searchManager":Landroid/app/SearchManager;
    :goto_0
    return-void

    .line 2004
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 2005
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.speech.action.WEB_SEARCH"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2006
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2007
    const-string v4, "onClickVoiceButton"

    invoke-virtual {p0, v7, v2, v4}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 355
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 356
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    .line 357
    .local v0, "app":Lcom/android/launcher2/LauncherApplication;
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v5}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 359
    invoke-virtual {v0, p0}, Lcom/android/launcher2/LauncherApplication;->setLauncher(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/LauncherModel;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    .line 360
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getIconCache()Lcom/android/launcher2/IconCache;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mIconCache:Lcom/android/launcher2/IconCache;

    .line 361
    new-instance v3, Lcom/android/launcher2/DragController;

    invoke-direct {v3, p0}, Lcom/android/launcher2/DragController;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    .line 362
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mInflater:Landroid/view/LayoutInflater;

    .line 364
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 365
    new-instance v3, Lcom/android/launcher2/LauncherAppWidgetHost;

    const/16 v4, 0x400

    invoke-direct {v3, p0, v4}, Lcom/android/launcher2/LauncherAppWidgetHost;-><init>(Lcom/android/launcher2/Launcher;I)V

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    .line 366
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherAppWidgetHost;->startListening()V

    .line 371
    iput-boolean v5, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    .line 378
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->checkForLocaleChange()V

    .line 379
    const v3, 0x7f04000e

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->setContentView(I)V

    .line 380
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->setupViews()V

    .line 381
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->showFirstRunWorkspaceCling()V

    .line 383
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->registerContentObservers()V

    .line 385
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->lockAllApps()V

    .line 387
    iput-object p1, p0, Lcom/android/launcher2/Launcher;->mSavedState:Landroid/os/Bundle;

    .line 388
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mSavedState:Landroid/os/Bundle;

    invoke-direct {p0, v3}, Lcom/android/launcher2/Launcher;->restoreState(Landroid/os/Bundle;)V

    .line 391
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    if-eqz v3, :cond_0

    .line 392
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v3}, Lcom/android/launcher2/AppsCustomizePagedView;->onPackagesUpdated()V

    .line 399
    :cond_0
    iget-boolean v3, p0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    if-nez v3, :cond_1

    .line 400
    sget-boolean v3, Lcom/android/launcher2/Launcher;->sPausedFromUserAction:Z

    if-eqz v3, :cond_3

    .line 403
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    const/4 v4, -0x1

    invoke-virtual {v3, v6, v4}, Lcom/android/launcher2/LauncherModel;->startLoader(ZI)V

    .line 411
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherModel;->isAllAppsLoaded()Z

    move-result v3

    if-nez v3, :cond_2

    .line 412
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v3}, Lcom/android/launcher2/AppsCustomizePagedView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 413
    .local v1, "appsCustomizeContentParent":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040005

    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 417
    .end local v1    # "appsCustomizeContentParent":Landroid/view/ViewGroup;
    :cond_2
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 418
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-static {v3, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 420
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 421
    .local v2, "filter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Lcom/android/launcher2/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 423
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateGlobalIcons()V

    .line 426
    invoke-virtual {p0, v6}, Lcom/android/launcher2/Launcher;->unlockScreenOrientation(Z)V

    .line 427
    return-void

    .line 407
    .end local v2    # "filter":Landroid/content/IntentFilter;
    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v4

    invoke-virtual {v3, v6, v4}, Lcom/android/launcher2/LauncherModel;->startLoader(ZI)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/high16 v8, 0x10800000

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1615
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1649
    :goto_0
    return v4

    .line 1619
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1621
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1622
    .local v2, "manageApps":Landroid/content/Intent;
    invoke-virtual {v2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1624
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.settings.SETTINGS"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1625
    .local v3, "settings":Landroid/content/Intent;
    const/high16 v6, 0x10200000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1627
    const v6, 0x7f0d0034

    invoke-virtual {p0, v6}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1628
    .local v1, "helpUrl":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1629
    .local v0, "help":Landroid/content/Intent;
    invoke-virtual {v0, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1632
    const/4 v6, 0x2

    const v7, 0x7f0d002f

    invoke-interface {p1, v5, v6, v4, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    const v7, 0x108003f

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v6

    const/16 v7, 0x57

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1635
    const/4 v6, 0x3

    const v7, 0x7f0d002e

    invoke-interface {p1, v4, v6, v4, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    const v7, 0x1080042

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v6

    const/16 v7, 0x4d

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1639
    const/4 v6, 0x4

    const v7, 0x7f0d0032

    invoke-interface {p1, v4, v6, v4, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    const v7, 0x1080049

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v6

    const/16 v7, 0x50

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1643
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1644
    const/4 v6, 0x5

    const v7, 0x7f0d0033

    invoke-interface {p1, v4, v6, v4, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v6, 0x1080040

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v4

    const/16 v6, 0x48

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    :cond_1
    move v4, v5

    .line 1649
    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1495
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1498
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1499
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1500
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mBuildLayersRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1503
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    .line 1504
    .local v0, "app":Lcom/android/launcher2/LauncherApplication;
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherModel;->stopLoader()V

    .line 1505
    invoke-virtual {v0, v4}, Lcom/android/launcher2/LauncherApplication;->setLauncher(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/LauncherModel;

    .line 1508
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherAppWidgetHost;->stopListening()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1512
    :goto_0
    iput-object v4, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    .line 1514
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1516
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/method/TextKeyListener;->release()V

    .line 1520
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    if-eqz v2, :cond_0

    .line 1521
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherModel;->unbindItemInfosAndClearQueuedBindRunnables()V

    .line 1524
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1525
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1527
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v2}, Lcom/android/launcher2/DragLayer;->clearAllResizeFrames()V

    .line 1528
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1529
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->removeAllViews()V

    .line 1530
    iput-object v4, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 1531
    iput-object v4, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    .line 1533
    invoke-static {}, Lcom/android/launcher2/LauncherAnimUtils;->onDestroyActivity()V

    .line 1534
    return-void

    .line 1509
    :catch_0
    move-exception v1

    .line 1510
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string v2, "Launcher"

    const-string v3, "problem while stopping AppWidgetHost during Launcher destruction"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1250
    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    .line 1251
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mVisible:Z

    .line 1253
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mAttached:Z

    if-eqz v0, :cond_0

    .line 1254
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1255
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mAttached:Z

    .line 1257
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateRunning()V

    .line 1258
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x1

    .line 817
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v3

    .line 818
    .local v3, "uniChar":I
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 819
    .local v1, "handled":Z
    if-lez v3, :cond_1

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v5

    if-nez v5, :cond_1

    move v2, v4

    .line 820
    .local v2, "isKeyNotWhitespace":Z
    :goto_0
    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->acceptFilter()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v2, :cond_2

    .line 821
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5, v6, v7, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 823
    .local v0, "gotKey":Z
    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 830
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->onSearchRequested()Z

    move-result v1

    .line 839
    .end local v0    # "gotKey":Z
    .end local v1    # "handled":Z
    :cond_0
    :goto_1
    return v1

    .line 819
    .end local v2    # "isKeyNotWhitespace":Z
    .restart local v1    # "handled":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 835
    .restart local v2    # "isKeyNotWhitespace":Z
    :cond_2
    const/16 v5, 0x52

    if-ne p1, v5, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v4

    .line 836
    goto :goto_1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2298
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isDraggingEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2330
    :cond_0
    :goto_0
    return v3

    .line 2299
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2300
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v6, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    if-ne v5, v6, :cond_0

    .line 2302
    instance-of v5, p1, Lcom/android/launcher2/CellLayout;

    if-nez v5, :cond_2

    .line 2303
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .end local p1    # "v":Landroid/view/View;
    check-cast p1, Landroid/view/View;

    .line 2306
    .restart local p1    # "v":Landroid/view/View;
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->resetAddInfo()V

    .line 2307
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout$CellInfo;

    .line 2309
    .local v2, "longClickCellInfo":Lcom/android/launcher2/CellLayout$CellInfo;
    if-nez v2, :cond_3

    move v3, v4

    .line 2310
    goto :goto_0

    .line 2315
    :cond_3
    iget-object v1, v2, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 2316
    .local v1, "itemUnderLongClick":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->allowLongPress()Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_4
    move v0, v4

    .line 2317
    .local v0, "allowLongPress":Z
    :goto_1
    if-eqz v0, :cond_5

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v5}, Lcom/android/launcher2/DragController;->isDragging()Z

    move-result v5

    if-nez v5, :cond_5

    .line 2318
    if-nez v1, :cond_7

    .line 2320
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5, v3, v4}, Lcom/android/launcher2/Workspace;->performHapticFeedback(II)Z

    .line 2322
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->startWallpaper()V

    :cond_5
    :goto_2
    move v3, v4

    .line 2330
    goto :goto_0

    .end local v0    # "allowLongPress":Z
    :cond_6
    move v0, v3

    .line 2316
    goto :goto_1

    .line 2324
    .restart local v0    # "allowLongPress":Z
    :cond_7
    instance-of v3, v1, Lcom/android/launcher2/Folder;

    if-nez v3, :cond_5

    .line 2326
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/Workspace;->startDrag(Lcom/android/launcher2/CellLayout$CellInfo;)V

    goto :goto_2
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/high16 v4, 0x400000

    .line 1386
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 1389
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1391
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closeSystemDialogs()V

    .line 1393
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    and-int/2addr v2, v4

    if-eq v2, v4, :cond_1

    const/4 v0, 0x1

    .line 1397
    .local v0, "alreadyOnHome":Z
    :goto_0
    new-instance v1, Lcom/android/launcher2/Launcher$10;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher2/Launcher$10;-><init>(Lcom/android/launcher2/Launcher;Z)V

    .line 1436
    .local v1, "processIntent":Ljava/lang/Runnable;
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->hasWindowFocus()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1439
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    const-wide/16 v3, 0x15e

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/launcher2/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1446
    .end local v0    # "alreadyOnHome":Z
    .end local v1    # "processIntent":Ljava/lang/Runnable;
    :cond_0
    :goto_1
    return-void

    .line 1393
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1442
    .restart local v0    # "alreadyOnHome":Z
    .restart local v1    # "processIntent":Ljava/lang/Runnable;
    :cond_2
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1667
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1673
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 1669
    :pswitch_0
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->startWallpaper()V

    .line 1670
    const/4 v0, 0x1

    goto :goto_0

    .line 1667
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onPageBoundSynchronously(I)V
    .locals 2
    .param p1, "page"    # I

    .prologue
    .line 3418
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSynchronouslyBoundPages:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3419
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 770
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->updateWallpaperVisibility(Z)V

    .line 772
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 773
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    .line 774
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0}, Lcom/android/launcher2/DragController;->cancelDrag()V

    .line 775
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0}, Lcom/android/launcher2/DragController;->resetLastGestureUpTime()V

    .line 776
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1654
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1656
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-virtual {v3}, Lcom/android/launcher2/AppsCustomizeTabHost;->isTransitioning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1662
    :goto_0
    return v1

    .line 1659
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-virtual {v3}, Lcom/android/launcher2/AppsCustomizeTabHost;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    move v0, v2

    .line 1660
    .local v0, "allAppsVisible":Z
    :goto_1
    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    invoke-interface {p1, v2, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    move v1, v2

    .line 1662
    goto :goto_0

    .end local v0    # "allAppsVisible":Z
    :cond_2
    move v0, v1

    .line 1659
    goto :goto_1
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 1450
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1451
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mSynchronouslyBoundPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1452
    .local v1, "page":I
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/Workspace;->restoreInstanceStateForChild(I)V

    goto :goto_0

    .line 1454
    .end local v1    # "page":I
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 719
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 722
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mOnResumeState:Lcom/android/launcher2/Launcher$State;

    sget-object v3, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    if-ne v0, v3, :cond_5

    .line 723
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->showWorkspace(Z)V

    .line 727
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/launcher2/Launcher$State;->NONE:Lcom/android/launcher2/Launcher$State;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mOnResumeState:Lcom/android/launcher2/Launcher$State;

    .line 730
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v3, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    if-ne v0, v3, :cond_6

    move v0, v1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->setWorkspaceBackground(Z)V

    .line 733
    invoke-static {p0}, Lcom/android/launcher2/InstallShortcutReceiver;->flushInstallQueue(Landroid/content/Context;)V

    .line 735
    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    .line 736
    sput-boolean v2, Lcom/android/launcher2/Launcher;->sPausedFromUserAction:Z

    .line 737
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mOnResumeNeedsLoad:Z

    if-eqz v0, :cond_2

    .line 738
    :cond_1
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    .line 739
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher2/LauncherModel;->startLoader(ZI)V

    .line 740
    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    .line 741
    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mOnResumeNeedsLoad:Z

    .line 746
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWaitingForResume:Lcom/android/launcher2/BubbleTextView;

    if-eqz v0, :cond_3

    .line 748
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWaitingForResume:Lcom/android/launcher2/BubbleTextView;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/BubbleTextView;->setStayPressed(Z)V

    .line 750
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    if-eqz v0, :cond_4

    .line 752
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizePagedView;->resetDrawableState()V

    .line 758
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->reinflateWidgetsIfNecessary()V

    .line 762
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateGlobalIcons()V

    .line 763
    return-void

    .line 724
    :cond_5
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mOnResumeState:Lcom/android/launcher2/Launcher$State;

    sget-object v3, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    if-ne v0, v3, :cond_0

    .line 725
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->showAllApps(Z)V

    goto :goto_0

    :cond_6
    move v0, v2

    .line 730
    goto :goto_1
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 781
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel;->stopLoader()V

    .line 782
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizePagedView;->surrender()V

    .line 785
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1458
    const-string v2, "launcher.current_screen"

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getNextPage()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1459
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1461
    const-string v2, "launcher.state"

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher$State;->ordinal()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1464
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closeFolder()V

    .line 1466
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget-wide v2, v2, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v2, v2, Lcom/android/launcher2/ItemInfo;->screen:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    if-eqz v2, :cond_0

    .line 1468
    const-string v2, "launcher.add_container"

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget-wide v3, v3, Lcom/android/launcher2/ItemInfo;->container:J

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1469
    const-string v2, "launcher.add_screen"

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v3, v3, Lcom/android/launcher2/ItemInfo;->screen:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1470
    const-string v2, "launcher.add_cell_x"

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v3, v3, Lcom/android/launcher2/ItemInfo;->cellX:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1471
    const-string v2, "launcher.add_cell_y"

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v3, v3, Lcom/android/launcher2/ItemInfo;->cellY:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1472
    const-string v2, "launcher.add_span_x"

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v3, v3, Lcom/android/launcher2/ItemInfo;->spanX:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1473
    const-string v2, "launcher.add_span_y"

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v3, v3, Lcom/android/launcher2/ItemInfo;->spanY:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1474
    const-string v2, "launcher.add_widget_info"

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mPendingAddWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1477
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mFolderInfo:Lcom/android/launcher2/FolderInfo;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    if-eqz v2, :cond_1

    .line 1478
    const-string v2, "launcher.rename_folder"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1479
    const-string v2, "launcher.rename_folder_id"

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mFolderInfo:Lcom/android/launcher2/FolderInfo;

    iget-wide v3, v3, Lcom/android/launcher2/FolderInfo;->id:J

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1483
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    if-eqz v2, :cond_3

    .line 1484
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-virtual {v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    .line 1485
    .local v1, "currentTabTag":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 1486
    const-string v2, "apps_customize_currentTab"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v2}, Lcom/android/launcher2/AppsCustomizePagedView;->getSaveInstanceStateIndex()I

    move-result v0

    .line 1489
    .local v0, "currentIndex":I
    const-string v2, "apps_customize_currentIndex"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1491
    .end local v0    # "currentIndex":I
    .end local v1    # "currentTabTag":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public onSearchRequested()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1678
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/android/launcher2/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 1680
    return v1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1971
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->showWorkspace(Z)V

    .line 1972
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchDownAllAppsButton(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2023
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 2024
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 2765
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    .line 2766
    const/16 v0, 0x3c

    if-lt p1, v0, :cond_0

    .line 2767
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->onTrimMemory()V

    .line 2769
    :cond_0
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .prologue
    .line 430
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 431
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/Launcher;->sPausedFromUserAction:Z

    .line 432
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasFocus"    # Z

    .prologue
    .line 2773
    if-nez p1, :cond_0

    .line 2776
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->updateWallpaperVisibility(Z)V

    .line 2786
    :goto_0
    return-void

    .line 2779
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    new-instance v1, Lcom/android/launcher2/Launcher$19;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Launcher$19;-><init>(Lcom/android/launcher2/Launcher;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 1261
    if-nez p1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mVisible:Z

    .line 1262
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateRunning()V

    .line 1266
    iget-boolean v1, p0, Lcom/android/launcher2/Launcher;->mVisible:Z

    if-eqz v1, :cond_1

    .line 1267
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-virtual {v1}, Lcom/android/launcher2/AppsCustomizeTabHost;->onWindowVisible()V

    .line 1268
    iget-boolean v1, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    if-nez v1, :cond_0

    .line 1269
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1274
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/android/launcher2/Launcher$8;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher2/Launcher$8;-><init>(Lcom/android/launcher2/Launcher;Landroid/view/ViewTreeObserver;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1290
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateAppMarketIcon()V

    .line 1291
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->clearTypedText()V

    .line 1293
    :cond_1
    return-void

    .line 1261
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public openFolder(Lcom/android/launcher2/FolderIcon;)V
    .locals 5
    .param p1, "folderIcon"    # Lcom/android/launcher2/FolderIcon;

    .prologue
    .line 2255
    invoke-virtual {p1}, Lcom/android/launcher2/FolderIcon;->getFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 2256
    .local v0, "folder":Lcom/android/launcher2/Folder;
    iget-object v1, v0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    .line 2258
    .local v1, "info":Lcom/android/launcher2/FolderInfo;
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/launcher2/FolderInfo;->opened:Z

    .line 2262
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    .line 2263
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/DragLayer;->addView(Landroid/view/View;)V

    .line 2264
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/DragController;->addDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 2269
    :goto_0
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->animateOpen()V

    .line 2270
    invoke-direct {p0, p1}, Lcom/android/launcher2/Launcher;->growAndFadeOutFolderIcon(Lcom/android/launcher2/FolderIcon;)V

    .line 2271
    return-void

    .line 2266
    :cond_0
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Opening folder ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") which already has a parent ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method processShortcut(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1801
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0014

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1802
    .local v0, "applicationName":Ljava/lang/String;
    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1804
    .local v3, "shortcutName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1805
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1806
    .local v1, "mainIntent":Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1808
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1809
    .local v2, "pickIntent":Landroid/content/Intent;
    const-string v4, "android.intent.extra.INTENT"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1810
    const-string v4, "android.intent.extra.TITLE"

    const v5, 0x7f0d0020

    invoke-virtual {p0, v5}, Lcom/android/launcher2/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1811
    const/4 v4, 0x6

    invoke-virtual {p0, v2, v4}, Lcom/android/launcher2/Launcher;->startActivityForResultSafely(Landroid/content/Intent;I)V

    .line 1815
    .end local v1    # "mainIntent":Landroid/content/Intent;
    .end local v2    # "pickIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1813
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {p0, p1, v4}, Lcom/android/launcher2/Launcher;->startActivityForResultSafely(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method processShortcutFromDrop(Landroid/content/ComponentName;JI[I[I)V
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "container"    # J
    .param p4, "screen"    # I
    .param p5, "cell"    # [I
    .param p6, "loc"    # [I

    .prologue
    .line 1725
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->resetAddInfo()V

    .line 1726
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput-wide p2, v1, Lcom/android/launcher2/ItemInfo;->container:J

    .line 1727
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput p4, v1, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 1728
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput-object p6, v1, Lcom/android/launcher2/ItemInfo;->dropPos:[I

    .line 1730
    if-eqz p5, :cond_0

    .line 1731
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    const/4 v2, 0x0

    aget v2, p5, v2

    iput v2, v1, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 1732
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    const/4 v2, 0x1

    aget v2, p5, v2

    iput v2, v1, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 1735
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1736
    .local v0, "createShortcutIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1737
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->processShortcut(Landroid/content/Intent;)V

    .line 1738
    return-void
.end method

.method processWallpaper(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1818
    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1819
    return-void
.end method

.method public removeAppWidget(Lcom/android/launcher2/LauncherAppWidgetInfo;)V
    .locals 1
    .param p1, "launcherInfo"    # Lcom/android/launcher2/LauncherAppWidgetInfo;

    .prologue
    .line 1360
    iget-object v0, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->removeWidgetToAutoAdvance(Landroid/view/View;)V

    .line 1361
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 1362
    return-void
.end method

.method removeFolder(Lcom/android/launcher2/FolderInfo;)V
    .locals 3
    .param p1, "folder"    # Lcom/android/launcher2/FolderInfo;

    .prologue
    .line 1840
    sget-object v0, Lcom/android/launcher2/Launcher;->sFolders:Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/android/launcher2/FolderInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1841
    return-void
.end method

.method removeWidgetToAutoAdvance(Landroid/view/View;)V
    .locals 1
    .param p1, "hostView"    # Landroid/view/View;

    .prologue
    .line 1353
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1354
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1355
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateRunning()V

    .line 1357
    :cond_0
    return-void
.end method

.method public setLoadOnResume()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3268
    iget-boolean v1, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    if-eqz v1, :cond_0

    .line 3269
    const-string v1, "Launcher"

    const-string v2, "setLoadOnResume"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3270
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mOnResumeNeedsLoad:Z

    .line 3273
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method showAllApps(Z)V
    .locals 3
    .param p1, "animated"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2828
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v1, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    if-eq v0, v1, :cond_0

    .line 2844
    :goto_0
    return-void

    .line 2830
    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/android/launcher2/Launcher;->showAppsCustomizeHelper(ZZ)V

    .line 2831
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->requestFocus()Z

    .line 2834
    sget-object v0, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    .line 2837
    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mUserPresent:Z

    .line 2838
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateRunning()V

    .line 2839
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closeFolder()V

    .line 2842
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method showDockDivider(Z)V
    .locals 9
    .param p1, "animated"    # Z

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 2894
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mQsbDivider:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mDockDivider:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 2895
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mQsbDivider:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2896
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mDockDivider:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2897
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mDividerAnimator:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    .line 2898
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mDividerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2899
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mQsbDivider:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setAlpha(F)V

    .line 2900
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mDockDivider:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setAlpha(F)V

    .line 2901
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mDividerAnimator:Landroid/animation/AnimatorSet;

    .line 2903
    :cond_0
    if-eqz p1, :cond_2

    .line 2904
    invoke-static {}, Lcom/android/launcher2/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mDividerAnimator:Landroid/animation/AnimatorSet;

    .line 2905
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mDividerAnimator:Landroid/animation/AnimatorSet;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mQsbDivider:Landroid/view/View;

    const-string v4, "alpha"

    new-array v5, v8, [F

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mDockDivider:Landroid/view/View;

    const-string v4, "alpha"

    new-array v5, v8, [F

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2907
    const/4 v0, 0x0

    .line 2908
    .local v0, "duration":I
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    if-eqz v1, :cond_1

    .line 2909
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    invoke-virtual {v1}, Lcom/android/launcher2/SearchDropTargetBar;->getTransitionInDuration()I

    move-result v0

    .line 2911
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mDividerAnimator:Landroid/animation/AnimatorSet;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2912
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mDividerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 2915
    .end local v0    # "duration":I
    :cond_2
    return-void
.end method

.method public showFirstRunAllAppsCling([I)V
    .locals 4
    .param p1, "position"    # [I

    .prologue
    const v3, 0x7f07000c

    const/4 v2, 0x0

    .line 3817
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isClingsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "cling.allapps.dismissed"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3819
    const/4 v0, 0x1

    invoke-direct {p0, v3, p1, v0, v2}, Lcom/android/launcher2/Launcher;->initCling(I[IZI)Lcom/android/launcher2/Cling;

    .line 3823
    :goto_0
    return-void

    .line 3821
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/launcher2/Launcher;->removeCling(I)V

    goto :goto_0
.end method

.method public showFirstRunFoldersCling()Lcom/android/launcher2/Cling;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const v4, 0x7f070027

    const/4 v3, 0x0

    .line 3826
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isClingsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "cling.folder.dismissed"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3828
    const/4 v1, 0x1

    invoke-direct {p0, v4, v0, v1, v3}, Lcom/android/launcher2/Launcher;->initCling(I[IZI)Lcom/android/launcher2/Cling;

    move-result-object v0

    .line 3831
    :goto_0
    return-object v0

    .line 3830
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/launcher2/Launcher;->removeCling(I)V

    goto :goto_0
.end method

.method public showFirstRunWorkspaceCling()V
    .locals 8

    .prologue
    const v7, 0x7f070026

    const/4 v6, 0x0

    .line 3793
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isClingsEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v5, "cling.workspace.dismissed"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->skipCustomClingIfNoAccounts()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3799
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v5, "DEFAULT_WORKSPACE_RESOURCE_ID"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3802
    invoke-virtual {p0, v7}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3803
    .local v0, "cling":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 3804
    .local v2, "clingParent":Landroid/view/ViewGroup;
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 3805
    .local v1, "clingIndex":I
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 3806
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040008

    invoke-virtual {v4, v5, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 3807
    .local v3, "customCling":Landroid/view/View;
    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 3808
    invoke-virtual {v3, v7}, Landroid/view/View;->setId(I)V

    .line 3810
    .end local v0    # "cling":Landroid/view/View;
    .end local v1    # "clingIndex":I
    .end local v2    # "clingParent":Landroid/view/ViewGroup;
    .end local v3    # "customCling":Landroid/view/View;
    :cond_0
    const/4 v4, 0x0

    invoke-direct {p0, v7, v4, v6, v6}, Lcom/android/launcher2/Launcher;->initCling(I[IZI)Lcom/android/launcher2/Cling;

    .line 3814
    :goto_0
    return-void

    .line 3812
    :cond_1
    invoke-direct {p0, v7}, Lcom/android/launcher2/Launcher;->removeCling(I)V

    goto :goto_0
.end method

.method showHotseat(Z)V
    .locals 4
    .param p1, "animated"    # Z

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 2929
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2930
    if-eqz p1, :cond_2

    .line 2931
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v1}, Lcom/android/launcher2/Hotseat;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 2932
    const/4 v0, 0x0

    .line 2933
    .local v0, "duration":I
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    if-eqz v1, :cond_0

    .line 2934
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    invoke-virtual {v1}, Lcom/android/launcher2/SearchDropTargetBar;->getTransitionInDuration()I

    move-result v0

    .line 2936
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v1}, Lcom/android/launcher2/Hotseat;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2942
    .end local v0    # "duration":I
    :cond_1
    :goto_0
    return-void

    .line 2939
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Hotseat;->setAlpha(F)V

    goto :goto_0
.end method

.method showOutOfSpaceMessage(Z)V
    .locals 3
    .param p1, "isHotseatLayout"    # Z

    .prologue
    .line 1365
    if-eqz p1, :cond_0

    const v0, 0x7f0d001a

    .line 1366
    .local v0, "strId":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1367
    return-void

    .line 1365
    .end local v0    # "strId":I
    :cond_0
    const v0, 0x7f0d0019

    goto :goto_0
.end method

.method showWorkspace(Z)V
    .locals 1
    .param p1, "animated"    # Z

    .prologue
    .line 2789
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/Launcher;->showWorkspace(ZLjava/lang/Runnable;)V

    .line 2790
    return-void
.end method

.method showWorkspace(ZLjava/lang/Runnable;)V
    .locals 5
    .param p1, "animated"    # Z
    .param p2, "onCompleteRunnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2793
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v4, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    if-eq v3, v4, :cond_2

    .line 2794
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v4, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE_SPRING_LOADED:Lcom/android/launcher2/Launcher$State;

    if-ne v3, v4, :cond_3

    move v0, v1

    .line 2795
    .local v0, "wasInSpringLoadedMode":Z
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/Workspace;->setVisibility(I)V

    .line 2796
    sget-object v3, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    invoke-direct {p0, v3, p1, v2, p2}, Lcom/android/launcher2/Launcher;->hideAppsCustomizeHelper(Lcom/android/launcher2/Launcher$State;ZZLjava/lang/Runnable;)V

    .line 2800
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    if-eqz v3, :cond_0

    .line 2801
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    invoke-virtual {v3, v0}, Lcom/android/launcher2/SearchDropTargetBar;->showSearchBar(Z)V

    .line 2805
    :cond_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->showDockDivider(Z)V

    .line 2808
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mAllAppsButton:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 2809
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mAllAppsButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 2813
    .end local v0    # "wasInSpringLoadedMode":Z
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, p1}, Lcom/android/launcher2/Workspace;->flashScrollingIndicator(Z)V

    .line 2816
    sget-object v2, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    .line 2819
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mUserPresent:Z

    .line 2820
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateRunning()V

    .line 2823
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 2825
    return-void

    :cond_3
    move v0, v2

    .line 2794
    goto :goto_0
.end method

.method startActivity(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "tag"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2060
    const/high16 v5, 0x10000000

    invoke-virtual {p2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2065
    if-eqz p1, :cond_0

    :try_start_0
    const-string v5, "com.android.launcher.intent.extra.shortcut.INGORE_LAUNCH_ANIMATION"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    move v2, v4

    .line 2067
    .local v2, "useLaunchAnimation":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 2068
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-static {p1, v5, v6, v7, v8}, Landroid/app/ActivityOptions;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 2071
    .local v1, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {p0, p2, v5}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .end local v1    # "opts":Landroid/app/ActivityOptions;
    :goto_1
    move v3, v4

    .line 2083
    .end local v2    # "useLaunchAnimation":Z
    :goto_2
    return v3

    :cond_0
    move v2, v3

    .line 2065
    goto :goto_0

    .line 2073
    .restart local v2    # "useLaunchAnimation":Z
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2076
    .end local v2    # "useLaunchAnimation":Z
    :catch_0
    move-exception v0

    .line 2077
    .local v0, "e":Ljava/lang/SecurityException;
    const v4, 0x7f0d0007

    invoke-static {p0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 2078
    const-string v4, "Launcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Launcher does not have the permission to launch "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "or use the exported attribute for this activity. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "tag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " intent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 1542
    if-ltz p2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    .line 1543
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1544
    return-void
.end method

.method startActivityForResultSafely(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    const v2, 0x7f0d0007

    const/4 v1, 0x0

    .line 2099
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/Launcher;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2108
    :goto_0
    return-void

    .line 2100
    :catch_0
    move-exception v0

    .line 2101
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2102
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 2103
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2104
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launcher does not have the permission to launch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "or use the exported attribute for this activity."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "tag"    # Ljava/lang/Object;

    .prologue
    .line 2087
    const/4 v1, 0x0

    .line 2089
    .local v1, "success":Z
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2094
    :goto_0
    return v1

    .line 2090
    :catch_0
    move-exception v0

    .line 2091
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const v2, 0x7f0d0007

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2092
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to launch. tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method startApplicationDetailsActivity(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    const/4 v4, 0x0

    .line 2035
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2036
    .local v1, "packageName":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v3, "package"

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2038
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10800000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2039
    const-string v2, "startApplicationDetailsActivity"

    invoke-virtual {p0, v4, v0, v2}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 2040
    return-void
.end method

.method startApplicationUninstallActivity(Lcom/android/launcher2/ApplicationInfo;)V
    .locals 6
    .param p1, "appInfo"    # Lcom/android/launcher2/ApplicationInfo;

    .prologue
    .line 2043
    iget v4, p1, Lcom/android/launcher2/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    .line 2046
    const v2, 0x7f0d0044

    .line 2047
    .local v2, "messageId":I
    const/4 v4, 0x0

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 2057
    .end local v2    # "messageId":I
    :goto_0
    return-void

    .line 2049
    :cond_0
    iget-object v4, p1, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2050
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p1, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 2051
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.DELETE"

    const-string v5, "package"

    invoke-static {v5, v3, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2053
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10800000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2055
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public startBinding()V
    .locals 5

    .prologue
    .line 3294
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 3296
    .local v3, "workspace":Lcom/android/launcher2/Workspace;
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/launcher2/Launcher;->mNewShortcutAnimatePage:I

    .line 3297
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mNewShortcutAnimateViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 3298
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->clearDropTargets()V

    .line 3299
    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    .line 3300
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3302
    invoke-virtual {v3, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    .line 3303
    .local v2, "layoutParent":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->removeAllViewsInLayout()V

    .line 3300
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3305
    .end local v2    # "layoutParent":Lcom/android/launcher2/CellLayout;
    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 3306
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v4, :cond_1

    .line 3307
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v4}, Lcom/android/launcher2/Hotseat;->resetLayout()V

    .line 3309
    :cond_1
    return-void
.end method

.method public startGlobalSearch(Ljava/lang/String;ZLandroid/os/Bundle;Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "initialQuery"    # Ljava/lang/String;
    .param p2, "selectInitialQuery"    # Z
    .param p3, "appSearchData"    # Landroid/os/Bundle;
    .param p4, "sourceBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1578
    const-string v5, "search"

    invoke-virtual {p0, v5}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/SearchManager;

    .line 1580
    .local v4, "searchManager":Landroid/app/SearchManager;
    invoke-virtual {v4}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v2

    .line 1581
    .local v2, "globalSearchActivity":Landroid/content/ComponentName;
    if-nez v2, :cond_0

    .line 1582
    const-string v5, "Launcher"

    const-string v6, "No global search activity found."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    :goto_0
    return-void

    .line 1585
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.search.action.GLOBAL_SEARCH"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1586
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1587
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1589
    if-nez p3, :cond_4

    .line 1590
    new-instance p3, Landroid/os/Bundle;

    .end local p3    # "appSearchData":Landroid/os/Bundle;
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 1595
    .restart local p3    # "appSearchData":Landroid/os/Bundle;
    :goto_1
    const-string v5, "source"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1596
    const-string v5, "source"

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    :cond_1
    const-string v5, "app_data"

    invoke-virtual {v3, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1599
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1600
    const-string v5, "query"

    invoke-virtual {v3, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1602
    :cond_2
    if-eqz p2, :cond_3

    .line 1603
    const-string v5, "select_query"

    invoke-virtual {v3, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1605
    :cond_3
    invoke-virtual {v3, p4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 1607
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1608
    :catch_0
    move-exception v1

    .line 1609
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    const-string v5, "Launcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Global search activity not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1592
    .end local v1    # "ex":Landroid/content/ActivityNotFoundException;
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .end local p3    # "appSearchData":Landroid/os/Bundle;
    .local v0, "appSearchData":Landroid/os/Bundle;
    move-object p3, v0

    .end local v0    # "appSearchData":Landroid/os/Bundle;
    .restart local p3    # "appSearchData":Landroid/os/Bundle;
    goto :goto_1
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 3
    .param p1, "initialQuery"    # Ljava/lang/String;
    .param p2, "selectInitialQuery"    # Z
    .param p3, "appSearchData"    # Landroid/os/Bundle;
    .param p4, "globalSearch"    # Z

    .prologue
    .line 1554
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->showWorkspace(Z)V

    .line 1556
    if-nez p1, :cond_0

    .line 1558
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->getTypedText()Ljava/lang/String;

    move-result-object p1

    .line 1560
    :cond_0
    if-nez p3, :cond_1

    .line 1561
    new-instance p3, Landroid/os/Bundle;

    .end local p3    # "appSearchData":Landroid/os/Bundle;
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 1562
    .restart local p3    # "appSearchData":Landroid/os/Bundle;
    const-string v1, "source"

    const-string v2, "launcher-search"

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1565
    .local v0, "sourceBounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    if-eqz v1, :cond_2

    .line 1566
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    invoke-virtual {v1}, Lcom/android/launcher2/SearchDropTargetBar;->getSearchBarBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1569
    :cond_2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/launcher2/Launcher;->startGlobalSearch(Ljava/lang/String;ZLandroid/os/Bundle;Landroid/graphics/Rect;)V

    .line 1571
    return-void
.end method

.method unlockAllApps()V
    .locals 0

    .prologue
    .line 2923
    return-void
.end method

.method public unlockScreenOrientation(Z)V
    .locals 4
    .param p1, "immediate"    # Z

    .prologue
    .line 3689
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isRotationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3690
    if-eqz p1, :cond_1

    .line 3691
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->setRequestedOrientation(I)V

    .line 3700
    :cond_0
    :goto_0
    return-void

    .line 3693
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher2/Launcher$26;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Launcher$26;-><init>(Lcom/android/launcher2/Launcher;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method updateWallpaperVisibility(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/high16 v2, 0x100000

    .line 2400
    if-eqz p1, :cond_1

    move v1, v2

    .line 2401
    .local v1, "wpflags":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v0, v3, v2

    .line 2403
    .local v0, "curflags":I
    if-eq v1, v0, :cond_0

    .line 2404
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 2406
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher2/Launcher;->setWorkspaceBackground(Z)V

    .line 2407
    return-void

    .line 2400
    .end local v0    # "curflags":I
    .end local v1    # "wpflags":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

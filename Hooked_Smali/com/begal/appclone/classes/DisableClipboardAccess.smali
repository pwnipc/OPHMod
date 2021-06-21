.class Lcom/begal/appclone/classes/DisableClipboardAccess;
.super Ljava/lang/Object;
.source "DisableClipboardAccess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/begal/appclone/classes/DisableClipboardAccess$ClearClipboardReceiver;
    }
.end annotation


# static fields
.field private static final CLEAR_CLIPBOARD_TIMEOUT_MILLIS:I = 0x7530

.field private static final EMPTY_CLIP_DATA:Landroid/content/ClipData;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mClearingClipDataToString:Ljava/lang/String;

.field private mClipData:Landroid/content/ClipData;

.field private mClipboardTimeout:Z

.field private mContext:Landroid/content/Context;

.field private mDisableClipboardReadAccess:Z

.field private mDisableClipboardWriteAccess:Z

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPersistentClipboard:Z

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mPrivateClipboard:Z

.field private mSetClipboardDataOnStart:Ljava/lang/String;

.field private mTimeoutHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 40
    const-class v0, Lcom/begal/appclone/classes/DisableClipboardAccess;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/begal/appclone/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    .line 58
    const-string v0, ""

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    sput-object v0, Lcom/begal/appclone/classes/DisableClipboardAccess;->EMPTY_CLIP_DATA:Landroid/content/ClipData;

    return-void
.end method

.method constructor <init>(Lcom/begal/appclone/classes/CloneSettings;)V
    .registers 5
    .param p1, "cloneSettings"    # Lcom/begal/appclone/classes/CloneSettings;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/begal/appclone/classes/DisableClipboardAccess;->mListeners:Ljava/util/List;

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/begal/appclone/classes/DisableClipboardAccess;->mTimeoutHandler:Landroid/os/Handler;

    .line 63
    const-string v0, "privateClipboard"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/begal/appclone/classes/DisableClipboardAccess;->mPrivateClipboard:Z

    .line 64
    iget-boolean v0, p0, Lcom/begal/appclone/classes/DisableClipboardAccess;->mPrivateClipboard:Z

    if-eqz v0, :cond_37

    .line 65
    const-string v0, "persistentClipboard"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/begal/appclone/classes/DisableClipboardAccess;->mPersistentClipboard:Z

    goto :goto_57

    .line 67
    :cond_37
    const-string v0, "disableClipboardReadAccess"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/begal/appclone/classes/DisableClipboardAccess;->mDisableClipboardReadAccess:Z

    .line 68
    const-string v0, "disableClipboardWriteAccess"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/begal/appclone/classes/DisableClipboardAccess;->mDisableClipboardWriteAccess:Z

    .line 70
    :goto_57
    const-string v0, "clipboardTimeout"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/begal/appclone/classes/DisableClipboardAccess;->mClipboardTimeout:Z

    .line 71
    const-string v0, "setClipboardDataOnStart"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/begal/appclone/classes/DisableClipboardAccess;->mSetClipboardDataOnStart:Ljava/lang/String;

    .line 73
    sget-object v0, Lcom/begal/appclone/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DisableClipboardAccess; mPrivateClipboard: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/begal/appclone/classes/DisableClipboardAccess;->mPrivateClipboard:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mPersistentClipboard: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/begal/appclone/classes/DisableClipboardAccess;->mPersistentClipboard:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mDisableClipboardReadAccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/begal/appclone/classes/DisableClipboardAccess;->mDisableClipboardReadAccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mDisableClipboardWriteAccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/begal/appclone/classes/DisableClipboardAccess;->mDisableClipboardWriteAccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mClipboardTimeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/begal/appclone/classes/DisableClipboardAccess;->mClipboardTimeout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/begal/appclone/classes/DisableClipboardAccess;)Z
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/DisableClipboardAccess;

    .line 38
    iget-boolean v0, p0, Lcom/begal/appclone/classes/DisableClipboardAccess;->mPrivateClipboard:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 38
    sget-object v0, Lcom/begal/appclone/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/begal/appclone/classes/DisableClipboardAccess;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/DisableClipboardAccess;

    .line 38
    iget-object v0, p0, Lcom/begal/appclone/classes/DisableClipboardAccess;->mClearingClipDataToString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/begal/appclone/classes/DisableClipboardAccess;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/DisableClipboardAccess;
    .param p1, "x1"    # Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/begal/appclone/classes/DisableClipboardAccess;->mClearingClipDataToString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/begal/appclone/classes/DisableClipboardAccess;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/DisableClipboardAccess;

    .line 38
    iget-object v0, p0, Lcom/begal/appclone/classes/DisableClipboardAccess;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .line 38
    invoke-static {p0, p1}, Lcom/begal/appclone/classes/DisableClipboardAccess;->clearClipboard(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/begal/appclone/classes/DisableClipboardAccess;)Landroid/content/ClipData;
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/DisableClipboardAccess;

    .line 38
    iget-object v0, p0, Lcom/begal/appclone/classes/DisableClipboardAccess;->mClipData:Landroid/content/ClipData;

    return-object v0
.end method

.method static synthetic access$202(Lcom/begal/appclone/classes/DisableClipboardAccess;Landroid/content/ClipData;)Landroid/content/ClipData;
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/DisableClipboardAccess;
    .param p1, "x1"    # Landroid/content/ClipData;

    .line 38
    iput-object p1, p0, Lcom/begal/appclone/classes/DisableClipboardAccess;->mClipData:Landroid/content/ClipData;

    return-object p1
.end method

.method static synthetic access$300(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .registers 2
    .param p0, "x0"    # Landroid/os/Parcelable;

    .line 38
    invoke-static {p0}, Lcom/begal/appclone/classes/DisableClipboardAccess;->cloneParcelable(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/begal/appclone/classes/DisableClipboardAccess;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/DisableClipboardAccess;

    .line 38
    iget-object v0, p0, Lcom/begal/appclone/classes/DisableClipboardAccess;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/begal/appclone/classes/DisableClipboardAccess;)V
    .registers 1
    .param p0, "x0"    # Lcom/begal/appclone/classes/DisableClipboardAccess;

    .line 38
    invoke-direct {p0}, Lcom/begal/appclone/classes/DisableClipboardAccess;->saveClipboardIfPersistent()V

    return-void
.end method

.method static synthetic access$600(Lcom/begal/appclone/classes/DisableClipboardAccess;Landroid/content/ClipboardManager;Landroid/content/ClipData;)V
    .registers 3
    .param p0, "x0"    # Lcom/begal/appclone/classes/DisableClipboardAccess;
    .param p1, "x1"    # Landroid/content/ClipboardManager;
    .param p2, "x2"    # Landroid/content/ClipData;

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/begal/appclone/classes/DisableClipboardAccess;->startClipboardTimeout(Landroid/content/ClipboardManager;Landroid/content/ClipData;)V

    return-void
.end method

.method static synthetic access$700(Lcom/begal/appclone/classes/DisableClipboardAccess;)Z
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/DisableClipboardAccess;

    .line 38
    iget-boolean v0, p0, Lcom/begal/appclone/classes/DisableClipboardAccess;->mDisableClipboardReadAccess:Z

    return v0
.end method

.method static synthetic access$800(Lcom/begal/appclone/classes/DisableClipboardAccess;)Z
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/DisableClipboardAccess;

    .line 38
    iget-boolean v0, p0, Lcom/begal/appclone/classes/DisableClipboardAccess;->mDisableClipboardWriteAccess:Z

    return v0
.end method

.method static synthetic access$900(Lcom/begal/appclone/classes/DisableClipboardAccess;)Z
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/DisableClipboardAccess;

    .line 38
    iget-boolean v0, p0, Lcom/begal/appclone/classes/DisableClipboardAccess;->mClipboardTimeout:Z

    return v0
.end method

.method private static clearClipboard(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "expectedClipDataToString"    # Ljava/lang/String;

    .line 303
    sget-object v0, Lcom/begal/appclone/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    const-string v1, "clearClipboard; "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :try_start_7
    const-string v0, "clipboard"

    .line 307
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 308
    .local v0, "clipboardManager":Landroid/content/ClipboardManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, "currentClipDataToString":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 310
    sget-object v2, Lcom/begal/appclone/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    const-string v3, "clearClipboard; clearing clipboard"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    sget-object v2, Lcom/begal/appclone/classes/DisableClipboardAccess;->EMPTY_CLIP_DATA:Landroid/content/ClipData;

    invoke-virtual {v0, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 312
    const-string v2, "Clipboard cleared"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_48

    .line 314
    :cond_41
    sget-object v2, Lcom/begal/appclone/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    const-string v3, "clearClipboard; not clearing clipboard; found other clip data"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_48} :catch_49

    .line 318
    .end local v0    # "clipboardManager":Landroid/content/ClipboardManager;
    .end local v1    # "currentClipDataToString":Ljava/lang/String;
    :goto_48
    goto :goto_4f

    .line 316
    :catch_49
    move-exception v0

    .line 317
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/begal/appclone/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 319
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4f
    return-void
.end method

.method private static cloneParcelable(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 362
    .local p0, "parcelable":Landroid/os/Parcelable;, "TT;"
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 363
    return-object v0

    .line 366
    :cond_4
    nop

    .line 368
    .local v0, "p":Landroid/os/Parcel;
    :try_start_5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    move-object v0, v1

    .line 369
    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 370
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 371
    const-class v1, Landroid/content/ClipData;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_23

    .line 373
    if-eqz v0, :cond_22

    .line 374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 371
    :cond_22
    return-object v1

    .line 373
    :catchall_23
    move-exception v1

    if-eqz v0, :cond_29

    .line 374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 376
    :cond_29
    throw v1
.end method

.method private installClipboardManagerHook(Landroid/content/Context;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;

    .line 103
    invoke-direct {p0}, Lcom/begal/appclone/classes/DisableClipboardAccess;->loadClipboardIfPersistent()V

    .line 106
    :try_start_3
    const-string v0, "clipboard"

    .line 107
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 108
    .local v0, "clipboardManager":Landroid/content/ClipboardManager;
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasText()Z

    .line 111
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x1a

    const/4 v4, 0x1

    if-ge v1, v3, :cond_33

    const-string v1, "O"

    sget-object v5, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    goto :goto_33

    .line 116
    :cond_21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v5, "sService"

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 117
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 118
    .end local v1    # "field":Ljava/lang/reflect/Field;
    goto :goto_45

    .line 112
    :cond_33
    :goto_33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v5, "mService"

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 113
    .restart local v1    # "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 114
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 115
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .local v5, "originalService":Ljava/lang/Object;
    nop

    .line 118
    :goto_45
    move-object v1, v5

    .line 121
    .end local v5    # "originalService":Ljava/lang/Object;
    .local v1, "originalService":Ljava/lang/Object;
    new-instance v5, Lcom/begal/appclone/classes/DisableClipboardAccess$1;

    invoke-direct {v5, p0, v0, v1}, Lcom/begal/appclone/classes/DisableClipboardAccess$1;-><init>(Lcom/begal/appclone/classes/DisableClipboardAccess;Landroid/content/ClipboardManager;Ljava/lang/Object;)V

    .line 225
    .local v5, "invocationHandler":Ljava/lang/reflect/InvocationHandler;
    const-string v6, "android.content.IClipboard"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 226
    .local v6, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Class;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-static {v7, v8, v5}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v7

    .line 229
    .local v7, "proxy":Ljava/lang/Object;
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v8, v3, :cond_82

    const-string v3, "O"

    sget-object v8, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    goto :goto_82

    .line 234
    :cond_71
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v8, "sService"

    invoke-virtual {v3, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 235
    .local v3, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 236
    invoke-virtual {v3, v2, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 236
    .end local v3    # "field":Ljava/lang/reflect/Field;
    goto :goto_93

    .line 230
    :cond_82
    :goto_82
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mService"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 231
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 232
    invoke-virtual {v2, v0, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 233
    .end local v2    # "field":Ljava/lang/reflect/Field;
    nop

    .line 238
    :goto_93
    sget-object v2, Lcom/begal/appclone/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    const-string v3, "installClipboardManagerHook; installed proxy"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_9a} :catch_9b

    .line 242
    .end local v0    # "clipboardManager":Landroid/content/ClipboardManager;
    .end local v1    # "originalService":Ljava/lang/Object;
    .end local v5    # "invocationHandler":Ljava/lang/reflect/InvocationHandler;
    .end local v6    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "proxy":Ljava/lang/Object;
    goto :goto_a1

    .line 240
    :catch_9b
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/begal/appclone/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a1
    return-void
.end method

.method private loadClipboardIfPersistent()V
    .registers 6

    .line 323
    iget-boolean v0, p0, Lcom/begal/appclone/classes/DisableClipboardAccess;->mPersistentClipboard:Z

    if-eqz v0, :cond_47

    .line 325
    :try_start_4
    iget-object v0, p0, Lcom/begal/appclone/classes/DisableClipboardAccess;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "persistent_clip_data"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "s":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 327
    new-instance v1, Lcom/begal/appclone/classes/util/SimpleCrypt;

    const-string v2, "gvdshfjry8wehu43"

    invoke-direct {v1, v2}, Lcom/begal/appclone/classes/util/SimpleCrypt;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/begal/appclone/classes/util/SimpleCrypt;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 328
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 329
    .local v2, "bytes":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 330
    .local v3, "parcel":Landroid/os/Parcel;
    array-length v4, v2

    invoke-virtual {v3, v2, v1, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 331
    invoke-virtual {v3, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 332
    sget-object v1, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipData;

    iput-object v1, p0, Lcom/begal/appclone/classes/DisableClipboardAccess;->mClipData:Landroid/content/ClipData;

    .line 333
    sget-object v1, Lcom/begal/appclone/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    const-string v4, "saveClipboardIfPersistent; clipboard loaded"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_40} :catch_41

    .line 337
    .end local v0    # "s":Ljava/lang/String;
    .end local v2    # "bytes":[B
    .end local v3    # "parcel":Landroid/os/Parcel;
    :cond_40
    goto :goto_47

    .line 335
    :catch_41
    move-exception v0

    .line 336
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/begal/appclone/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 339
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_47
    :goto_47
    return-void
.end method

.method private saveClipboardIfPersistent()V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .line 344
    iget-boolean v0, p0, Lcom/begal/appclone/classes/DisableClipboardAccess;->mPersistentClipboard:Z

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/begal/appclone/classes/DisableClipboardAccess;->mClipData:Landroid/content/ClipData;

    if-eqz v0, :cond_44

    .line 346
    :try_start_8
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 347
    .local v0, "parcel":Landroid/os/Parcel;
    iget-object v1, p0, Lcom/begal/appclone/classes/DisableClipboardAccess;->mClipData:Landroid/content/ClipData;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ClipData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 348
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    .line 349
    .local v1, "bytes":[B
    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 350
    .local v2, "s":Ljava/lang/String;
    new-instance v3, Lcom/begal/appclone/classes/util/SimpleCrypt;

    const-string v4, "gvdshfjry8wehu43"

    invoke-direct {v3, v4}, Lcom/begal/appclone/classes/util/SimpleCrypt;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/begal/appclone/classes/util/SimpleCrypt;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 351
    iget-object v3, p0, Lcom/begal/appclone/classes/DisableClipboardAccess;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "persistent_clip_data"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 352
    sget-object v3, Lcom/begal/appclone/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    const-string v4, "saveClipboardIfPersistent; clipboard saved"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_3d} :catch_3e

    .line 355
    .end local v0    # "parcel":Landroid/os/Parcel;
    .end local v1    # "bytes":[B
    .end local v2    # "s":Ljava/lang/String;
    goto :goto_44

    .line 353
    :catch_3e
    move-exception v0

    .line 354
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/begal/appclone/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 357
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_44
    :goto_44
    return-void
.end method

.method private startClipboardTimeout(Landroid/content/ClipboardManager;Landroid/content/ClipData;)V
    .registers 7
    .param p1, "clipboardManager"    # Landroid/content/ClipboardManager;
    .param p2, "clipData"    # Landroid/content/ClipData;

    .line 249
    :try_start_0
    sget-object v0, Lcom/begal/appclone/classes/DisableClipboardAccess;->EMPTY_CLIP_DATA:Landroid/content/ClipData;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 250
    sget-object v0, Lcom/begal/appclone/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    const-string v1, "startClipboardTimeout; empty clip data"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return-void

    .line 254
    :cond_10
    iget-object v0, p0, Lcom/begal/appclone/classes/DisableClipboardAccess;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 255
    iget-object v0, p0, Lcom/begal/appclone/classes/DisableClipboardAccess;->mTimeoutHandler:Landroid/os/Handler;

    new-instance v1, Lcom/begal/appclone/classes/DisableClipboardAccess$2;

    invoke-direct {v1, p0, p1}, Lcom/begal/appclone/classes/DisableClipboardAccess$2;-><init>(Lcom/begal/appclone/classes/DisableClipboardAccess;Landroid/content/ClipboardManager;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 279
    iget-object v0, p0, Lcom/begal/appclone/classes/DisableClipboardAccess;->mTimeoutHandler:Landroid/os/Handler;

    new-instance v1, Lcom/begal/appclone/classes/DisableClipboardAccess$3;

    invoke-direct {v1, p0}, Lcom/begal/appclone/classes/DisableClipboardAccess$3;-><init>(Lcom/begal/appclone/classes/DisableClipboardAccess;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 286
    sget-object v0, Lcom/begal/appclone/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    const-string v1, "startClipboardTimeout; started clipboard timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_35} :catch_36

    .line 290
    goto :goto_3c

    .line 288
    :catch_36
    move-exception v0

    .line 289
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/begal/appclone/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 291
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_3c
    return-void
.end method


# virtual methods
.method init(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 83
    iget-boolean v0, p0, Lcom/begal/appclone/classes/DisableClipboardAccess;->mDisableClipboardReadAccess:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/begal/appclone/classes/DisableClipboardAccess;->mDisableClipboardWriteAccess:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/begal/appclone/classes/DisableClipboardAccess;->mPrivateClipboard:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/begal/appclone/classes/DisableClipboardAccess;->mClipboardTimeout:Z

    if-eqz v0, :cond_1b

    .line 84
    :cond_10
    iput-object p1, p0, Lcom/begal/appclone/classes/DisableClipboardAccess;->mContext:Landroid/content/Context;

    .line 85
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/begal/appclone/classes/DisableClipboardAccess;->mPreferences:Landroid/content/SharedPreferences;

    .line 86
    invoke-direct {p0, p1}, Lcom/begal/appclone/classes/DisableClipboardAccess;->installClipboardManagerHook(Landroid/content/Context;)V

    .line 89
    :cond_1b
    iget-object v0, p0, Lcom/begal/appclone/classes/DisableClipboardAccess;->mSetClipboardDataOnStart:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 91
    :try_start_23
    const-string v0, "clipboard"

    .line 92
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 93
    .local v0, "clipboardManager":Landroid/content/ClipboardManager;
    const-string v1, ""

    iget-object v2, p0, Lcom/begal/appclone/classes/DisableClipboardAccess;->mSetClipboardDataOnStart:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_36} :catch_37

    .line 96
    .end local v0    # "clipboardManager":Landroid/content/ClipboardManager;
    goto :goto_3d

    .line 94
    :catch_37
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/begal/appclone/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3d
    :goto_3d
    return-void
.end method

.class public Lcom/begal/appclone/classes/PictureInPicture;
.super Lcom/begal/appclone/classes/AbstractActivityContentProvider;
.source "PictureInPicture.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Registered"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field static sActivity:Landroid/app/Activity;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mPictureInPictureKeyCode:I

.field private mPictureInPictureLongPress:Z

.field private mPictureInPictureSupport:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    const-class v0, Lcom/begal/appclone/classes/PictureInPicture;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/begal/appclone/classes/PictureInPicture;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/begal/appclone/classes/CloneSettings;)V
    .registers 5
    .param p1, "cloneSettings"    # Lcom/begal/appclone/classes/CloneSettings;

    .line 33
    invoke-direct {p0}, Lcom/begal/appclone/classes/AbstractActivityContentProvider;-><init>()V

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/begal/appclone/classes/PictureInPicture;->mHandler:Landroid/os/Handler;

    .line 35
    const-string v0, "pictureInPictureSupport"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/begal/appclone/classes/PictureInPicture;->mPictureInPictureSupport:Z

    .line 36
    const-string v0, "pictureInPictureKeyCode"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/begal/appclone/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/begal/appclone/classes/PictureInPicture;->mPictureInPictureKeyCode:I

    .line 37
    const-string v0, "pictureInPictureLongPress"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/begal/appclone/classes/PictureInPicture;->mPictureInPictureLongPress:Z

    .line 39
    sget-object v0, Lcom/begal/appclone/classes/PictureInPicture;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PictureInPicture; mPictureInPictureSupport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/begal/appclone/classes/PictureInPicture;->mPictureInPictureSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mPictureInPictureKeyCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/begal/appclone/classes/PictureInPicture;->mPictureInPictureKeyCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mPictureInPictureLongPress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/begal/appclone/classes/PictureInPicture;->mPictureInPictureLongPress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 20
    sget-object v0, Lcom/begal/appclone/classes/PictureInPicture;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/begal/appclone/classes/PictureInPicture;)I
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/PictureInPicture;

    .line 20
    iget v0, p0, Lcom/begal/appclone/classes/PictureInPicture;->mPictureInPictureKeyCode:I

    return v0
.end method

.method static synthetic access$200(Lcom/begal/appclone/classes/PictureInPicture;)Z
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/PictureInPicture;

    .line 20
    iget-boolean v0, p0, Lcom/begal/appclone/classes/PictureInPicture;->mPictureInPictureLongPress:Z

    return v0
.end method

.method static synthetic access$300(Lcom/begal/appclone/classes/PictureInPicture;Landroid/app/Activity;)V
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/PictureInPicture;
    .param p1, "x1"    # Landroid/app/Activity;

    .line 20
    invoke-direct {p0, p1}, Lcom/begal/appclone/classes/PictureInPicture;->startPictureInPictureDelayed(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$400(Lcom/begal/appclone/classes/PictureInPicture;Landroid/app/Activity;)V
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/PictureInPicture;
    .param p1, "x1"    # Landroid/app/Activity;

    .line 20
    invoke-direct {p0, p1}, Lcom/begal/appclone/classes/PictureInPicture;->startPictureInPicture(Landroid/app/Activity;)V

    return-void
.end method

.method private startPictureInPicture(Landroid/app/Activity;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;

    .line 109
    sget-object v0, Lcom/begal/appclone/classes/PictureInPicture;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPictureInPicture; activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :try_start_16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "enterPictureInPictureMode"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 113
    .local v0, "method":Ljava/lang/reflect/Method;
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_28} :catch_29

    .line 118
    .end local v0    # "method":Ljava/lang/reflect/Method;
    goto :goto_39

    .line 114
    :catch_29
    move-exception v0

    .line 115
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/begal/appclone/classes/PictureInPicture;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    const-string v1, "Failed to start picture-in-picture mode."

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 117
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 119
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_39
    return-void
.end method

.method private startPictureInPictureDelayed(Landroid/app/Activity;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;

    .line 98
    sget-object v0, Lcom/begal/appclone/classes/PictureInPicture;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPictureInPictureDelayed; activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/begal/appclone/classes/PictureInPicture;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/begal/appclone/classes/PictureInPicture$2;

    invoke-direct {v1, p0, p1}, Lcom/begal/appclone/classes/PictureInPicture$2;-><init>(Lcom/begal/appclone/classes/PictureInPicture;Landroid/app/Activity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 106
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    iget-boolean v0, p0, Lcom/begal/appclone/classes/PictureInPicture;->mPictureInPictureSupport:Z

    if-eqz v0, :cond_e

    .line 48
    invoke-virtual {p0}, Lcom/begal/appclone/classes/PictureInPicture;->onCreate()Z

    .line 49
    sget-object v0, Lcom/begal/appclone/classes/PictureInPicture;->TAG:Ljava/lang/String;

    const-string v1, "init; created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_e
    return-void
.end method

.method protected onActivityCreated(Landroid/app/Activity;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;

    .line 55
    sget-object v0, Lcom/begal/appclone/classes/PictureInPicture;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityCreated; activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-boolean v0, p0, Lcom/begal/appclone/classes/PictureInPicture;->mPictureInPictureSupport:Z

    if-eqz v0, :cond_26

    .line 58
    iget-object v0, p0, Lcom/begal/appclone/classes/PictureInPicture;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/begal/appclone/classes/PictureInPicture$1;

    invoke-direct {v1, p0, p1}, Lcom/begal/appclone/classes/PictureInPicture$1;-><init>(Lcom/begal/appclone/classes/PictureInPicture;Landroid/app/Activity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 95
    :cond_26
    return-void
.end method

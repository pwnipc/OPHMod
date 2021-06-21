.class public Lcom/begal/appclone/classes/LaunchTileService;
.super Landroid/service/quicksettings/TileService;
.source "LaunchTileService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    const-class v0, Lcom/begal/appclone/classes/LaunchTileService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/begal/appclone/classes/LaunchTileService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 5

    .line 28
    sget-object v0, Lcom/begal/appclone/classes/LaunchTileService;->TAG:Ljava/lang/String;

    const-string v1, "onClick; "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-virtual {p0}, Lcom/begal/appclone/classes/LaunchTileService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 32
    .local v0, "context":Landroid/content/Context;
    :try_start_b
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/begal/appclone/classes/Utils;->getLaunchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 33
    .local v1, "i":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 34
    invoke-virtual {p0, v1}, Lcom/begal/appclone/classes/LaunchTileService;->startActivity(Landroid/content/Intent;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1b} :catch_1c

    .line 38
    .end local v1    # "i":Landroid/content/Intent;
    goto :goto_2c

    .line 35
    :catch_1c
    move-exception v1

    .line 36
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/begal/appclone/classes/LaunchTileService;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    const-string v2, "Failed to launch app."

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 39
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2c
    return-void
.end method

.method public onStartListening()V
    .registers 3

    .line 23
    sget-object v0, Lcom/begal/appclone/classes/LaunchTileService;->TAG:Ljava/lang/String;

    const-string v1, "onStartListening; "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    return-void
.end method

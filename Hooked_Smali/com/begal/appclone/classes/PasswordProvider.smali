.class public Lcom/begal/appclone/classes/PasswordProvider;
.super Lcom/begal/appclone/classes/AbstractActivityContentProvider;
.source "PasswordProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 14
    const-class v0, Lcom/begal/appclone/classes/PasswordProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/begal/appclone/classes/PasswordProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Lcom/begal/appclone/classes/AbstractActivityContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityCreated(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 18
    sget-object v0, Lcom/begal/appclone/classes/PasswordProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityCreated; activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    instance-of v0, p1, Lcom/begal/appclone/classes/PasswordActivity;

    if-eqz v0, :cond_22

    .line 21
    sget-object v0, Lcom/begal/appclone/classes/PasswordProvider;->TAG:Ljava/lang/String;

    const-string v1, "onActivityCreated; ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return-void

    .line 25
    :cond_22
    sget-boolean v0, Lcom/begal/appclone/classes/PasswordActivity;->sUnlocked:Z

    if-nez v0, :cond_3d

    .line 26
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/begal/appclone/classes/PasswordActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 28
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 29
    sget-object v1, Lcom/begal/appclone/classes/PasswordProvider;->TAG:Ljava/lang/String;

    const-string v2, "onActivityCreated; started PasswordActivity"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .end local v0    # "i":Landroid/content/Intent;
    goto :goto_44

    .line 31
    :cond_3d
    sget-object v0, Lcom/begal/appclone/classes/PasswordProvider;->TAG:Ljava/lang/String;

    const-string v1, "onActivityCreated; already unlocked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :goto_44
    return-void
.end method

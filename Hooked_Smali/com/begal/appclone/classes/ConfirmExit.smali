.class public Lcom/begal/appclone/classes/ConfirmExit;
.super Lcom/begal/appclone/classes/BackKeyHandler;
.source "ConfirmExit.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mConfirmExit:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    const-class v0, Lcom/begal/appclone/classes/ConfirmExit;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/begal/appclone/classes/ConfirmExit;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/begal/appclone/classes/CloneSettings;)V
    .registers 5
    .param p1, "cloneSettings"    # Lcom/begal/appclone/classes/CloneSettings;

    .line 19
    invoke-direct {p0}, Lcom/begal/appclone/classes/BackKeyHandler;-><init>()V

    .line 21
    const-string v0, "confirmExit"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/begal/appclone/classes/ConfirmExit;->mConfirmExit:Z

    .line 22
    sget-object v0, Lcom/begal/appclone/classes/ConfirmExit;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConfirmExit; confirmExit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/begal/appclone/classes/ConfirmExit;->mConfirmExit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return-void
.end method


# virtual methods
.method protected handleBackPressed(Landroid/app/Activity;Ljava/lang/Object;)Z
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "token"    # Ljava/lang/Object;

    .line 35
    if-eqz p1, :cond_3c

    .line 37
    invoke-static {p1}, Lcom/begal/appclone/classes/Utils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "appName":Ljava/lang/String;
    invoke-static {p1}, Lcom/begal/appclone/classes/Utils;->getDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Are you sure you want to exit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/begal/appclone/classes/ConfirmExit$1;

    invoke-direct {v3, p0, p1}, Lcom/begal/appclone/classes/ConfirmExit$1;-><init>(Lcom/begal/appclone/classes/ConfirmExit;Landroid/app/Activity;)V

    .line 40
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    .line 46
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 47
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 48
    const/4 v1, 0x0

    return v1

    .line 51
    .end local v0    # "appName":Ljava/lang/String;
    :cond_3c
    const/4 v0, 0x1

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    iget-boolean v0, p0, Lcom/begal/appclone/classes/ConfirmExit;->mConfirmExit:Z

    if-eqz v0, :cond_7

    .line 28
    invoke-virtual {p0}, Lcom/begal/appclone/classes/ConfirmExit;->onCreate()Z

    .line 30
    :cond_7
    return-void
.end method

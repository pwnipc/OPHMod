.class public Lcom/begal/appclone/classes/DefaultProvider$MyActivity;
.super Landroid/app/Activity;
.source "DefaultProvider.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Registered"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/begal/appclone/classes/DefaultProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyActivity"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1086
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 1088
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/begal/appclone/classes/DefaultProvider$MyActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/begal/appclone/classes/DefaultProvider$MyActivity;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/DefaultProvider$MyActivity;

    .line 1086
    iget-object v0, p0, Lcom/begal/appclone/classes/DefaultProvider$MyActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 1093
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1096
    :try_start_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1097
    invoke-static {p0}, Lcom/begal/appclone/classes/Utils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "This app was cloned using a non-official version of App Cloner.\n\nTo continue using this app reclone it using the official install of App Cloner."

    .line 1098
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    .line 1100
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/begal/appclone/classes/DefaultProvider$MyActivity$1;

    invoke-direct {v1, p0}, Lcom/begal/appclone/classes/DefaultProvider$MyActivity$1;-><init>(Lcom/begal/appclone/classes/DefaultProvider$MyActivity;)V

    .line 1101
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1119
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2a} :catch_2b

    .line 1123
    goto :goto_37

    .line 1120
    :catch_2b
    move-exception v0

    .line 1121
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/begal/appclone/classes/DefaultProvider;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/DefaultProvider;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1122
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 1124
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_37
    return-void
.end method

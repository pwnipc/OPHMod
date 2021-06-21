.class Lcom/begal/appclone/classes/DisableClipboardAccess$2;
.super Ljava/lang/Object;
.source "DisableClipboardAccess.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/begal/appclone/classes/DisableClipboardAccess;->startClipboardTimeout(Landroid/content/ClipboardManager;Landroid/content/ClipData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/begal/appclone/classes/DisableClipboardAccess;

.field final synthetic val$clipboardManager:Landroid/content/ClipboardManager;


# direct methods
.method constructor <init>(Lcom/begal/appclone/classes/DisableClipboardAccess;Landroid/content/ClipboardManager;)V
    .registers 3
    .param p1, "this$0"    # Lcom/begal/appclone/classes/DisableClipboardAccess;

    .line 255
    iput-object p1, p0, Lcom/begal/appclone/classes/DisableClipboardAccess$2;->this$0:Lcom/begal/appclone/classes/DisableClipboardAccess;

    iput-object p2, p0, Lcom/begal/appclone/classes/DisableClipboardAccess$2;->val$clipboardManager:Landroid/content/ClipboardManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 258
    iget-object v0, p0, Lcom/begal/appclone/classes/DisableClipboardAccess$2;->this$0:Lcom/begal/appclone/classes/DisableClipboardAccess;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/begal/appclone/classes/DisableClipboardAccess$2;->val$clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v2}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/begal/appclone/classes/DisableClipboardAccess;->mClearingClipDataToString:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/begal/appclone/classes/DisableClipboardAccess;->access$1002(Lcom/begal/appclone/classes/DisableClipboardAccess;Ljava/lang/String;)Ljava/lang/String;

    .line 260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x7530

    add-long v4, v0, v2

    .line 262
    .local v4, "when":J
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 263
    .local v0, "i":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/begal/appclone/classes/DisableClipboardAccess$2;->this$0:Lcom/begal/appclone/classes/DisableClipboardAccess;

    # getter for: Lcom/begal/appclone/classes/DisableClipboardAccess;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/begal/appclone/classes/DisableClipboardAccess;->access$1100(Lcom/begal/appclone/classes/DisableClipboardAccess;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/begal/appclone/classes/DisableClipboardAccess$ClearClipboardReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 264
    iget-object v1, p0, Lcom/begal/appclone/classes/DisableClipboardAccess$2;->this$0:Lcom/begal/appclone/classes/DisableClipboardAccess;

    # getter for: Lcom/begal/appclone/classes/DisableClipboardAccess;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/begal/appclone/classes/DisableClipboardAccess;->access$1100(Lcom/begal/appclone/classes/DisableClipboardAccess;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    const-string v1, "expected_clip_data_to_string"

    iget-object v2, p0, Lcom/begal/appclone/classes/DisableClipboardAccess$2;->this$0:Lcom/begal/appclone/classes/DisableClipboardAccess;

    # getter for: Lcom/begal/appclone/classes/DisableClipboardAccess;->mClearingClipDataToString:Ljava/lang/String;
    invoke-static {v2}, Lcom/begal/appclone/classes/DisableClipboardAccess;->access$1000(Lcom/begal/appclone/classes/DisableClipboardAccess;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    iget-object v1, p0, Lcom/begal/appclone/classes/DisableClipboardAccess$2;->this$0:Lcom/begal/appclone/classes/DisableClipboardAccess;

    # getter for: Lcom/begal/appclone/classes/DisableClipboardAccess;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/begal/appclone/classes/DisableClipboardAccess;->access$1100(Lcom/begal/appclone/classes/DisableClipboardAccess;)Landroid/content/Context;

    move-result-object v1

    long-to-int v2, v4

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 268
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/begal/appclone/classes/DisableClipboardAccess$2;->this$0:Lcom/begal/appclone/classes/DisableClipboardAccess;

    # getter for: Lcom/begal/appclone/classes/DisableClipboardAccess;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/begal/appclone/classes/DisableClipboardAccess;->access$1100(Lcom/begal/appclone/classes/DisableClipboardAccess;)Landroid/content/Context;

    move-result-object v2

    const-string v6, "alarm"

    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 269
    .local v2, "alarmManager":Landroid/app/AlarmManager;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v6, v7, :cond_75

    .line 270
    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/app/AlarmManager;->setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_82

    .line 271
    :cond_75
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-lt v6, v7, :cond_7f

    .line 272
    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_82

    .line 274
    :cond_7f
    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 276
    :goto_82
    return-void
.end method

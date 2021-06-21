.class Lcom/begal/appclone/classes/NotificationOptions$2$1;
.super Ljava/lang/Object;
.source "NotificationOptions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/begal/appclone/classes/NotificationOptions$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/begal/appclone/classes/NotificationOptions$2;

.field final synthetic val$id:I

.field final synthetic val$notification:Landroid/app/Notification;

.field final synthetic val$notificationManager:Landroid/app/NotificationManager;


# direct methods
.method constructor <init>(Lcom/begal/appclone/classes/NotificationOptions$2;Landroid/app/NotificationManager;ILandroid/app/Notification;)V
    .registers 5
    .param p1, "this$1"    # Lcom/begal/appclone/classes/NotificationOptions$2;

    .line 807
    iput-object p1, p0, Lcom/begal/appclone/classes/NotificationOptions$2$1;->this$1:Lcom/begal/appclone/classes/NotificationOptions$2;

    iput-object p2, p0, Lcom/begal/appclone/classes/NotificationOptions$2$1;->val$notificationManager:Landroid/app/NotificationManager;

    iput p3, p0, Lcom/begal/appclone/classes/NotificationOptions$2$1;->val$id:I

    iput-object p4, p0, Lcom/begal/appclone/classes/NotificationOptions$2$1;->val$notification:Landroid/app/Notification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 813
    :try_start_0
    iget-object v0, p0, Lcom/begal/appclone/classes/NotificationOptions$2$1;->val$notificationManager:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/begal/appclone/classes/NotificationOptions$2$1;->val$id:I

    iget-object v2, p0, Lcom/begal/appclone/classes/NotificationOptions$2$1;->val$notification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    .line 816
    goto :goto_12

    .line 814
    :catch_a
    move-exception v0

    .line 815
    .local v0, "t":Ljava/lang/Throwable;
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/NotificationOptions;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 817
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_12
    return-void
.end method

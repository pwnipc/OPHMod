.class Lcom/begal/appclone/classes/NotificationOptions$1$1;
.super Ljava/lang/Object;
.source "NotificationOptions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/begal/appclone/classes/NotificationOptions$1;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/begal/appclone/classes/NotificationOptions$1;

.field final synthetic val$finalId:I


# direct methods
.method constructor <init>(Lcom/begal/appclone/classes/NotificationOptions$1;I)V
    .registers 3
    .param p1, "this$1"    # Lcom/begal/appclone/classes/NotificationOptions$1;

    .line 462
    iput-object p1, p0, Lcom/begal/appclone/classes/NotificationOptions$1$1;->this$1:Lcom/begal/appclone/classes/NotificationOptions$1;

    iput p2, p0, Lcom/begal/appclone/classes/NotificationOptions$1$1;->val$finalId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 466
    :try_start_0
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/NotificationOptions;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run; cancelling notification; id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/begal/appclone/classes/NotificationOptions$1$1;->val$finalId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v0, p0, Lcom/begal/appclone/classes/NotificationOptions$1$1;->this$1:Lcom/begal/appclone/classes/NotificationOptions$1;

    iget-object v0, v0, Lcom/begal/appclone/classes/NotificationOptions$1;->val$context:Landroid/content/Context;

    const-string v1, "notification"

    .line 468
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 469
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    iget v1, p0, Lcom/begal/appclone/classes/NotificationOptions$1$1;->val$finalId:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2b} :catch_2c

    .line 472
    .end local v0    # "notificationManager":Landroid/app/NotificationManager;
    goto :goto_34

    .line 470
    :catch_2c
    move-exception v0

    .line 471
    .local v0, "t":Ljava/lang/Throwable;
    # getter for: Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/NotificationOptions;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 473
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_34
    return-void
.end method

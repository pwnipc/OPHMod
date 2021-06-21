.class public final Lcom/opera/mini/android/notifications/q;
.super Ljava/lang/Object;
.source "Source"


# static fields
.field private static Code:Lcom/opera/mini/android/notifications/q;


# instance fields
.field private I:Landroid/content/Context;

.field private Z:Landroid/app/NotificationManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/opera/mini/android/notifications/q;->I:Landroid/content/Context;

    .line 85
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/opera/mini/android/notifications/q;->Z:Landroid/app/NotificationManager;

    .line 87
    return-void
.end method

.method public static Code(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;
    .registers 7

    .prologue
    .line 63
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/opera/mini/android/Browser;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 71
    new-instance v1, LZ;

    invoke-direct {v1, p0}, LZ;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, LZ;->Code(Ljava/lang/CharSequence;)LZ;

    move-result-object v1

    invoke-virtual {v1, p3}, LZ;->I(Ljava/lang/CharSequence;)LZ;

    move-result-object v1

    invoke-virtual {v1}, LZ;->Code()LZ;

    move-result-object v1

    invoke-virtual {v1}, LZ;->I()LZ;

    move-result-object v1

    invoke-virtual {v1, v0}, LZ;->Code(Landroid/app/PendingIntent;)LZ;

    move-result-object v0

    invoke-virtual {v0}, LZ;->Z()Landroid/app/Notification;

    move-result-object v0

    .line 79
    return-object v0
.end method

.method public static Code(Landroid/content/Context;)Lcom/opera/mini/android/notifications/q;
    .registers 2

    .prologue
    .line 28
    sget-object v0, Lcom/opera/mini/android/notifications/q;->Code:Lcom/opera/mini/android/notifications/q;

    if-nez v0, :cond_b

    .line 30
    new-instance v0, Lcom/opera/mini/android/notifications/q;

    invoke-direct {v0, p0}, Lcom/opera/mini/android/notifications/q;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/opera/mini/android/notifications/q;->Code:Lcom/opera/mini/android/notifications/q;

    .line 32
    :cond_b
    sget-object v0, Lcom/opera/mini/android/notifications/q;->Code:Lcom/opera/mini/android/notifications/q;

    return-object v0
.end method

.method public static Code(Landroid/content/Intent;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 37
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 38
    if-eqz v1, :cond_f

    const-string v2, "com.opera.mini.android.ACTION_USERNOTIFICATION:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 40
    :cond_f
    const/4 v0, 0x0

    .line 58
    :cond_10
    :goto_10
    return v0

    .line 46
    :cond_11
    :try_start_11
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_1d} :catch_28

    move-result v1

    .line 54
    if-nez v1, :cond_10

    .line 56
    sget-object v1, Lcom/opera/mini/android/Browser;->I:Lcom/opera/mini/android/Browser;

    const-string v2, "opera:downloads"

    invoke-virtual {v1, v2}, Lcom/opera/mini/android/Browser;->Code(Ljava/lang/String;)V

    goto :goto_10

    .line 51
    :catch_28
    move-exception v1

    goto :goto_10
.end method


# virtual methods
.method public final Code(IILjava/lang/String;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 91
    iget-object v0, p0, Lcom/opera/mini/android/notifications/q;->Z:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/opera/mini/android/notifications/q;->I:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "com.opera.mini.android.ACTION_USERNOTIFICATION:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p3, p4}, Lcom/opera/mini/android/notifications/q;->Code(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 93
    return-void
.end method

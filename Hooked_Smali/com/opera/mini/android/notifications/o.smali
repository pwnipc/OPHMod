.class public abstract Lcom/opera/mini/android/notifications/o;
.super Ljava/lang/Object;
.source "Source"


# instance fields
.field private B:Ljava/lang/String;

.field private C:B

.field private Code:I

.field protected I:Ljava/lang/String;

.field protected J:Lcom/opera/mini/android/notifications/g;

.field protected Z:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/opera/mini/android/notifications/g;Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;B)V
    .registers 9

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p4, p0, Lcom/opera/mini/android/notifications/o;->Code:I

    .line 46
    iput-object p1, p0, Lcom/opera/mini/android/notifications/o;->J:Lcom/opera/mini/android/notifications/g;

    .line 47
    iput-object p2, p0, Lcom/opera/mini/android/notifications/o;->Z:Landroid/content/SharedPreferences;

    .line 48
    iput-object p3, p0, Lcom/opera/mini/android/notifications/o;->I:Ljava/lang/String;

    .line 49
    iput-object p5, p0, Lcom/opera/mini/android/notifications/o;->B:Ljava/lang/String;

    .line 50
    iput-byte p6, p0, Lcom/opera/mini/android/notifications/o;->C:B

    .line 51
    new-instance v0, Lcom/opera/mini/android/notifications/p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/opera/mini/android/notifications/p;-><init>(Lcom/opera/mini/android/notifications/o;B)V

    invoke-static {v0}, Lcom/opera/mini/android/events/EventDispatcher;->Z(Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method static synthetic Code(Lcom/opera/mini/android/notifications/o;)V
    .registers 4

    .prologue
    .line 19
    iget-object v0, p0, Lcom/opera/mini/android/notifications/o;->Z:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/opera/mini/android/notifications/o;->I:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":PENDING_CLICKS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/opera/mini/android/notifications/o;->I:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":PENDING_IMPRESSIONS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/opera/mini/android/s;->Code(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method


# virtual methods
.method public final B()B
    .registers 2

    .prologue
    .line 56
    iget-byte v0, p0, Lcom/opera/mini/android/notifications/o;->C:B

    return v0
.end method

.method public final C()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/opera/mini/android/notifications/o;->I:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract Code()J
.end method

.method protected final Code(Z)V
    .registers 5

    .prologue
    .line 116
    iget-object v0, p0, Lcom/opera/mini/android/notifications/o;->Z:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/opera/mini/android/notifications/o;->I:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":enabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/opera/mini/android/s;->Code(Landroid/content/SharedPreferences$Editor;)V

    .line 117
    return-void
.end method

.method protected I()V
    .registers 8

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SystemNotification.send(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/opera/mini/android/notifications/o;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-object v0, p0, Lcom/opera/mini/android/notifications/o;->J:Lcom/opera/mini/android/notifications/g;

    invoke-virtual {v0}, Lcom/opera/mini/android/notifications/g;->I()Landroid/content/Context;

    move-result-object v1

    .line 100
    const-string v0, "notification"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 102
    iget-object v2, p0, Lcom/opera/mini/android/notifications/o;->I:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "com.opera.mini.android.ACTION_NOTIFICATION:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/opera/mini/android/notifications/o;->I:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f040006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/opera/mini/android/notifications/o;->Code:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v3, v4, v5}, Lcom/opera/mini/android/notifications/q;->Code(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 107
    iget-object v0, p0, Lcom/opera/mini/android/notifications/o;->Z:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/opera/mini/android/notifications/o;->I:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":PENDING_IMPRESSIONS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/opera/mini/android/notifications/o;->c()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/opera/mini/android/s;->Code(Landroid/content/SharedPreferences$Editor;)V

    .line 108
    invoke-static {}, Lcom/opera/mini/android/s;->t()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 110
    iget-object v0, p0, Lcom/opera/mini/android/notifications/o;->J:Lcom/opera/mini/android/notifications/g;

    invoke-virtual {v0}, Lcom/opera/mini/android/notifications/g;->C()Lcom/opera/mini/android/notifications/f;

    move-result-object v0

    iget-object v1, p0, Lcom/opera/mini/android/notifications/o;->I:Ljava/lang/String;

    iget-object v2, p0, Lcom/opera/mini/android/notifications/o;->J:Lcom/opera/mini/android/notifications/g;

    invoke-virtual {v2}, Lcom/opera/mini/android/notifications/g;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/opera/mini/android/notifications/f;->Code(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_8c
    return-void
.end method

.method public final a()V
    .registers 4

    .prologue
    .line 84
    iget-object v0, p0, Lcom/opera/mini/android/notifications/o;->Z:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/opera/mini/android/notifications/o;->I:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":PENDING_CLICKS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/opera/mini/android/notifications/o;->d()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/opera/mini/android/s;->Code(Landroid/content/SharedPreferences$Editor;)V

    .line 85
    invoke-static {}, Lcom/opera/mini/android/s;->t()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 87
    iget-object v0, p0, Lcom/opera/mini/android/notifications/o;->J:Lcom/opera/mini/android/notifications/g;

    invoke-virtual {v0}, Lcom/opera/mini/android/notifications/g;->C()Lcom/opera/mini/android/notifications/f;

    move-result-object v0

    iget-object v1, p0, Lcom/opera/mini/android/notifications/o;->I:Ljava/lang/String;

    iget-object v2, p0, Lcom/opera/mini/android/notifications/o;->J:Lcom/opera/mini/android/notifications/g;

    invoke-virtual {v2}, Lcom/opera/mini/android/notifications/g;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/opera/mini/android/notifications/f;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_3f
    sget-object v0, Lcom/opera/mini/android/Browser;->I:Lcom/opera/mini/android/Browser;

    iget-object v1, p0, Lcom/opera/mini/android/notifications/o;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/opera/mini/android/Browser;->Code(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method protected final b()Z
    .registers 4

    .prologue
    .line 121
    iget-object v0, p0, Lcom/opera/mini/android/notifications/o;->Z:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/opera/mini/android/notifications/o;->I:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":enabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final c()I
    .registers 4

    .prologue
    .line 126
    iget-object v0, p0, Lcom/opera/mini/android/notifications/o;->Z:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/opera/mini/android/notifications/o;->I:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":PENDING_IMPRESSIONS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final d()I
    .registers 4

    .prologue
    .line 131
    iget-object v0, p0, Lcom/opera/mini/android/notifications/o;->Z:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/opera/mini/android/notifications/o;->I:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":PENDING_CLICKS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final e()Z
    .registers 3

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/opera/mini/android/notifications/o;->c()I

    move-result v0

    invoke-virtual {p0}, Lcom/opera/mini/android/notifications/o;->d()I

    move-result v1

    add-int/2addr v0, v1

    if-lez v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

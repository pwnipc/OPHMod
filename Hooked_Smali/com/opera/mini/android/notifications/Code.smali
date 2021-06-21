.class public final Lcom/opera/mini/android/notifications/Code;
.super Lcom/opera/mini/android/notifications/k;
.source "Source"


# direct methods
.method public constructor <init>(Lcom/opera/mini/android/notifications/g;Landroid/content/SharedPreferences;)V
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 52
    const-string v3, "Discover"

    const/high16 v4, 0x7f040000

    const-string v5, "odp:showuptodate"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/opera/mini/android/notifications/k;-><init>(Lcom/opera/mini/android/notifications/g;Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;B)V

    .line 53
    new-instance v0, Lcom/opera/mini/android/notifications/I;

    invoke-direct {v0, p0, v6}, Lcom/opera/mini/android/notifications/I;-><init>(Lcom/opera/mini/android/notifications/Code;B)V

    invoke-static {v0}, Lcom/opera/mini/android/events/EventDispatcher;->Z(Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method static synthetic Code(Lcom/opera/mini/android/notifications/Code;Z)V
    .registers 4

    .prologue
    .line 15
    iget-object v0, p0, Lcom/opera/mini/android/notifications/Code;->Z:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "Discover:odp_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/opera/mini/android/s;->Code(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method


# virtual methods
.method protected final Code()J
    .registers 4

    .prologue
    .line 59
    iget-object v0, p0, Lcom/opera/mini/android/notifications/Code;->Z:Landroid/content/SharedPreferences;

    const-string v1, "Discover:odp_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 61
    invoke-super {p0}, Lcom/opera/mini/android/notifications/k;->Code()J

    move-result-wide v0

    .line 63
    :goto_f
    return-wide v0

    :cond_10
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_f
.end method

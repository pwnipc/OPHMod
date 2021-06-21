.class LJ;
.super Ljava/lang/Object;
.source "Source"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Code(LZ;)Landroid/app/Notification;
    .registers 7

    .prologue
    .line 302
    iget-object v0, p1, LZ;->C:Landroid/app/Notification;

    .line 303
    iget-object v1, p1, LZ;->Code:Landroid/content/Context;

    iget-object v2, p1, LZ;->I:Ljava/lang/CharSequence;

    iget-object v3, p1, LZ;->Z:Ljava/lang/CharSequence;

    iget-object v4, p1, LZ;->J:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 306
    return-object v0
.end method

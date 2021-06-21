.class Lf;
.super Le;
.source "Source"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 458
    invoke-direct {p0}, Le;-><init>()V

    return-void
.end method


# virtual methods
.method public Code(LZ;)Landroid/app/Notification;
    .registers 8

    .prologue
    .line 461
    new-instance v0, Lp;

    iget-object v1, p1, LZ;->Code:Landroid/content/Context;

    iget-object v2, p1, LZ;->C:Landroid/app/Notification;

    iget-object v3, p1, LZ;->I:Ljava/lang/CharSequence;

    iget-object v4, p1, LZ;->Z:Ljava/lang/CharSequence;

    iget-object v5, p1, LZ;->J:Landroid/app/PendingIntent;

    invoke-direct/range {v0 .. v5}, Lp;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 467
    iget-object v1, p1, LZ;->B:Ljava/util/ArrayList;

    invoke-static {v0, v1}, LI;->Code(LCode;Ljava/util/ArrayList;)V

    .line 468
    invoke-static {}, LI;->Code()V

    .line 469
    invoke-virtual {v0}, Lp;->Code()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method
